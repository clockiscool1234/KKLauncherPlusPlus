package nl.ndsc.kitkatlauncher;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f438a = false;

    public static void a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.checkSignatures("nl.ndsc.kitkatlauncher", "nl.ndsc.kitkatlauncherkey") != 0) {
            f438a = false;
            return;
        }
        try {
            Log.i("KLPK", "InstallerPackageName = " + packageManager.getInstallerPackageName("nl.ndsc.kitkatlauncherkey"));
        } catch (Exception e) {
            Log.i("KLPK", "Failed to get InstallerPackageName " + e.getMessage());
        }
        f438a = true;
    }
}
