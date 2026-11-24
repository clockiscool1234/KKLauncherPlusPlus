# Launcher+ recovered build project

Open this folder in Android Studio. The app module compiles the Java classes listed in `java-migrations.txt` against a compile-only copy of the original class signatures, converts them to `classes2.dex`, removes those classes from a temporary smali build copy, then assembles the remaining smali/resources with Apktool 3.0.3 and signs the APK. The original smali tree remains untouched as a recovery reference.

## Build

Run `./gradlew :app:assembleDebug`. Android Studio can run the same `:app:assembleDebug` task. The signed APK is written to `app/build/outputs/apk/debug/LauncherPlus-1.2.7-debug.apk`.

Requirements: JDK 17, Android SDK Platform 36, and Android SDK Build-Tools 36.0.0. Android Studio normally creates `local.properties` with your SDK location; for command-line builds, set `ANDROID_SDK_ROOT` or `ANDROID_HOME`. The project includes Apktool and the compact framework resource table needed for resource linking. No NDK is required because the original APK contains no native libraries.

## What is source and what is built

- `java-migrations.txt` lists Java classes compiled into the APK. `nl.ndsc.kitkatlauncher.KLPLauncher` is the first migrated class; its smali is removed only from the temporary build copy.
- `reconstructed-java/` contains 571 JADX-generated Java files and is the working readability/reconstruction tree. Several decompiler repairs remain before the rest can be compiled.
- `tools/original-classes.jar` supplies symbols while compiling migrated Java. It is compile-only and is not packaged into the APK.
- `smali-project/` contains the original decoded smali, manifest, and Android resources. The Gradle task copies it to a temporary directory, removes only migrated smali there, adds the Java-generated secondary dex, and builds that copy. Keep the original smali until each class is migrated and tested.
- `app/src/main/AndroidManifest.xml` is only the placeholder manifest Gradle needs to model an Android app. The APK actually uses `smali-project/AndroidManifest.xml`.

## Compatibility baseline and limits

The original APK targets API 19. This project targets API 24, sets minimum API 21 for automatic secondary-dex loading, adds explicit `android:exported` values, and declares launcher-app visibility. Target 24 avoids the low-target install block on current Android versions while retaining more legacy behavior than targeting API 36. It does **not** establish full Android 12–16 runtime compatibility. Dangerous-permission flows, storage access, launcher/widget behavior, and other runtime paths still need testing on devices and may need changes before raising the target SDK.

The output is signed with a new debug key. It cannot update an already-installed copy signed with the publisher's key. Keep the original installed until you have backed up its data and launcher layout.
