package a.a.a.d;

import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f31a;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            f31a = new k();
            return;
        }
        if (i >= 17) {
            f31a = new j();
            return;
        }
        if (i >= 16) {
            f31a = new i();
            return;
        }
        if (i >= 14) {
            f31a = new h();
            return;
        }
        if (i >= 11) {
            f31a = new g();
        } else if (i >= 9) {
            f31a = new f();
        } else {
            f31a = new l();
        }
    }

    public static void a(View view, Runnable runnable) {
        f31a.a(view, runnable);
    }

    public static void a(View view, Runnable runnable, long j) {
        f31a.a(view, runnable, j);
    }
}
