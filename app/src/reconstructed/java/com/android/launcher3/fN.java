package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
final class fN implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f359a;

    fN(Workspace workspace) {
        this.f359a = workspace;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f359a.setBackgroundAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
