package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bR extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f179a;
    private final /* synthetic */ AppsCustomizeTabHost b;
    private final /* synthetic */ View c;
    private final /* synthetic */ boolean d;

    bR(Launcher launcher, AppsCustomizeTabHost appsCustomizeTabHost, View view, boolean z) {
        this.f179a = launcher;
        this.b = appsCustomizeTabHost;
        this.c = view;
        this.d = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f179a.c(this.c, this.d, false);
        this.f179a.c(this.b, this.d, false);
        if (this.f179a.B != null) {
            this.f179a.B.b(false);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.b.setTranslationX(0.0f);
        this.b.setTranslationY(0.0f);
        this.b.setVisibility(0);
        this.b.bringToFront();
    }
}
