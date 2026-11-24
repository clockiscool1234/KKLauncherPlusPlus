package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f92a;
    int b;
    int c;
    int d;

    public K(CellLayout cellLayout) {
    }

    public K(CellLayout cellLayout, int i, int i2, int i3, int i4) {
        this.f92a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final void a(K k) {
        k.f92a = this.f92a;
        k.b = this.b;
        k.c = this.c;
        k.d = this.d;
    }

    public final String toString() {
        return "(" + this.f92a + ", " + this.b + ": " + this.c + ", " + this.d + ")";
    }
}
