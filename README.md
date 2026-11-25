# KKLauncher++

## App information

- **Name:** KKLauncher++
- **Application ID:** `com.clockiscool.kklauncherplusplus`
- **Version:** `1.0.0-rebrand` (version code `10000`)
- **Minimum Android:** Android 7.0 (API 24)
- **Target SDK:** Android 13 (API 33), for compatibility with the original Launcher bytecode’s receiver registrations
- **Compile SDK:** Android 16 (API 36); runs on Android 12–16
- **Base:** Launcher+ 1.2.7, based on the Android Launcher3 codebase
- **Active development branch:** `modernized-rebrand`

The original Launcher+ used application ID `nl.ndsc.kitkatlauncher`, version 1.2.7, and target SDK 19. KKLauncher++ has a different application ID, so Android treats it as a separate app. Back up your launcher layout before switching.

## Features in this branch

- Set the dock to 3, 5, 7, or 9 columns.
- Hide apps from the drawer without a Pro key.
- Create and restore launcher backups without a Pro key.
- Apply compatible icon packs that use the common `appfilter.xml` format, including Nova-, Apex-, and ADW-style packs.
- Open the KKLauncher++ GitHub repository from About.
- Migrated components use explicit non-exported receiver registration; the legacy Launcher core is retained at target SDK 33 until that class is fully migrated.

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

- `app/build/outputs/apk/debug/app-debug.apk` — signed with the build environment’s debug key, for testing.
- `app/build/outputs/apk/release/app-release-unsigned.apk` — unsigned; sign it with your own release key before distribution.

The debug APK uses the build environment’s debug signing key and cannot update an installed copy signed by another key. GitHub-hosted runners are recreated, so successive CI debug APKs may also have different keys; if Android reports a signature mismatch, back up the launcher layout/data before uninstalling the older build.

## Startup-crash note

The reported `Resources$NotFoundException` for `0x7f090008` was caused by AAPT2 assigning new resource IDs while unreconstructed Launcher3 bytecode still contains the original IDs. `app/legacy-resource-ids.txt` pins the 592 recovered IDs. An earlier `NoSuchFieldError` was fixed by restoring static float fields `a` and `b` in `a.a.a.c.d`; the later URI-field error was fixed by restoring the original `dF.a` field descriptor while retaining the decompiler-name alias. The `RECEIVER_EXPORTED` crash came from the unmigrated Launcher class calling the old two-argument `registerReceiver`; target SDK is set to 33 until that class is migrated, while the app still runs on Android 12–16. The updated APKs build, but startup and launcher behaviour still need device verification.

## GitHub Actions

`.github/workflows/android-apk-release.yml` builds the debug and unsigned release APKs, then uploads both to the prerelease named `dev-build`. The `dev-build` tag is a rolling development tag for the `modernized-rebrand` branch. Each branch build updates that tag and replaces the APKs on the same release. The workflow can also be started manually from GitHub Actions.

## Source layout and current limitations

- `app/src/main/AndroidManifest.xml` and `app/src/main/res/` contain the active manifest and Android resources.
- `app/src/main/java/` contains the Java files currently compiled into the APK, including the rebrand features and compatibility wrappers used by the legacy settings navigation. See `java-migrations.txt` for the list.
- The recovered `com.android.launcher3.cB` source compiles into the APK and sets `RECEIVER_NOT_EXPORTED` for its system-only receivers. The remaining legacy Launcher receiver calls are why target SDK stays at 33 for now.
- `app/src/reconstructed/java/` holds recovered Java that is not yet part of the Gradle source set.
- `app/libs/launcher-legacy.jar` supplies the original bytecode for classes not yet migrated. It is packaged into the APK; it is not the original signed APK.
- `app/libs/launcher-compile-only.jar` supplies compatibility signatures for the migrated sources and is not packaged.
- The smali source tree has been removed. This remains a staged reconstruction—not yet a complete, fully de-obfuscated Java rewrite.

The APK has buildable source and the resource-ID mapping is preserved. The fixes for the reported startup exceptions are not a substitute for device testing; verify the next APK on the affected Android version before treating this as stable.
