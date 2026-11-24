package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fz implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f391a;
    private final /* synthetic */ Runnable b;

    fz(Workspace workspace, Runnable runnable) {
        this.f391a = workspace;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f391a.I()) {
            this.b.run();
        } else {
            this.f391a.aX = this.b;
        }
    }
}
