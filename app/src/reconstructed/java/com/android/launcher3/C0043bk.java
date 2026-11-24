package com.android.launcher3;

import android.content.ContentValues;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.bk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0043bk extends bD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f198a;
    ArrayList b = new ArrayList();
    ArrayList c = new ArrayList();

    C0043bk() {
        this.g = 2;
    }

    private void c() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.c.size()) {
                return;
            }
            ((InterfaceC0044bl) this.c.get(i2)).t();
            i = i2 + 1;
        }
    }

    @Override // com.android.launcher3.bD
    final void a(ContentValues contentValues) {
        super.a(contentValues);
        contentValues.put("title", this.q.toString());
    }

    final void a(InterfaceC0044bl interfaceC0044bl) {
        this.c.add(interfaceC0044bl);
    }

    public final void a(C0137ey c0137ey) {
        this.b.add(c0137ey);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.c.size()) {
                c();
                return;
            } else {
                ((InterfaceC0044bl) this.c.get(i2)).d(c0137ey);
                i = i2 + 1;
            }
        }
    }

    public final void b(C0137ey c0137ey) {
        this.b.remove(c0137ey);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.c.size()) {
                c();
                return;
            } else {
                ((InterfaceC0044bl) this.c.get(i2)).e(c0137ey);
                i = i2 + 1;
            }
        }
    }

    @Override // com.android.launcher3.bD
    final void b_() {
        super.b_();
        this.c.clear();
    }

    @Override // com.android.launcher3.bD
    public final String toString() {
        return "FolderInfo(id=" + this.f + " type=" + this.g + " container=" + this.h + " screen=" + this.i + " cellX=" + this.j + " cellY=" + this.k + " spanX=" + this.l + " spanY=" + this.m + " dropPos=" + this.r + ")";
    }
}
