package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fR implements dU {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CellLayout f363a;
    private int b;
    private int c;
    private /* synthetic */ Workspace d;

    public fR(Workspace workspace, CellLayout cellLayout, int i, int i2) {
        this.d = workspace;
        this.f363a = cellLayout;
        this.b = i;
        this.c = i2;
    }

    @Override // com.android.launcher3.dU
    public final void a() {
        if (this.d.bd != null) {
            this.d.bd.b();
        }
        this.d.bd = new C0037be(this.d.aw, null);
        this.d.bd.a(this.b, this.c);
        this.d.bd.a(this.f363a);
        this.d.bd.a();
        this.f363a.a(this.d.bd);
        this.f363a.r();
        this.d.s(1);
    }
}
