package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.cb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0061cb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f234a;
    private final /* synthetic */ int b;
    private final /* synthetic */ Runnable c;

    RunnableC0061cb(Launcher launcher, int i, Runnable runnable) {
        this.f234a = launcher;
        this.b = i;
        this.c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f234a.l != null) {
            this.f234a.l.o(this.b);
            this.f234a.l.postDelayed(this.c, Launcher.h);
        }
    }
}
