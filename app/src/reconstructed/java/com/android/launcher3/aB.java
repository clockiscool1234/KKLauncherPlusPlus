package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
final class aB implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ aA f121a;
    private final /* synthetic */ float b;
    private final /* synthetic */ float c;
    private final /* synthetic */ float d;
    private final /* synthetic */ float e;

    aB(aA aAVar, float f, float f2, float f3, float f4) {
        this.f121a = aAVar;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int i = (int) ((this.b * fFloatValue) - this.f121a.m);
        int i2 = (int) ((this.c * fFloatValue) - this.f121a.n);
        this.f121a.m += i;
        this.f121a.n += i2;
        this.f121a.setScaleX(this.d + ((this.e - this.d) * fFloatValue));
        this.f121a.setScaleY(this.d + ((this.e - this.d) * fFloatValue));
        if (aA.b != 1.0f) {
            this.f121a.setAlpha((1.0f - fFloatValue) + (aA.b * fFloatValue));
        }
        if (this.f121a.getParent() == null) {
            valueAnimator.cancel();
            return;
        }
        this.f121a.setTranslationX(i + this.f121a.getTranslationX());
        this.f121a.setTranslationY(this.f121a.getTranslationY() + i2);
    }
}
