package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fA implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f346a;
    private final /* synthetic */ Runnable b;

    fA(Workspace workspace, Runnable runnable) {
        this.f346a = workspace;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f346a.f116a = false;
        this.f346a.d(false);
        if (this.b != null) {
            this.b.run();
        }
        this.f346a.a(true, (Runnable) null, 0, true);
    }
}
