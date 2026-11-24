package a.a.a.d;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class l {
    l() {
    }

    long a() {
        return 10L;
    }

    public void a(View view, Runnable runnable) {
        view.postDelayed(runnable, a());
    }

    public void a(View view, Runnable runnable, long j) {
        view.postDelayed(runnable, a() + j);
    }
}
