package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class bW implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f184a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ Runnable c;

    bW(Launcher launcher, boolean z, Runnable runnable) {
        this.f184a = launcher;
        this.b = z;
        this.c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.b) {
            this.f184a.y();
        } else {
            this.f184a.C.setVisibility(8);
            this.f184a.a(true, this.c);
        }
    }
}
