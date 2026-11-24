package com.android.launcher3;

import android.animation.Animator;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: com.android.launcher3.cy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewTreeObserverOnDrawListenerC0084cy implements ViewTreeObserver.OnDrawListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f254a = false;
    private final /* synthetic */ Animator b;
    private final /* synthetic */ View c;

    ViewTreeObserverOnDrawListenerC0084cy(Animator animator, View view) {
        this.b = animator;
        this.c = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        if (this.f254a) {
            return;
        }
        this.f254a = true;
        if (this.b.getDuration() != 0) {
            this.b.start();
            this.c.post(new RunnableC0085cz(this, this.c, this));
        }
    }
}
