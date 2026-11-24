package com.android.a.d;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f52a = new int[8];
    private int b = 0;

    public final int a() {
        this.b--;
        return this.f52a[this.b];
    }

    public final void a(int i) {
        if (this.f52a.length == this.b) {
            int[] iArr = new int[this.b + this.b];
            System.arraycopy(this.f52a, 0, iArr, 0, this.b);
            this.f52a = iArr;
        }
        int[] iArr2 = this.f52a;
        int i2 = this.b;
        this.b = i2 + 1;
        iArr2[i2] = i;
    }
}
