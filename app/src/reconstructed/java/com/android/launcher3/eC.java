package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
public final class eC implements dU {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    RunnableC0005a f305a = new RunnableC0005a();
    private CellLayout b;
    private Launcher c;

    public eC(Launcher launcher) {
        this.c = launcher;
        this.f305a.a(this);
    }

    @Override // com.android.launcher3.dU
    public final void a() {
        if (this.b == null) {
            this.c.q().c();
            return;
        }
        Workspace workspaceH = this.c.h();
        int iIndexOfChild = workspaceH.indexOfChild(this.b);
        if (iIndexOfChild != workspaceH.C()) {
            workspaceH.o(iIndexOfChild);
        }
    }

    public final void a(CellLayout cellLayout) {
        this.f305a.a();
        this.f305a.a(cellLayout == null ? 950L : 500L);
        this.b = cellLayout;
    }
}
