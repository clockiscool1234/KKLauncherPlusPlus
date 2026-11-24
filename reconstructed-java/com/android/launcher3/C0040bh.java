package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.android.launcher3.bh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0040bh implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0037be f195a;
    private final /* synthetic */ int b;

    C0040bh(C0037be c0037be, int i) {
        this.f195a = c0037be;
        this.b = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f195a.c = (((1.0f - fFloatValue) * 0.3f) + 1.0f) * this.b;
        this.f195a.d = (((1.0f - fFloatValue) * 0.15f) + 1.0f) * this.b;
        if (this.f195a.j != null) {
            this.f195a.j.invalidate();
        }
    }
}
