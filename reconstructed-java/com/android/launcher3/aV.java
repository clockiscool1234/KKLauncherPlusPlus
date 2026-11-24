package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class aV implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Folder f138a;

    aV(Folder folder) {
        this.f138a = folder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CellLayout cellLayoutA = this.f138a.b.a(this.f138a.c.h, this.f138a.c.i);
        View view = null;
        if (this.f138a.r() == 1) {
            C0137ey c0137ey = (C0137ey) this.f138a.c.b.get(0);
            View viewA = this.f138a.b.a(R.layout.application, cellLayoutA, c0137ey);
            cO.a(this.f138a.b, c0137ey, this.f138a.c.h, this.f138a.c.i, this.f138a.c.j, this.f138a.c.k);
            view = viewA;
        }
        if (this.f138a.r() <= 1) {
            cO.b(this.f138a.b, this.f138a.c);
            if (cellLayoutA != null) {
                cellLayoutA.removeView(this.f138a.l);
            }
            if (this.f138a.l instanceof aF) {
                this.f138a.f81a.b((aF) this.f138a.l);
            }
            Launcher launcher = this.f138a.b;
            Launcher.a(this.f138a.c);
        }
        if (view != null) {
            this.f138a.b.h().a(view, this.f138a.c.h, this.f138a.c.i, this.f138a.c.j, this.f138a.c.k, this.f138a.c.l, this.f138a.c.m);
        }
    }
}
