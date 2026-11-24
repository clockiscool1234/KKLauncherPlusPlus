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
        minSdk = 16
        targetSdk = 24
        versionCode = 27
        versionName = "1.2.7"
    }
}

val projectRoot = rootProject.projectDir
val decodedProject = projectRoot.resolve("smali-project")
val apktoolJar = projectRoot.resolve("tools/apktool_3.0.3.jar")
val frameworkDir = decodedProject.resolve("framework")
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
val aapt2 = File(buildTools, "aapt2$executableSuffix")
val zipalign = File(buildTools, "zipalign$executableSuffix")
val apksigner = File(buildTools, "apksigner$executableSuffix")

val buildReconstructedApk = tasks.register("buildReconstructedApk") {
    group = "build"
    description = "Assembles the recovered smali and resources, then signs a debug APK."
    inputs.files(project.fileTree(decodedProject) {
        exclude("build/**", "dist/**")
    })
    inputs.file(apktoolJar)
    outputs.file(outputApk)

    doLast {
        if (!apktoolJar.isFile) throw GradleException("Missing bundled Apktool: $apktoolJar")
        if (!javaExecutable.isFile || !keytoolExecutable.isFile) throw GradleException("A full JDK 17 is required")
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

        project.exec {
            commandLine(
                javaExecutable.absolutePath, "-jar", apktoolJar.absolutePath,
                "b", "--force", "--aapt", aapt2.absolutePath,
                "-p", frameworkDir.absolutePath,
                decodedProject.absolutePath,
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
