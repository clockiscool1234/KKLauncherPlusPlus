package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.android.launcher3.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0165g implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0112e f392a;

    C0165g(C0112e c0112e) {
        this.f392a = c0112e;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f392a.requestLayout();
    }
}
