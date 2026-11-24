package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.ew, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0135ew extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f341a;

    C0135ew(SearchDropTargetBar searchDropTargetBar, View view) {
        this.f341a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f341a.setLayerType(0, null);
    }
}
