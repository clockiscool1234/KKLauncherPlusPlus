package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
final class bP extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f177a;
    private final /* synthetic */ CellLayout b;
    private final /* synthetic */ FolderIcon c;

    bP(Launcher launcher, CellLayout cellLayout, FolderIcon folderIcon) {
        this.f177a = launcher;
        this.b = cellLayout;
        this.c = folderIcon;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.b != null) {
            this.b.j();
            this.f177a.o.removeView(this.f177a.al);
            this.c.setVisibility(0);
        }
    }
}
