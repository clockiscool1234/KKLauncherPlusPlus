package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
final class aS extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Folder f135a;

    aS(Folder folder) {
        this.f135a = folder;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Cling clingI;
        this.f135a.j = 2;
        this.f135a.setLayerType(0, null);
        if (!this.f135a.f81a.b() && (clingI = this.f135a.b.n().i()) != null) {
            clingI.d();
            this.f135a.bringToFront();
            clingI.bringToFront();
        }
        Folder.d(this.f135a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f135a.a(32, String.format(this.f135a.getContext().getString(R.string.folder_opened), Integer.valueOf(this.f135a.d.k()), Integer.valueOf(this.f135a.d.l())));
        this.f135a.j = 1;
    }
}
