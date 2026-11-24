package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.fx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0163fx extends cA {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f389a;
    private final /* synthetic */ CellLayout b;
    private final /* synthetic */ int c;

    C0163fx(Workspace workspace, CellLayout cellLayout, int i) {
        this.f389a = workspace;
        this.b = cellLayout;
        this.c = i;
    }

    @Override // com.android.launcher3.cA
    public final void a(float f, float f2) {
        this.b.setBackgroundAlpha((this.f389a.bv[this.c] * f) + (this.f389a.bx[this.c] * f2));
    }
}
