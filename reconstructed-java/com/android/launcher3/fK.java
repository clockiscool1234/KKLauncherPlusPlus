package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fK implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f356a;
    private final /* synthetic */ CellLayout b;
    private final /* synthetic */ boolean c;

    fK(Workspace workspace, CellLayout cellLayout, boolean z) {
        this.f356a = workspace;
        this.b = cellLayout;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f356a.s()) {
            this.f356a.ag.remove(-201L);
            this.f356a.ah.remove((Object) (-201L));
            this.f356a.removeView(this.b);
            if (this.c) {
                this.f356a.Z();
            }
        }
    }
}
