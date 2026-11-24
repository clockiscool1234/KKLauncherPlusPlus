package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.bd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0036bd extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ FolderIcon f191a;
    private final /* synthetic */ Runnable b;

    C0036bd(FolderIcon folderIcon, Runnable runnable) {
        this.f191a = folderIcon;
        this.b = runnable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f191a.b = false;
        if (this.b != null) {
            this.b.run();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f191a.b = true;
    }
}
