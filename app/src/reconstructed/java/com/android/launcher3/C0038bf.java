package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.android.launcher3.bf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0038bf implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0037be f193a;
    private final /* synthetic */ int b;

    C0038bf(C0037be c0037be, int i) {
        this.f193a = c0037be;
        this.b = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f193a.c = ((0.3f * fFloatValue) + 1.0f) * this.b;
        this.f193a.d = ((fFloatValue * 0.15f) + 1.0f) * this.b;
        if (this.f193a.j != null) {
            this.f193a.j.invalidate();
        }
    }
}
