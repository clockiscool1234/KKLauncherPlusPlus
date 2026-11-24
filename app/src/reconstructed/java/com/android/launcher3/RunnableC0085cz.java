package com.android.launcher3;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: com.android.launcher3.cz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0085cz implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f255a;
    private final /* synthetic */ ViewTreeObserver.OnDrawListener b;

    RunnableC0085cz(ViewTreeObserverOnDrawListenerC0084cy viewTreeObserverOnDrawListenerC0084cy, View view, ViewTreeObserver.OnDrawListener onDrawListener) {
        this.f255a = view;
        this.b = onDrawListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f255a.getViewTreeObserver().removeOnDrawListener(this.b);
    }
}
