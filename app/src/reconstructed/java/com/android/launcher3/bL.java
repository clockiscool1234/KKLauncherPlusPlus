package com.android.launcher3;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
final class bL implements ViewTreeObserver.OnDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f174a = false;
    private /* synthetic */ Launcher b;

    bL(Launcher launcher) {
        this.b = launcher;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        if (this.f174a) {
            return;
        }
        this.f174a = true;
        this.b.l.postDelayed(this.b.aq, 500L);
        this.b.l.post(new bM(this, this));
    }
}
