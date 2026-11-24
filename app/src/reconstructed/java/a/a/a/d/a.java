package a.a.a.d;

import android.os.Build;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    static {
        if (Build.VERSION.SDK_INT >= 5) {
            new c();
        } else {
            new b();
        }
    }

    public static int a(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }
}
