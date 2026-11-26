# KKLauncher++

## App information

- **Name:** KKLauncher++
- **Application ID:** `com.clockiscool.kklauncherplusplus`
- **Version:** `1.0.0-rebrand` (version code `10000`)
- **Minimum Android:** Android 7.0 (API 24)
- **Target SDK:** Android 13 (API 33), retained for compatibility with legacy Launcher receiver registrations
- **Compile SDK:** Android 16 (API 36)
- **Compatibility goal:** Android 12–16; minimum API 24
- **Base:** Launcher+ 1.2.7, based on Android Launcher3
- **Development branch:** `modernized-rebrand`

The original Launcher+ used application ID `nl.ndsc.kitkatlauncher`, version 1.2.7, and target SDK 19. KKLauncher++ uses a different application ID, so Android treats it as a separate app. Back up your launcher layout before switching.

## Features in this branch

- Set the dock to 3, 5, 7, or 9 columns.
- Hide apps from the drawer and create or restore launcher backups without a Pro key.
- Apply compatible icon packs using the common `appfilter.xml` format, including Nova-, Apex-, and ADW-style packs.
- Open the KKLauncher++ GitHub repository from About.
- Migrated components use explicit non-exported receiver registration. Target SDK remains 33 until the remaining legacy Launcher receiver calls are migrated.

## Build

### Android Studio

1. Open this `android-studio-project` folder in Android Studio.
2. Use JDK 17 and install Android SDK Platform 36 and Build-Tools 36.0.0 if prompted.
3. Sync Gradle, then run `assembleDebug` or `assembleRelease` for the `app` module.

### Command line

From this folder, with `ANDROID_HOME` (or `ANDROID_SDK_ROOT`) set to your Android SDK directory, run:

```bash
./gradlew --no-daemon :app:assembleDebug :app:assembleRelease
```

On Windows, use `gradlew.bat` with the same tasks. The Gradle wrapper uses Gradle 8.13 and Android Gradle Plugin 8.13.2. No NDK is needed; the app contains no native libraries. `app/lint-baseline.xml` records existing lint findings; release builds still check for new findings.

Build outputs:

- `app/build/outputs/apk/debug/app-debug.apk` — signed with the build environment's debug key, for testing.
- `app/build/outputs/apk/release/app-release-unsigned.apk` — unsigned; sign it with your own release key before distribution.

Debug signing keys are environment-specific. A debug APK may not update an installed copy signed with a different key. GitHub runners are recreated, so CI debug APKs from separate runs may also have different keys. If Android reports a signature mismatch, back up the launcher layout/data before uninstalling the older build.

## Compatibility fixes and test status

- AAPT2 resource IDs are pinned in `app/legacy-resource-ids.txt` so unreconstructed Launcher3 bytecode continues to find its original resources.
- The rebrand preserves the legacy `Hotseat.a(Hotseat)` accessor and `o.a` field expected by old bytecode; Java-source aliases are kept alongside them.
- Settings navigation is compiled from source. It checks that the optional Pro-key preference exists before removing it, avoiding `removePreference(null)` when the rebrand settings XML omits that entry.
- The wallpaper picker is compiled from source and restores the static adapter callback bridge expected by old DEX code. Its recent-image query avoids the unsupported SQL `LIMIT` sort-order token and closes its cursor.
- The Gradle task `patchLegacyCanvasClasses` changes `Region.Op.REPLACE` field references to `INTERSECT` in the legacy `BubbleTextView` and `Workspace` class files. Modern Android only permits `INTERSECT` and `DIFFERENCE` for `Canvas.clipRect`. The task patches a generated copy of `launcher-legacy.jar`; the checked-in JAR is unchanged.
- The launcher also contains earlier fixes for the URI-field and receiver-registration crashes reported during testing.

Both debug and unsigned release APKs build locally. GitHub Actions passed for the latest fixes on commit `bb660af` and published updated APKs to the rolling `dev-build` release. These latest runtime fixes have not yet been verified on a physical device; successful builds do not prove that every screen works. A previous Android 12 AVD attempt could not start because the host lacks `/dev/kvm`.

## GitHub Actions

`.github/workflows/android-apk-release.yml` builds the debug and unsigned release APKs and uploads both to the prerelease named `dev-build`. The `dev-build` tag is a rolling development tag for `modernized-rebrand`; each branch build updates that release. The workflow can also be started manually from GitHub Actions.

## Source layout and current limitations

- `app/src/main/AndroidManifest.xml` and `app/src/main/res/` contain the active manifest and Android resources.
- `app/src/main/java/` contains Java sources currently compiled into the APK. See `java-migrations.txt` for the list.
- `app/src/reconstructed/java/` holds additional recovered Java that is not yet part of the Gradle source set.
- `app/libs/launcher-legacy.jar` supplies original bytecode for classes not yet migrated. It is packaged into the APK; it is not the original signed APK.
- `app/libs/launcher-compile-only.jar` supplies compatibility signatures for migrated sources and is not packaged.
- The smali source tree has been removed. This is a staged reconstruction, not yet a complete, fully de-obfuscated Java rewrite.

The build is reproducible from the checked-in source and legacy JARs. Runtime support across Android 12–16 remains under active device testing.
