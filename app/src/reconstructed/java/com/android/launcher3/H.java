package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
final class H extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bB f85a;

    H(CellLayout cellLayout, bB bBVar) {
        this.f85a = bBVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue() == 0.0f) {
            this.f85a.a((Object) null);
        }
    }
}
