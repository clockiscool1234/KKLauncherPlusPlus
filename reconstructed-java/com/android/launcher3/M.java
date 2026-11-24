package com.android.launcher3;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HashMap f96a;
    ArrayList b;
    ArrayList c;
    boolean d;
    int e;
    int f;
    int g;
    int h;
    private HashMap i;
    private /* synthetic */ CellLayout j;

    private M(CellLayout cellLayout) {
        this.j = cellLayout;
        this.f96a = new HashMap();
        this.i = new HashMap();
        this.b = new ArrayList();
        this.d = false;
    }

    /* synthetic */ M(CellLayout cellLayout, byte b) {
        this(cellLayout);
    }

    final void a() {
        for (View view : this.f96a.keySet()) {
            ((K) this.f96a.get(view)).a((K) this.i.get(view));
        }
    }

    final void a(View view, K k) {
        this.f96a.put(view, k);
        this.i.put(view, new K(this.j));
        this.b.add(view);
    }

    final void b() {
        for (View view : this.i.keySet()) {
            ((K) this.i.get(view)).a((K) this.f96a.get(view));
        }
    }

    final int c() {
        return this.g * this.h;
    }
}
