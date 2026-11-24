package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class J extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f91a = false;
    private /* synthetic */ CellLayout b;
    private final /* synthetic */ CellLayout.LayoutParams c;
    private final /* synthetic */ View d;

    J(CellLayout cellLayout, CellLayout.LayoutParams layoutParams, View view) {
        this.b = cellLayout;
        this.c = layoutParams;
        this.d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f91a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f91a) {
            this.c.h = true;
            this.d.requestLayout();
        }
        if (this.b.W.containsKey(this.c)) {
            this.b.W.remove(this.c);
        }
    }
}
