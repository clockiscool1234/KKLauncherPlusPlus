package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ce, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0064ce implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f237a;
    private final /* synthetic */ boolean b;

    RunnableC0064ce(Launcher launcher, boolean z) {
        this.f237a = launcher;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f237a.d(this.b);
    }
}
