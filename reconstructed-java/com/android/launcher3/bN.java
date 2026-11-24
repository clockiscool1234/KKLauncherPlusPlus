package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class bN implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f176a;

    bN(Launcher launcher) {
        this.f176a = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f176a.a(true, 300, (Runnable) null);
    }
}
