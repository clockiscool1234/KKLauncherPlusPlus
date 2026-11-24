import java.io.File
import java.util.Properties
import org.gradle.api.GradleException

plugins {
    id("com.android.application")
}

android {
    namespace = "nl.ndsc.kitkatlauncher"
    compileSdk = 36

    defaultConfig {
        applicationId = "nl.ndsc.kitkatlauncher"
        minSdk = 21
        targetSdk = 24
        versionCode = 27
        versionName = "1.2.7"
    }
}

val projectRoot = rootProject.projectDir
val decodedProject = projectRoot.resolve("smali-project")
val apktoolJar = projectRoot.resolve("tools/apktool_3.0.3.jar")
val frameworkDir = decodedProject.resolve("framework")
val reconstructedJava = projectRoot.resolve("reconstructed-java")
val migrationList = projectRoot.resolve("java-migrations.txt")
val originalClassesJar = projectRoot.resolve("tools/original-classes.jar")
val outputApk = layout.buildDirectory.file("outputs/apk/debug/LauncherPlus-1.2.7-debug.apk")

val localProperties = Properties()
val localPropertiesFile = projectRoot.resolve("local.properties")
if (localPropertiesFile.exists()) {
    localPropertiesFile.inputStream().use(localProperties::load)
}

val androidSdkPath = providers.environmentVariable("ANDROID_SDK_ROOT").orNull
    ?: providers.environmentVariable("ANDROID_HOME").orNull
    ?: localProperties.getProperty("sdk.dir")
    ?: throw GradleException("Set ANDROID_SDK_ROOT or configure sdk.dir in local.properties")
val buildTools = File(androidSdkPath, "build-tools/36.0.0")
val executableSuffix = if (System.getProperty("os.name").startsWith("Windows")) ".exe" else ""
val javaExecutable = File(System.getProperty("java.home"), "bin/java$executableSuffix")
val keytoolExecutable = File(System.getProperty("java.home"), "bin/keytool$executableSuffix")
val javacExecutable = File(System.getProperty("java.home"), "bin/javac$executableSuffix")
val jarExecutable = File(System.getProperty("java.home"), "bin/jar$executableSuffix")
val androidJar = File(androidSdkPath, "platforms/android-36/android.jar")
val d8Jar = File(buildTools, "lib/d8.jar")
val aapt2 = File(buildTools, "aapt2$executableSuffix")
val zipalign = File(buildTools, "zipalign$executableSuffix")
val apksigner = File(buildTools, "apksigner$executableSuffix")

