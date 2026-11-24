package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.bi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0041bi extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0037be f196a;

    C0041bi(C0037be c0037be) {
        this.f196a = c0037be;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f196a.j != null) {
            this.f196a.j.b(this.f196a);
        }
        if (this.f196a.e != null) {
            this.f196a.e.h.setVisibility(0);
        }
    }
}
