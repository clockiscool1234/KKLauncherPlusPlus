package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.bg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0039bg extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0037be f194a;

    C0039bg(C0037be c0037be) {
        this.f194a = c0037be;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f194a.e != null) {
            this.f194a.e.h.setVisibility(4);
        }
    }
}
