package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
final class aT extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Folder f136a;

    aT(Folder folder) {
        this.f136a = folder;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Folder.e(this.f136a);
        this.f136a.setLayerType(0, null);
        this.f136a.j = 0;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f136a.a(32, this.f136a.getContext().getString(R.string.folder_closed));
        this.f136a.j = 1;
    }
}
