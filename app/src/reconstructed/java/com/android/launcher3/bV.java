package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bV extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f183a;
    private final /* synthetic */ View b;
    private final /* synthetic */ boolean c;
    private final /* synthetic */ View d;
    private final /* synthetic */ Runnable e;

    bV(Launcher launcher, View view, boolean z, View view2, Runnable runnable) {
        this.f183a = launcher;
        this.b = view;
        this.c = z;
        this.d = view2;
        this.e = runnable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.b.setVisibility(8);
        this.f183a.c(this.b, this.c, true);
        this.f183a.c(this.d, this.c, true);
        if (this.e != null) {
            this.e.run();
        }
        this.f183a.D.E();
    }
}
