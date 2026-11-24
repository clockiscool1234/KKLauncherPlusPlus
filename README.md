# Launcher+ 1.2.7 — recovered Android project

## App information

- **App name:** Launcher+
- **Package/application ID:** `nl.ndsc.kitkatlauncher`
- **Recovered version:** 1.2.7 (version code 27)
- **App type:** Android home-screen launcher, based on the Android Launcher3 codebase
- **Original SDK settings:** minimum API 16 (Android 4.1); target API 19 (Android 4.4)
- **Branch:** `main` is the recovered baseline. The planned `modernized-rebrand` work is separate and has not been started here.

This project preserves the original package ID, version, minimum SDK, and target SDK. It does not yet modernize Android behavior.

## Build the APK

### Android Studio

1. Open this `android-studio-project` folder in Android Studio.
2. Allow Gradle to sync. Use JDK 17 and install Android SDK Platform 36 and Build-Tools 36.0.0 if prompted.
3. Run the `app` module's `assembleDebug` task.

### Command line

From this folder, run:

```bash
./gradlew :app:assembleDebug
```

On Windows, run `gradlew.bat :app:assembleDebug`. For command-line builds, set `ANDROID_SDK_ROOT` or `ANDROID_HOME` to your SDK directory if Gradle cannot find it; Android Studio normally writes `local.properties` for you.

The debug APK is created at `app/build/outputs/apk/debug/app-debug.apk`. The Gradle wrapper downloads Gradle 8.13 as needed. The project uses Android Gradle Plugin 8.13.2. No NDK is needed; the original APK has no native libraries.

## Source layout and current limits

- `app/src/main/AndroidManifest.xml` and `app/src/main/res/` contain the app manifest and recovered Android resources.
- `app/src/main/java/nl/ndsc/kitkatlauncher/KLPLauncher.java` is the first migrated Java class and is compiled into the APK.
- `app/src/reconstructed/java/` holds the readable/reconstructed Java working tree, including renamed helpers such as `CellLayout`, `CellAndSpan`, `ItemConfiguration`, `ViewCluster`, `PositionComparator`, and `RegionDecoder`. These files are not yet all compile-ready and are not part of the active Gradle source set; remaining obfuscated names are left alone where a safe original name is not known.
- `app/libs/launcher-legacy.jar` supplies the original app classes that have not yet been migrated to Java source. It is packaged into the APK. The smali tree has been removed from the current project.
- `app/src/main/res/values/recovered_strings.xml` restores English fallback values missing from the decoded resource set.

The successful build proves the project packages; it does not prove complete Android 12–16 runtime compatibility. The original target API is intentionally retained for this baseline, so Android may still show its low-target warning or block installation on newer Android releases. Runtime paths also need device testing before raising the target SDK.

The debug APK is signed with a local debug key, not the original publisher's private key. It cannot update an installed copy signed by the publisher. Back up launcher data before uninstalling the original app.
