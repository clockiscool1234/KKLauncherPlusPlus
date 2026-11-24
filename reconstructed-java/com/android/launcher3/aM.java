package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
final class aM implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ aK f130a;
    private final /* synthetic */ ValueAnimator b;

    aM(aK aKVar, ValueAnimator valueAnimator) {
        this.f130a = aKVar;
        this.b = valueAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.removeUpdateListener(this.f130a);
    }
}
