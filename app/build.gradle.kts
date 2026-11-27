import java.io.ByteArrayOutputStream as ClassBytesOutputStream
import java.util.zip.ZipEntry as JarZipEntry
import java.util.zip.ZipFile as JarZipFile
import java.util.zip.ZipOutputStream as JarZipOutputStream

plugins {
    id("com.android.application")
}

fun readClassU2(data: ByteArray, offset: Int): Int =
    ((data[offset].toInt() and 0xff) shl 8) or (data[offset + 1].toInt() and 0xff)

fun writeClassU2(data: ByteArray, offset: Int, value: Int) {
    data[offset] = (value ushr 8).toByte()
    data[offset + 1] = value.toByte()
}

fun patchLegacyClipOps(data: ByteArray): ByteArray {
    val count = readClassU2(data, 8)
    val utf8 = mutableMapOf<Int, String>()
    val classNames = mutableMapOf<Int, Int>()
    val nameAndTypes = mutableMapOf<Int, Pair<Int, Int>>()
    val nameAndTypeOffsets = mutableMapOf<Int, Int>()
    val fieldRefs = mutableListOf<Pair<Int, Int>>()
    var offset = 10
    var index = 1
    while (index < count) {
        val start = offset
        when (data[offset].toInt() and 0xff) {
            1 -> {
                val length = readClassU2(data, offset + 1)
                utf8[index] = String(data, offset + 3, length, Charsets.UTF_8)
                offset += 3 + length
            }
            3, 4 -> offset += 5
            5, 6 -> offset += 9
            7 -> {
                classNames[index] = readClassU2(data, offset + 1)
                offset += 3
            }
            8, 16, 19, 20 -> offset += 3
            9 -> {
                fieldRefs.add(Pair(readClassU2(data, offset + 1), readClassU2(data, offset + 3)))
                offset += 5
            }
            10, 11, 17, 18 -> offset += 5
            12 -> {
                nameAndTypes[index] = Pair(readClassU2(data, offset + 1), readClassU2(data, offset + 3))
                nameAndTypeOffsets[index] = start
                offset += 5
            }
            15 -> offset += 4
            else -> throw GradleException("Unknown class-file constant-pool tag")
        }
        index += if ((data[start].toInt() and 0xff) == 5 || (data[start].toInt() and 0xff) == 6) 2 else 1
    }
    val regionOpClass = "android/graphics/Region\$Op"
    val regionOpDescriptor = "Landroid/graphics/Region\$Op;"
    val matchingNameAndTypes = fieldRefs.filter { fieldRef ->
        val classNameIndex = classNames[fieldRef.first]
        val className = classNameIndex?.let { utf8[it] }
        val nameAndType = nameAndTypes[fieldRef.second]
        className == regionOpClass && nameAndType != null &&
            utf8[nameAndType.first] == "REPLACE" && utf8[nameAndType.second] == regionOpDescriptor
    }.map { it.second }.toSet()
    if (matchingNameAndTypes.isEmpty()) {
        throw GradleException("No Region.Op.REPLACE field reference found in a legacy launcher class")
    }
    val patchedPool = data.copyOfRange(10, offset)
    val replacementIndex = count
    matchingNameAndTypes.forEach { nameAndTypeIndex ->
        writeClassU2(patchedPool, nameAndTypeOffsets.getValue(nameAndTypeIndex) + 1 - 10, replacementIndex)
    }
    val replacement = "INTERSECT".toByteArray(Charsets.UTF_8)
    val output = ClassBytesOutputStream(data.size + replacement.size + 3)
    output.write(data, 0, 8)
    output.write((count + 1) ushr 8)
    output.write((count + 1) and 0xff)
    output.write(patchedPool)
    output.write(1)
    output.write((replacement.size ushr 8) and 0xff)
    output.write(replacement.size and 0xff)
    output.write(replacement)
    output.write(data, offset, data.size - offset)
    return output.toByteArray()
}

val patchedLegacyJarFile = layout.buildDirectory.file("patched-libs/launcher-legacy-patched.jar")
val patchLegacyCanvasClasses = tasks.register("patchLegacyCanvasClasses") {
    val sourceJar = file("libs/launcher-legacy.jar")
    inputs.file(sourceJar)
    outputs.file(patchedLegacyJarFile)
    doLast {
        val outputFile = patchedLegacyJarFile.get().asFile
        outputFile.parentFile.mkdirs()
        val patchedClasses = mutableSetOf<String>()
        JarZipFile(sourceJar).use { inputZip ->
            JarZipOutputStream(outputFile.outputStream().buffered()).use { outputZip ->
                val entries = inputZip.entries()
                while (entries.hasMoreElements()) {
                    val entry = entries.nextElement()
                    val content = inputZip.getInputStream(entry).use { it.readBytes() }
                    val transformed = when (entry.name) {
                        "com/android/launcher3/BubbleTextView.class",
                        "com/android/launcher3/Workspace.class" -> {
                            patchedClasses.add(entry.name)
                            patchLegacyClipOps(content)
                        }
                        else -> content
                    }
                    outputZip.putNextEntry(JarZipEntry(entry.name).apply { time = entry.time })
                    outputZip.write(transformed)
                    outputZip.closeEntry()
                }
            }
        }
        val expected = setOf("com/android/launcher3/BubbleTextView.class", "com/android/launcher3/Workspace.class")
        if (patchedClasses != expected) {
            throw GradleException("Expected to patch both legacy canvas classes; patched: $patchedClasses")
        }
    }
}

val compileOnlyLegacyJarFile = layout.buildDirectory.file("compile-only-libs/launcher-legacy-compile-only.jar")
val compileOnlyLegacyJar = tasks.register<Jar>("compileOnlyLegacyJar") {
    archiveFileName.set("launcher-legacy-compile-only.jar")
    destinationDirectory.set(layout.buildDirectory.dir("compile-only-libs"))
    from(zipTree(file("libs/launcher-legacy.jar"))) {
        exclude("nl/ndsc/kitkatlauncher/a.class", "nl/ndsc/kitkatlauncher/b.class")
    }
}

val filteredLegacyJar = tasks.register<Jar>("filteredLegacyJar") {
    dependsOn(patchLegacyCanvasClasses)
    archiveFileName.set("launcher-legacy-filtered.jar")
    destinationDirectory.set(layout.buildDirectory.dir("filtered-libs"))
    from(zipTree(patchedLegacyJarFile)) {
        exclude(
            "com/android/launcher3/eS.class",
            "com/android/launcher3/eX.class",
            "com/android/launcher3/Cling.class",
            "com/android/launcher3/PagedViewIcon.class",
            "com/android/launcher3/cG.class",
            "com/android/launcher3/b.class",
            "nl/ndsc/kitkatlauncher/b/b.class",
            "nl/ndsc/kitkatlauncher/b/s.class",
        )
    }
}

android {
    namespace = "nl.ndsc.kitkatlauncher"
    compileSdk = 36

    defaultConfig {
        applicationId = "com.clockiscool.kklauncherplusplus"
        minSdk = 24
        targetSdk = 33
        versionCode = 10000
        versionName = "1.0.0-rebrand"
    }

    androidResources {
        additionalParameters += listOf(
            "--stable-ids",
            file("legacy-resource-ids.txt").absolutePath
        )
    }

    lint {
        baseline = file("lint-baseline.xml")
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
}

dependencies {
    compileOnly(files("libs/launcher-compile-only.jar"))
    compileOnly(files(compileOnlyLegacyJarFile).builtBy(compileOnlyLegacyJar))
    runtimeOnly(files(filteredLegacyJar))
}
