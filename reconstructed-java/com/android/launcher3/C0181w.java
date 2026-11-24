package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0181w extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0179u f407a;

    C0181w(RunnableC0179u runnableC0179u) {
        this.f407a = runnableC0179u;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AppsCustomizeTabHost.d(this.f407a.f405a);
    }
}
