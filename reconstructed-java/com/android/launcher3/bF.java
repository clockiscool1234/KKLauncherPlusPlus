package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class bF implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f168a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;
    private final /* synthetic */ CellLayout d;

    bF(Launcher launcher, int i, int i2, CellLayout cellLayout) {
        this.f168a = launcher;
        this.b = i;
        this.c = i2;
        this.d = cellLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f168a.a(this.b, this.c);
        this.d.c(false);
    }
}
