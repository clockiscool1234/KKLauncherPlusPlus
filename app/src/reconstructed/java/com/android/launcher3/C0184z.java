package com.android.launcher3;

import android.graphics.Bitmap;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0184z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f408a;
    ArrayList b;
    ArrayList c = new ArrayList();
    InterfaceC0183y d;
    InterfaceC0183y e;
    private C0157fr f;

    C0184z(int i, ArrayList arrayList, int i2, int i3, InterfaceC0183y interfaceC0183y, InterfaceC0183y interfaceC0183y2, C0157fr c0157fr) {
        this.f408a = i;
        this.b = arrayList;
        this.d = interfaceC0183y;
        this.e = interfaceC0183y2;
        this.f = c0157fr;
    }

    final void a(boolean z) {
        if (this.c != null) {
            if (z) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= this.c.size()) {
                        break;
                    }
                    this.f.a(this.b.get(i2), (Bitmap) this.c.get(i2));
                    i = i2 + 1;
                }
            }
            this.c.clear();
        }
    }
}
