package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
final class P extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ N f99a;

    P(N n) {
        this.f99a = n;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        this.f99a.d = 0.0f;
        this.f99a.e = 0.0f;
        this.f99a.g = this.f99a.j.e();
        this.f99a.i = true;
    }
}
