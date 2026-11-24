package com.android.launcher3;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
final class bT implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Runnable f181a;
    private final /* synthetic */ AppsCustomizeTabHost b;

    bT(Launcher launcher, Runnable runnable, AppsCustomizeTabHost appsCustomizeTabHost) {
        this.f181a = runnable;
        this.b = appsCustomizeTabHost;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.f181a.run();
        this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
