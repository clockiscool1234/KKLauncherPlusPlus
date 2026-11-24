package a.a.a.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class B {
    B() {
    }

    public Intent a(Activity activity) {
        Intent intentA = null;
        String strB = A.b(activity);
        if (strB != null) {
            ComponentName componentName = new ComponentName(activity, strB);
            try {
                intentA = A.a(activity, componentName) == null ? a.a.a.b.a.a(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strB + "' in manifest");
            }
        }
        return intentA;
    }

    public String a(Context context, ActivityInfo activityInfo) {
        String string;
        if (activityInfo.metaData != null && (string = activityInfo.metaData.getString("android.support.PARENT_ACTIVITY")) != null) {
            return string.charAt(0) == '.' ? context.getPackageName() + string : string;
        }
        return null;
    }

    public void a(Activity activity, Intent intent) {
        intent.addFlags(67108864);
        activity.startActivity(intent);
        activity.finish();
    }
}
