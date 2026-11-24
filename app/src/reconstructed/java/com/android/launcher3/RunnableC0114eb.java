package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.eb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0114eb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ dX f328a;
    private final /* synthetic */ Runnable b;

    RunnableC0114eb(dX dXVar, Runnable runnable) {
        this.f328a = dXVar;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.run();
        this.f328a.P();
    }
}
