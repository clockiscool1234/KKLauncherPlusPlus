package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.android.launcher3.av, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0027av implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DragLayer f161a;

    C0027av(DragLayer dragLayer) {
        this.f161a = dragLayer;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f161a.k.setAlpha(1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
