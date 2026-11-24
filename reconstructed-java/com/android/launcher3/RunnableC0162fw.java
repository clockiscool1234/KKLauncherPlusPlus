package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.fw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0162fw implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f388a;

    RunnableC0162fw(Workspace workspace) {
        this.f388a = workspace;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f388a.aw.m().d();
    }
}
