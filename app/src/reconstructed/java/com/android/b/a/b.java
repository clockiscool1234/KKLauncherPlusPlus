package com.android.b.a;

import android.graphics.Bitmap;
import android.util.Log;
import com.android.a.c.k;

/* JADX INFO: loaded from: classes.dex */
final class b extends k {
    public int e;
    public int f;
    public int g;
    public b h;
    public Bitmap i;
    public volatile int j = 1;
    private /* synthetic */ a k;

    public b(a aVar, int i, int i2, int i3) {
        this.k = aVar;
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    public final void a(int i, int i2, int i3) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        m();
    }

    @Override // com.android.a.c.k
    protected final void a(Bitmap bitmap) {
        a.d.a(bitmap);
    }

    @Override // com.android.a.c.k
    protected final Bitmap a_() {
        com.android.a.a.a.a(this.j == 8);
        a(Math.min(this.k.e, (this.k.b - this.e) >> this.g), Math.min(this.k.e, (this.k.c - this.f) >> this.g));
        Bitmap bitmap = this.i;
        this.i = null;
        this.j = 1;
        return bitmap;
    }

    @Override // com.android.a.c.a
    public final int e() {
        return this.k.e;
    }

    @Override // com.android.a.c.a
    public final int f() {
        return this.k.e;
    }

    final boolean o() {
        try {
            Bitmap bitmap = (Bitmap) a.d.a();
            if (bitmap != null && bitmap.getWidth() != this.k.e) {
                bitmap = null;
            }
            this.i = this.k.f.a(this.g, this.e, this.f, bitmap);
        } catch (Throwable th) {
            Log.w("TiledImageRenderer", "fail to decode tile", th);
        }
        return this.i != null;
    }

    public final b p() {
        if (this.g + 1 == this.k.f54a) {
            return null;
        }
        int i = this.k.e << (this.g + 1);
        return this.k.b((this.e / i) * i, i * (this.f / i), this.g + 1);
    }

    public final String toString() {
        return String.format("tile(%s, %s, %s / %s)", Integer.valueOf(this.e / this.k.e), Integer.valueOf(this.f / this.k.e), Integer.valueOf(this.k.h), Integer.valueOf(this.k.f54a));
    }
}
