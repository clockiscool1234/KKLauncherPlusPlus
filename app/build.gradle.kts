plugins {
    id("com.android.application")
}

android {
    namespace = "nl.ndsc.kitkatlauncher"
    compileSdk = 36

    defaultConfig {
        applicationId = "com.clockiscool.kklauncherplusplus"
        minSdk = 24
        targetSdk = 36
        versionCode = 10000
        versionName = "1.0.0-rebrand"
    }

    androidResources {
        additionalParameters += listOf(
            "--stable-ids",
            file("legacy-resource-ids.txt").absolutePath
        )
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
}

dependencies {
    compileOnly(files("libs/launcher-compile-only.jar"))
    runtimeOnly(files("libs/launcher-legacy.jar"))
}
