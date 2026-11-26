plugins {
    id("com.android.application")
}

val filteredLegacyJar = tasks.register<Jar>("filteredLegacyJar") {
    archiveFileName.set("launcher-legacy-filtered.jar")
    destinationDirectory.set(layout.buildDirectory.dir("filtered-libs"))
    from(zipTree("libs/launcher-legacy.jar")) {
        exclude("com/android/launcher3/eS.class")
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
    runtimeOnly(files(filteredLegacyJar))
}
