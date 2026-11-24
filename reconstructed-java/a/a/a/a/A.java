package a.a.a.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final B f0a;

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f0a = new C();
        } else {
            f0a = new B();
        }
    }

    public static String a(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        return f0a.a(context, context.getPackageManager().getActivityInfo(componentName, 128));
    }

    public static void a(Activity activity) {
        Intent intentA = f0a.a(activity);
        if (intentA == null) {
            throw new IllegalArgumentException("Activity " + activity.getClass().getSimpleName() + " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)");
        }
        f0a.a(activity, intentA);
    }

    public static String b(Activity activity) {
        try {
            return a(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
