package com.android.launcher3;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class fQ implements Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f362a;

    public fQ(View view) {
        this.f362a = view;
    }

    public static void a(View view) {
        int i = Workspace.af ? 8 : 4;
        if (view.getAlpha() < 0.01f && view.getVisibility() != i) {
            view.setVisibility(i);
        } else {
            if (view.getAlpha() <= 0.01f || view.getVisibility() == 0) {
                return;
            }
            view.setVisibility(0);
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        a(this.f362a);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f362a.setVisibility(0);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        a(this.f362a);
    }
}
