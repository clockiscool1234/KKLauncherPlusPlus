# Launcher+ recovered build project

Open this folder in Android Studio. The app module's Gradle build assembles the recovered smali/resources with the bundled Apktool 3.0.3, then aligns and signs the resulting APK with a generated debug key. This preserves the original bytecode more reliably than compiling JADX's approximate Java reconstruction.

## Build

Run `./gradlew :app:assembleDebug`. Android Studio can run the same `:app:assembleDebug` task. The signed APK is written to `app/build/outputs/apk/debug/LauncherPlus-1.2.7-debug.apk`.

Requirements: JDK 17, Android SDK Platform 36, and Android SDK Build-Tools 36.0.0. Android Studio normally creates `local.properties` with your SDK location; for command-line builds, set `ANDROID_SDK_ROOT` or `ANDROID_HOME`. The project includes Apktool and the compact framework resource table needed for resource linking. No NDK is required because the original APK contains no native libraries.

## What is source and what is built

- `smali-project/` is the build input: smali, manifest, and decoded Android resources. Edit smali here for code changes; resource and manifest changes are also reflected in the APK.
- `tools/apktool_3.0.3.jar` is the bundled assembler used by Gradle.
- `reconstructed-java/` contains 571 JADX-generated Java files. It is now the working readability/reconstruction tree, but it is not compiled by this build yet; substantial decompiler repair remains before this Java can replace smali. Initial cleanup has started in launcher preference writing, database migration code, and the image-region decoder naming.
- `smali-project/smali/` remains the build input and bytecode safety net. Keep it until each Java class compiles and its behavior is checked against the rebuilt APK; only then should corresponding smali be removed.
- `app/src/main/AndroidManifest.xml` is only the placeholder manifest Gradle needs to model an Android app. The APK actually uses `smali-project/AndroidManifest.xml`.

## Compatibility baseline and limits

The original APK targets API 19. This project targets API 24, adds explicit `android:exported` values, and declares launcher-app visibility. Target 24 avoids the low-target install block on current Android versions while retaining more legacy behavior than targeting API 36. It does **not** establish full Android 12–16 runtime compatibility. Dangerous-permission flows, storage access, launcher/widget behavior, and other runtime paths still need testing on devices and may need changes before raising the target SDK.

The output is signed with a new debug key. It cannot update an already-installed copy signed with the publisher's key. Keep the original installed until you have backed up its data and launcher layout.
