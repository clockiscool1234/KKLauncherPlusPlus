package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
final class O implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ N f98a;

    O(N n) {
        this.f98a = n;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f = (this.f98a.h == 0 && this.f98a.i) ? 1.0f : fFloatValue;
        float f2 = (this.f98a.b * f) + ((1.0f - f) * this.f98a.d);
        float f3 = ((1.0f - f) * this.f98a.e) + (this.f98a.c * f);
        this.f98a.f97a.setTranslationX(f2);
        this.f98a.f97a.setTranslationY(f3);
        float f4 = (this.f98a.f * fFloatValue) + ((1.0f - fFloatValue) * this.f98a.g);
        this.f98a.f97a.setScaleX(f4);
        this.f98a.f97a.setScaleY(f4);
    }
}
