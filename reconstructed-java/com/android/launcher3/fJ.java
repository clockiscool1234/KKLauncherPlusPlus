package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fJ implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f355a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ Runnable c;
    private final /* synthetic */ boolean d;

    fJ(Workspace workspace, boolean z, Runnable runnable, boolean z2) {
        this.f355a = workspace;
        this.b = z;
        this.c = runnable;
        this.d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f355a.a(this.b, this.c, 0, this.d);
    }
}
