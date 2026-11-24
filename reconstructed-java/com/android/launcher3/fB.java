package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fB implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Workspace f347a;

    fB(Workspace workspace) {
        this.f347a = workspace;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f347a.a(false, (Runnable) new fC(this));
    }
}
