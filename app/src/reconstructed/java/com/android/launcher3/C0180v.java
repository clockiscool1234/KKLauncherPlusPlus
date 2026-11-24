package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0180v extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0179u f406a;

    C0180v(RunnableC0179u runnableC0179u) {
        this.f406a = runnableC0179u;
    }

    private void a() {
        this.f406a.f405a.e.setVisibility(8);
        PagedViewWidget.b(false);
        this.f406a.f405a.e.removeAllViews();
        PagedViewWidget.b(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        a();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        a();
    }
}
