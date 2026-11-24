package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bU implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f182a;
    private final /* synthetic */ View b;
    private final /* synthetic */ View c;

    bU(Launcher launcher, View view, View view2) {
        this.f182a = launcher;
        this.b = view;
        this.c = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f182a.a(this.b, fFloatValue);
        this.f182a.a(this.c, fFloatValue);
    }
}
