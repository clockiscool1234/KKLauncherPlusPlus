package com.android.launcher3;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
final class bM implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ bL f175a;
    private final /* synthetic */ ViewTreeObserver.OnDrawListener b;

    bM(bL bLVar, ViewTreeObserver.OnDrawListener onDrawListener) {
        this.f175a = bLVar;
        this.b = onDrawListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f175a.b.l == null || this.f175a.b.l.getViewTreeObserver() == null) {
            return;
        }
        this.f175a.b.l.getViewTreeObserver().removeOnDrawListener(this.b);
    }
}
