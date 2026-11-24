package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.fy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0164fy implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f390a;
    private final /* synthetic */ bD b;
    private final /* synthetic */ cE c;
    private final /* synthetic */ CellLayout d;

    RunnableC0164fy(Workspace workspace, bD bDVar, cE cEVar, CellLayout cellLayout) {
        this.f390a = workspace;
        this.b = bDVar;
        this.c = cEVar;
        this.d = cellLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DragLayer dragLayerG = this.f390a.aw.g();
        bD bDVar = this.b;
        dragLayerG.a(this.c, this.d);
    }
}
