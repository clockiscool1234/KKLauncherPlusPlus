package com.android.launcher3;

import android.animation.Animator;

/* JADX INFO: renamed from: com.android.launcher3.cx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0083cx implements Animator.AnimatorListener {
    C0083cx() {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        C0082cw.f253a.remove(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C0082cw.f253a.remove(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        C0082cw.f253a.put(animator, null);
    }
}
