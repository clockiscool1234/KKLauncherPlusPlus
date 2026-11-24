package a.a.a.b;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f18a;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15) {
            f18a = new d();
        } else if (i >= 11) {
            f18a = new c();
        } else {
            f18a = new b();
        }
    }

    public static Intent a(ComponentName componentName) {
        return f18a.a(componentName);
    }
}
