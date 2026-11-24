# KKLauncher++

## App information

- **Name:** KKLauncher++
- **Application ID:** `com.clockiscool.kklauncherplusplus`
- **Version:** `1.0.0-rebrand` (version code `10000`)
- **Minimum Android:** Android 7.0 (API 24)
- **Target and compile SDK:** Android 16 (API 36)
- **Base:** Launcher+ 1.2.7, based on the Android Launcher3 codebase
- **Active development branch:** `modernized-rebrand`

The original Launcher+ used application ID `nl.ndsc.kitkatlauncher`, version 1.2.7, and target SDK 19. KKLauncher++ has a different application ID, so Android treats it as a separate app. Back up your launcher layout before switching.

## Features in this branch

- Set the dock to 3, 5, 7, or 9 columns.
- Hide apps from the drawer without a Pro key.
- Create and restore launcher backups without a Pro key.
- Apply compatible icon packs that use the common `appfilter.xml` format, including Nova-, Apex-, and ADW-style packs.
- Open the KKLauncher++ GitHub repository from About.

## Build

### Android Studio

1. Open this `android-studio-project` folder in Android Studio.
2. Use JDK 17 and install Android SDK Platform 36 and Build-Tools 36.0.0 if prompted.
3. Sync Gradle, then run `assembleDebug` or `assembleRelease` for the `app` module.

### Command line

From this folder, with `ANDROID_HOME` (or `ANDROID_SDK_ROOT`) set to your Android SDK directory, run:

```bash
./gradlew --no-daemon :app:assembleDebug :app:assembleRelease -x :app:lintVitalRelease
```

On Windows, use `gradlew.bat` with the same tasks. The Gradle wrapper uses Gradle 8.13 and Android Gradle Plugin 8.13.2. No NDK is needed; the app contains no native libraries. The release command excludes `lintVitalRelease` because inherited Launcher3 code currently fails that release-only lint task.

Build outputs:

- `app/build/outputs/apk/debug/app-debug.apk` — signed with the local debug key, for testing.
- `app/build/outputs/apk/release/app-release-unsigned.apk` — unsigned; sign it with your own release key before distribution.

The debug build uses a different signing key from the original publisher and cannot update an installed copy of Launcher+.

## GitHub Actions

`.github/workflows/android-apk-release.yml` builds the debug and unsigned release APKs, then uploads both to the prerelease named `dev-build`. The `dev-build` tag is a rolling development tag for the `modernized-rebrand` branch. Each branch build updates that tag and replaces the APKs on the same release. The workflow can also be started manually from GitHub Actions.

## Source layout and current limitations

- `app/src/main/AndroidManifest.xml` and `app/src/main/res/` contain the active manifest and Android resources.
- `app/src/main/java/` contains the Java files currently compiled into the APK, including the rebrand features and compatibility wrappers used by the legacy settings navigation. See `java-migrations.txt` for the list.
- `app/src/reconstructed/java/` holds recovered Java that is not yet part of the Gradle source set.
- `app/libs/launcher-legacy.jar` supplies the original bytecode for classes not yet migrated. It is packaged into the APK; it is not the original signed APK.
- `app/libs/launcher-compile-only.jar` supplies compatibility signatures for the migrated sources and is not packaged.
- The smali source tree has been removed. This remains a staged reconstruction—not yet a complete, fully de-obfuscated Java rewrite.

Both APK variants have been built locally. Runtime behavior still needs testing on Android 12–16 before this should be treated as a stable daily launcher.
