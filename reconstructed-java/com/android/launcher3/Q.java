package com.android.launcher3;

import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f105a;
    M b;
    int[] c;
    int[] d;
    int[] e;
    int[] f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    private boolean m;
    private /* synthetic */ CellLayout n;
    private Rect l = new Rect();
    R k = new R(this);

    public Q(CellLayout cellLayout, ArrayList arrayList, M m) {
        this.n = cellLayout;
        this.c = new int[cellLayout.g];
        this.d = new int[cellLayout.g];
        this.e = new int[cellLayout.f];
        this.f = new int[cellLayout.f];
        this.f105a = (ArrayList) arrayList.clone();
        this.b = m;
        a();
    }

    final void a() {
        for (int i = 0; i < this.n.f; i++) {
            this.e[i] = -1;
            this.f[i] = -1;
        }
        for (int i2 = 0; i2 < this.n.g; i2++) {
            this.c[i2] = -1;
            this.d[i2] = -1;
        }
        this.g = true;
        this.h = true;
        this.j = true;
        this.i = true;
        this.m = true;
    }

    final void a(int i, int[] iArr) {
        int size = this.f105a.size();
        for (int i2 = 0; i2 < size; i2++) {
            K k = (K) this.b.f96a.get(this.f105a.get(i2));
            switch (i) {
                case 0:
                    int i3 = k.f92a;
                    for (int i4 = k.b; i4 < k.b + k.d; i4++) {
                        if (i3 < iArr[i4] || iArr[i4] < 0) {
                            iArr[i4] = i3;
                        }
                    }
                    break;
                case 1:
                    int i5 = k.b;
                    for (int i6 = k.f92a; i6 < k.f92a + k.c; i6++) {
                        if (i5 < iArr[i6] || iArr[i6] < 0) {
                            iArr[i6] = i5;
                        }
                    }
                    break;
                case 2:
                    int i7 = k.c + k.f92a;
                    for (int i8 = k.b; i8 < k.b + k.d; i8++) {
                        if (i7 > iArr[i8]) {
                            iArr[i8] = i7;
                        }
                    }
                    break;
                case 3:
                    int i9 = k.d + k.b;
                    for (int i10 = k.f92a; i10 < k.f92a + k.c; i10++) {
                        if (i9 > iArr[i10]) {
                            iArr[i10] = i9;
                        }
                    }
                    break;
            }
        }
    }

    public final Rect b() {
        if (this.m) {
            Iterator it = this.f105a.iterator();
            boolean z = true;
            while (it.hasNext()) {
                K k = (K) this.b.f96a.get((View) it.next());
                if (z) {
                    this.l.set(k.f92a, k.b, k.f92a + k.c, k.d + k.b);
                    z = false;
                } else {
                    this.l.union(k.f92a, k.b, k.f92a + k.c, k.d + k.b);
                }
            }
        }
        return this.l;
    }
}