val buildReconstructedApk = tasks.register("buildReconstructedApk") {
    group = "build"
    description = "Compiles migrated Java classes, assembles remaining smali and resources, then signs a debug APK."
    inputs.files(project.fileTree(decodedProject) {
        exclude("build/**", "dist/**")
    })
    inputs.file(apktoolJar)
    inputs.files(migrationList, originalClassesJar, androidJar, d8Jar)
    inputs.files(project.fileTree(reconstructedJava) { include("**/*.java") })
    outputs.file(outputApk)

    doLast {
        if (!apktoolJar.isFile) throw GradleException("Missing bundled Apktool: $apktoolJar")
        if (!javaExecutable.isFile || !keytoolExecutable.isFile || !javacExecutable.isFile || !jarExecutable.isFile) {
            throw GradleException("A full JDK 17 is required")
        }
        if (!androidJar.isFile || !d8Jar.isFile) throw GradleException("Install Android SDK Platform 36 and Build-Tools 36.0.0")
        if (!aapt2.isFile || !zipalign.isFile || !apksigner.isFile) {
            throw GradleException("Install Android SDK Build-Tools 36.0.0; expected tools in $buildTools")
        }
        val buildDir = layout.buildDirectory.get().asFile
        val unsignedApk = File(buildDir, "tmp/launcher-unsigned.apk")
        val alignedApk = File(buildDir, "tmp/launcher-aligned.apk")
        val debugKeystore = File(System.getProperty("user.home"), ".android/debug.keystore")
        val finalApk = outputApk.get().asFile
        unsignedApk.parentFile.mkdirs()
        finalApk.parentFile.mkdirs()
        debugKeystore.parentFile.mkdirs()

        if (!migrationList.isFile || !originalClassesJar.isFile) {
            throw GradleException("Missing Java migration list or original classpath archive")
        }
        val migratedClasses = migrationList.readLines().map { it.trim() }.filter { it.isNotEmpty() }
        if (migratedClasses.isEmpty()) throw GradleException("java-migrations.txt has no class names")
        val javaSourceFiles = migratedClasses.map { className ->
            val sourceFile = File(reconstructedJava, "${className.replace('.', '/')}.java")
            if (!sourceFile.isFile) throw GradleException("Missing reconstructed Java source: $sourceFile")
            sourceFile
        }
        val workingProject = File(buildDir, "tmp/smali-project")
        workingProject.deleteRecursively()
        project.copy {
            from(decodedProject)
            into(workingProject)
            exclude("build/**", "dist/**")
        }
        migratedClasses.forEach { className ->
            val smaliFile = File(workingProject, "smali/${className.replace('.', '/')}.smali")
            if (smaliFile.exists() && !smaliFile.delete()) throw GradleException("Could not remove migrated smali: $smaliFile")
        }
        val javaClasses = File(buildDir, "tmp/java-classes").apply {
            deleteRecursively()
            mkdirs()
        }
        val compiledJar = File(buildDir, "tmp/reconstructed-java.jar")
        val dexDirectory = File(buildDir, "tmp/reconstructed-dex").apply {
            deleteRecursively()
            mkdirs()
        }
        project.exec {
            commandLine(
                javacExecutable.absolutePath, "-source", "8", "-target", "8",
                "-classpath", "${androidJar.absolutePath}${File.pathSeparator}${originalClassesJar.absolutePath}",
                "-d", javaClasses.absolutePath,
                *javaSourceFiles.map { it.absolutePath }.toTypedArray()
            )
        }
        project.exec {
            commandLine(jarExecutable.absolutePath, "cf", compiledJar.absolutePath, "-C", javaClasses.absolutePath, ".")
        }
        project.exec {
            commandLine(
                javaExecutable.absolutePath, "-cp", d8Jar.absolutePath, "com.android.tools.r8.D8",
                "--min-api", "21", "--lib", androidJar.absolutePath,
                "--classpath", originalClassesJar.absolutePath,
                "--output", dexDirectory.absolutePath, compiledJar.absolutePath
            )
        }
        val javaDex = File(dexDirectory, "classes.dex")
        if (!javaDex.isFile) throw GradleException("D8 did not produce classes.dex")
        val dexFiles = dexDirectory.listFiles { file -> file.extension == "dex" } ?: emptyArray()
        if (dexFiles.size != 1) throw GradleException("This incremental migration currently expects one secondary DEX")
        val unknownDirectory = File(workingProject, "unknown").apply { mkdirs() }
        javaDex.copyTo(File(unknownDirectory, "classes2.dex"), overwrite = true)


        project.exec {
            commandLine(
                javaExecutable.absolutePath, "-jar", apktoolJar.absolutePath,
                "b", "--force", "--aapt", aapt2.absolutePath,
                "-p", frameworkDir.absolutePath,
                workingProject.absolutePath,
                "-o", unsignedApk.absolutePath
            )
        }
        project.exec {
            commandLine(zipalign.absolutePath, "-f", "-p", "4", unsignedApk.absolutePath, alignedApk.absolutePath)
        }
        if (!debugKeystore.isFile) {
            project.exec {
                commandLine(
                    keytoolExecutable.absolutePath, "-genkeypair", "-keystore", debugKeystore.absolutePath,
                    "-storepass", "android", "-keypass", "android", "-alias", "androiddebugkey",
                    "-keyalg", "RSA", "-keysize", "2048", "-validity", "10000",
                    "-dname", "CN=Android Debug,O=Android,C=US"
                )
            }
        }
        project.exec {
            commandLine(
                apksigner.absolutePath, "sign", "--ks", debugKeystore.absolutePath,
                "--ks-key-alias", "androiddebugkey", "--ks-pass", "pass:android",
                "--key-pass", "pass:android", "--out", finalApk.absolutePath,
                alignedApk.absolutePath
            )
        }
        project.exec {
            commandLine(apksigner.absolutePath, "verify", "--verbose", finalApk.absolutePath)
        }
        logger.lifecycle("Built APK: ${finalApk.absolutePath}")
    }
}

tasks.matching { it.name == "assembleDebug" }.configureEach {
    finalizedBy(buildReconstructedApk)
}
