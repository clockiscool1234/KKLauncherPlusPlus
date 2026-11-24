package com.android.launcher3;

import android.graphics.Bitmap;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class fT implements dU {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f365a;
    private int b;
    private int c;
    private int d;
    private aA e;
    private View f;
    private /* synthetic */ Workspace g;

    public fT(Workspace workspace, float[] fArr, int i, int i2, int i3, int i4, aA aAVar, View view) {
        this.g = workspace;
        this.f365a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.f = view;
        this.e = aAVar;
    }

    @Override // com.android.launcher3.dU
    public final void a() {
        int[] iArr = new int[2];
        Workspace workspace = this.g;
        Workspace workspace2 = this.g;
        workspace.ak = Workspace.a((int) this.g.aB[0], (int) this.g.aB[1], this.f365a, this.b, this.g.at, this.g.ak);
        this.g.bm = this.g.ak[0];
        this.g.bn = this.g.ak[1];
        this.g.ak = this.g.at.a((int) this.g.aB[0], (int) this.g.aB[1], this.f365a, this.b, this.c, this.d, this.f, this.g.ak, iArr, 1);
        if (this.g.ak[0] < 0 || this.g.ak[1] < 0) {
            this.g.at.s();
        } else {
            this.g.s(3);
        }
        boolean z = (iArr[0] == this.c && iArr[1] == this.d) ? false : true;
        CellLayout cellLayout = this.g.at;
        View view = this.f;
        Bitmap bitmap = this.g.aN;
        float[] unused = this.g.aB;
        float[] unused2 = this.g.aB;
        cellLayout.a(view, bitmap, this.g.ak[0], this.g.ak[1], iArr[0], iArr[1], z, this.e.c(), this.e.d());
    }
}
