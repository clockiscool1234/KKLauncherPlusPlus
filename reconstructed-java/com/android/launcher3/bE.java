package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class bE implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f167a;

    bE(Launcher launcher) {
        this.f167a = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f167a.l != null) {
            this.f167a.l.ak();
        }
    }
}
