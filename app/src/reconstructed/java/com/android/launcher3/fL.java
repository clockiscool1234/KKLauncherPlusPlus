package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
final class fL extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f357a;
    private final /* synthetic */ Runnable b;

    fL(Workspace workspace, Runnable runnable) {
        this.f357a = workspace;
        this.b = runnable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f357a.ai != null) {
            this.f357a.ai.run();
        }
        if (this.b != null) {
            this.b.run();
        }
    }
}
