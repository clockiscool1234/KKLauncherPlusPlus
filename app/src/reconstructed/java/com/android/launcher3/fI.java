package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fI implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f354a;

    fI(Workspace workspace) {
        this.f354a = workspace;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f354a.b) {
            this.f354a.q();
        }
    }
}
