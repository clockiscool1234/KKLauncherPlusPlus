package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.android.launcher3.ah, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0013ah implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ DragLayer f149a;
    private final /* synthetic */ TimeInterpolator b;
    private final /* synthetic */ float c;
    private final /* synthetic */ float d;
    private final /* synthetic */ float e;
    private final /* synthetic */ float f;
    private final /* synthetic */ float g;
    private final /* synthetic */ float h;

    C0013ah(DeleteDropTarget deleteDropTarget, DragLayer dragLayer, TimeInterpolator timeInterpolator, float f, float f2, float f3, float f4, float f5, float f6) {
        this.f149a = dragLayer;
        this.b = timeInterpolator;
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = f4;
        this.g = f5;
        this.h = f6;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        aA aAVar = (aA) this.f149a.c();
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float interpolation = this.b.getInterpolation(fFloatValue);
        float fE = aAVar.e();
        float scaleX = aAVar.getScaleX();
        float measuredWidth = ((1.0f - scaleX) * aAVar.getMeasuredWidth()) / 2.0f;
        float measuredHeight = ((1.0f - scaleX) * aAVar.getMeasuredHeight()) / 2.0f;
        float f = ((1.0f - fFloatValue) * (1.0f - fFloatValue) * (this.c - measuredWidth)) + ((1.0f - fFloatValue) * 2.0f * fFloatValue * (this.d - measuredWidth)) + (fFloatValue * fFloatValue * this.e);
        float f2 = (fFloatValue * fFloatValue * this.h) + ((this.f - measuredHeight) * (1.0f - fFloatValue) * (1.0f - fFloatValue)) + ((this.g - measuredWidth) * (1.0f - fFloatValue) * 2.0f * fFloatValue);
        aAVar.setTranslationX(f);
        aAVar.setTranslationY(f2);
        aAVar.setScaleX((1.0f - interpolation) * fE);
        aAVar.setScaleY((1.0f - interpolation) * fE);
        aAVar.setAlpha(((1.0f - interpolation) * 0.5f) + 0.5f);
    }
}
