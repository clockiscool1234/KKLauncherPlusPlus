package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fD implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f349a;
    private final /* synthetic */ C0127eo b;
    private final /* synthetic */ bD c;
    private final /* synthetic */ long d;
    private final /* synthetic */ long e;

    fD(Workspace workspace, C0127eo c0127eo, bD bDVar, long j, long j2) {
        this.f349a = workspace;
        this.b = c0127eo;
        this.c = bDVar;
        this.d = j;
        this.e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b.g) {
            case 1:
                this.f349a.aw.a(this.b.f337a, this.d, this.e, this.f349a.ak, (int[]) null);
                return;
            case 2:
            case 3:
            default:
                throw new IllegalStateException("Unknown item type: " + this.b.g);
            case 4:
                this.f349a.aw.a((C0129eq) this.b, this.d, this.e, this.f349a.ak, new int[]{this.c.l, this.c.m}, (int[]) null);
                return;
        }
    }
}
