package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.cd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0063cd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f236a;
    private final /* synthetic */ cF b;

    RunnableC0063cd(Launcher launcher, cF cFVar) {
        this.f236a = launcher;
        this.b = cFVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f236a.b(this.b);
    }
}
