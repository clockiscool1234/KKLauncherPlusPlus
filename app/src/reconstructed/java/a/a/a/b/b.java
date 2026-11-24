package a.a.a.b;

import android.content.ComponentName;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
class b {
    b() {
    }

    public Intent a(ComponentName componentName) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(componentName);
        intent.addCategory("android.intent.category.LAUNCHER");
        return intent;
    }
}
