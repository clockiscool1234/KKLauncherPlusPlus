package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.android.launcher3.au, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0026au extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DragLayer f160a;
    private final /* synthetic */ Runnable b;
    private final /* synthetic */ int c;

    C0026au(DragLayer dragLayer, Runnable runnable, int i) {
        this.f160a = dragLayer;
        this.b = runnable;
        this.c = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.b != null) {
            this.b.run();
        }
        switch (this.c) {
            case 0:
                this.f160a.b();
                break;
            case 1:
                DragLayer.d(this.f160a);
                break;
        }
    }
}
