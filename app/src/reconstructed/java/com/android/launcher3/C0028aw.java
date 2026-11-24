package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.aw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0028aw extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DragLayer f162a;

    C0028aw(DragLayer dragLayer) {
        this.f162a = dragLayer;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f162a.k != null) {
            this.f162a.f77a.a(this.f162a.k);
        }
        this.f162a.k = null;
        this.f162a.invalidate();
    }
}
