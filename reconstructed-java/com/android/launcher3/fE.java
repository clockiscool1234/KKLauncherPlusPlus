package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class fE implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f350a;
    private final /* synthetic */ Runnable b;

    fE(Workspace workspace, View view, Runnable runnable) {
        this.f350a = view;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f350a != null) {
            this.f350a.setVisibility(0);
        }
        if (this.b != null) {
            this.b.run();
        }
    }
}
