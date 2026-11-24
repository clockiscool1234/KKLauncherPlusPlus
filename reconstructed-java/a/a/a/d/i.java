package a.a.a.d;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class i extends h {
    i() {
    }

    @Override // a.a.a.d.l
    public final void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    @Override // a.a.a.d.l
    public final void a(View view, Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }
}
