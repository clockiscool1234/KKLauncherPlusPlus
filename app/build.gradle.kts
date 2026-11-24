plugins {
    id("com.android.application")
}

android {
    namespace = "nl.ndsc.kitkatlauncher"
    compileSdk = 36

    defaultConfig {
        applicationId = "nl.ndsc.kitkatlauncher"
        minSdk = 16
        targetSdk = 19
        versionCode = 27
        versionName = "1.2.7"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
}

dependencies {
    implementation(files("libs/launcher-legacy.jar"))
}
