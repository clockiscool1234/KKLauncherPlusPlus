package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bQ implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f178a;
    private final /* synthetic */ View b;
    private final /* synthetic */ AppsCustomizeTabHost c;

    bQ(Launcher launcher, View view, AppsCustomizeTabHost appsCustomizeTabHost) {
        this.f178a = launcher;
        this.b = view;
        this.c = appsCustomizeTabHost;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (valueAnimator == null) {
            throw new RuntimeException("animation is null");
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f178a.a(this.b, fFloatValue);
        this.f178a.a(this.c, fFloatValue);
    }
}
