package a.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;

/* JADX INFO: loaded from: classes.dex */
final class C extends B {
    C() {
    }

    @Override // a.a.a.a.B
    public final Intent a(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        return parentActivityIntent == null ? super.a(activity) : parentActivityIntent;
    }

    @Override // a.a.a.a.B
    public final String a(Context context, ActivityInfo activityInfo) {
        String str = activityInfo.parentActivityName;
        return str == null ? super.a(context, activityInfo) : str;
    }

    @Override // a.a.a.a.B
    public final void a(Activity activity, Intent intent) {
        activity.navigateUpTo(intent);
    }
}
