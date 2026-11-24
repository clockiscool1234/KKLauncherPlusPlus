package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.co, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0074co implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f247a;

    RunnableC0074co(Launcher launcher) {
        this.f247a = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f247a.a(false, 0, (Runnable) null);
    }
}
