package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
final class aC implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ aA f122a;

    aC(aA aAVar) {
        this.f122a = aAVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f122a.l = valueAnimator.getAnimatedFraction();
    }
}
