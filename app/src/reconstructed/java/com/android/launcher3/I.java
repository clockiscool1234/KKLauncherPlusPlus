package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class I implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ CellLayout.LayoutParams f89a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;
    private final /* synthetic */ int d;
    private final /* synthetic */ int e;
    private final /* synthetic */ View f;

    I(CellLayout cellLayout, CellLayout.LayoutParams layoutParams, int i, int i2, int i3, int i4, View view) {
        this.f89a = layoutParams;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f89a.k = (int) (((1.0f - fFloatValue) * this.b) + (this.c * fFloatValue));
        this.f89a.l = (int) ((fFloatValue * this.e) + ((1.0f - fFloatValue) * this.d));
        this.f.requestLayout();
    }
}
