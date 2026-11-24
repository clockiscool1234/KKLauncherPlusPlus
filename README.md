# Launcher+ 1.2.7 — recovered Android project

Android Studio/Gradle project for the recovered **Launcher+** home-screen app. This is the original-behaviour baseline on `main`; it is not the future `modernized-rebrand` work branch.

## App information

| Property | Value |
|---|---|
| Display name | Launcher+ |
| Application ID | `nl.ndsc.kitkatlauncher` |
| Version | 1.2.7 (version code 27) |
| Original minimum SDK | API 16 (Android 4.1) |
| Original target SDK | API 19 (Android 4.4) |

The Android manifest and Gradle configuration retain the original SDK levels. This intentionally preserves the legacy baseline; it does not remove Android's modern-version warning or claim Android 12–16 compatibility.

## Open and build

1. Open this `android-studio-project` folder in Android Studio and let Gradle sync.
2. Build the debug APK using **Build → Make Project**, or run the Gradle task `:app:assembleDebug`.

From a terminal at the project root:

```bash
./gradlew :app:assembleDebug
```

On Windows, run `gradlew.bat :app:assembleDebug`. The APK is produced at:

`app/build/outputs/apk/debug/app-debug.apk`

The wrapper uses Gradle 8.13 and Android Gradle Plugin 8.13.2. Install JDK 17, Android SDK Platform 36, and Android SDK Build-Tools 36.0.0. Android Studio normally configures the SDK path; for command-line builds, set `ANDROID_SDK_ROOT` or `ANDROID_HOME`. No NDK is required: the original APK has no native libraries.

## Source layout and reconstruction status

- `app/src/main/java/nl/ndsc/kitkatlauncher/KLPLauncher.java` is the first recovered class compiled from Java. `java-migrations.txt` records the compiled Java classes.
- `app/src/reconstructed/java/` contains 571 JADX-generated Java files for reading and continued cleanup. Several verified helpers have descriptive names (`CellAndSpan`, `ItemConfiguration`, `ViewCluster`, `PositionComparator`, and `RegionDecoder`); many other classes remain obfuscated or need manual decompiler repairs. This directory is deliberately not part of Gradle's compiled source set yet.
- `app/libs/launcher-legacy.jar` contains the remaining original app bytecode. It lets the project build without smali while reconstructed Java is migrated incrementally. It is a compiled dependency, not editable source.
- `app/src/main/res/` and `app/src/main/AndroidManifest.xml` contain the recovered Android resources and manifest. The manifest uses the original package identity and SDK levels.

A clean build was verified with `./gradlew clean :app:assembleDebug`. The output is signed with a new debug key, not the publisher's key, so it cannot update an installed copy signed by the publisher. Keep the original installed until its data and launcher layout are backed up.
