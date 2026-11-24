package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
abstract class cA implements ValueAnimator.AnimatorUpdateListener {
    cA() {
    }

    abstract void a(float f, float f2);

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        a(1.0f - fFloatValue, fFloatValue);
    }
}
