package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ba, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0033ba implements dU {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ FolderIcon f188a;

    C0033ba(FolderIcon folderIcon) {
        this.f188a = folderIcon;
    }

    @Override // com.android.launcher3.dU
    public final void a() {
        C0137ey c0137eyB;
        if (this.f188a.x instanceof C0086d) {
            c0137eyB = ((C0086d) this.f188a.x).b();
            c0137eyB.l = 1;
            c0137eyB.m = 1;
        } else {
            c0137eyB = (C0137ey) this.f188a.x;
        }
        this.f188a.d.a(c0137eyB);
        this.f188a.c.a(this.f188a);
    }
}
