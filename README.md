# KKLauncher++

## App information

- **Name:** KKLauncher++
- **Application ID:** `com.clockiscool.kklauncherplusplus`
- **Version:** `1.0.0-rebrand` (version code `10000`)
- **Minimum Android:** Android 7.0 (API 24)
- **Target SDK:** Android 13 (API 33), for compatibility with the original Launcher bytecode’s receiver registrations
- **Compile SDK:** Android 16 (API 36)
- **Compatibility goal:** Android 12–16; minimum API 24. Target SDK remains 33 until the legacy Launcher receiver registrations are migrated.
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
./gradlew --no-daemon :app:assembleDebug :app:assembleRelease
```

On Windows, use `gradlew.bat` with the same tasks. The Gradle wrapper uses Gradle 8.13 and Android Gradle Plugin 8.13.2. No NDK is needed; the app contains no native libraries. `app/lint-baseline.xml` records existing lint findings inherited from the reconstructed Launcher3 resources and code; new lint findings are still checked during release builds.

Build outputs:

- `app/build/outputs/apk/debug/app-debug.apk` — signed with the build environment’s debug key, for testing.
- `app/build/outputs/apk/release/app-release-unsigned.apk` — unsigned; sign it with your own release key before distribution.

The debug APK uses the build environment’s debug signing key and cannot update an installed copy signed by another key. GitHub-hosted runners are recreated, so successive CI debug APKs may also have different keys; if Android reports a signature mismatch, back up the launcher layout/data before uninstalling the older build.

## Compatibility fixes and test status

- AAPT2 resource IDs are pinned in `app/legacy-resource-ids.txt` so unreconstructed Launcher3 bytecode continues to find its original resources.
- Reconstructed `Hotseat` now includes the static accessor expected by legacy drawer-click code (`Hotseat.a(Hotseat)`).
- The settings feature flag exposes the original `o.a` field alongside the Java-source alias `f438a`; both remain enabled to preserve this branch's existing feature availability.- The settings screen is compiled from `app/src/main/java/nl/ndsc/kitkatlauncher/b/s.java` and now checks that the optional Pro-key row exists before removing it, avoiding `removePreference(null)` when the rebrand settings XML omits the row.
- The wallpaper picker is now compiled from `app/src/main/java/com/android/launcher3/eS.java`. Its recent-image query no longer appends SQLite `LIMIT` to the sort order, which modern MediaStore rejects; it safely reads the first row and closes the cursor. Gradle removes the duplicate old `eS.class` from the packaged legacy JAR.- The wallpaper picker also restores the exact static callback bridge expected by the legacy wallpaper adapter. This prevents the `NoSuchMethodError` when the wallpaper chooser refreshes.
- Earlier reported resource-ID, launcher URI-field, and receiver-registration failures have separate fixes documented above; the legacy Launcher still keeps target SDK at 33.- The build-time `patchLegacyCanvasClasses` task changes `Region.Op.REPLACE` references to `INTERSECT` in the legacy `BubbleTextView` and `Workspace` class files. Modern Android rejects `REPLACE` in `Canvas.clipRect`; the task patches a generated JAR copy and leaves the checked-in legacy JAR untouched.

Both debug and release APKs build locally. No emulator run was performed for these latest fixes; the previously attempted Android 12 AVD could not start because this host lacks `/dev/kvm`. The newly reported canvas, settings, and wallpaper crashes now have targeted code fixes, but still need a device smoke test; build success alone does not prove those screens work.

## GitHub Actions

`.github/workflows/android-apk-release.yml` builds the debug and unsigned release APKs, then uploads both to the prerelease named `dev-build`. The `dev-build` tag is a rolling development tag for the `modernized-rebrand` branch. Each branch build updates that tag and replaces the APKs on the same release. The workflow can also be started manually from GitHub Actions.

## Source layout and current limitations

- `app/src/main/AndroidManifest.xml` and `app/src/main/res/` contain the active manifest and Android resources.
- `app/src/main/java/` contains the Java files currently compiled into the APK, including the rebrand features, wallpaper picker override, and compatibility wrappers used by legacy code. See `java-migrations.txt` for the list.
- The recovered `com.android.launcher3.cB` source compiles into the APK and sets `RECEIVER_NOT_EXPORTED` for its system-only receivers. The remaining legacy Launcher receiver calls are why target SDK stays at 33 for now.
- `app/src/reconstructed/java/` holds recovered Java that is not yet part of the Gradle source set.
- `app/libs/launcher-legacy.jar` supplies the original bytecode for classes not yet migrated. It is packaged into the APK; it is not the original signed APK.
- `app/libs/launcher-compile-only.jar` supplies compatibility signatures for the migrated sources and is not packaged.
- The smali source tree has been removed. This remains a staged reconstruction—not yet a complete, fully de-obfuscated Java rewrite.

The APK has buildable source and the resource-ID mapping is preserved. Runtime support across Android 12–16 remains under active verification; the newly fixed drawer, settings, and wallpaper flows are not yet confirmed on-device.
