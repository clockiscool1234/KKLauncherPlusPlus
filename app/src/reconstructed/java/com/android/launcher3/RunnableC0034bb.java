package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.bb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0034bb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ FolderIcon f189a;
    private final /* synthetic */ C0137ey b;

    RunnableC0034bb(FolderIcon folderIcon, C0137ey c0137ey) {
        this.f189a = folderIcon;
        this.b = c0137ey;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f189a.v.remove(this.b);
        this.f189a.d.c(this.b);
        this.f189a.invalidate();
    }
}
