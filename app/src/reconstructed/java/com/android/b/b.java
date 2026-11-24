package com.android.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.FloatMath;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f62a;
    private Bitmap b;
    private int c;
    private int d;
    private c e = c.NOT_LOADED;

    public b(int i) {
        this.c = i;
    }

    public abstract Bitmap a(BitmapFactory.Options options);

    public final boolean a() {
        int iB;
        Integer numB;
        com.android.a.b.c cVar = new com.android.a.b.c();
        if (a(cVar) && (numB = cVar.b(com.android.a.b.c.b)) != null) {
            this.d = com.android.a.b.c.b(numB.shortValue());
        }
        this.f62a = g();
        if (this.f62a == null) {
            this.e = c.ERROR_LOADING;
            return false;
        }
        int iA = this.f62a.a();
        int iB2 = this.f62a.b();
        if (this.c != 0) {
            int iMin = Math.min(this.c, 1024);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            options.inPreferQualityOverSpeed = true;
            int iFloor = (int) FloatMath.floor(1.0f / (iMin / Math.max(iA, iB2)));
            if (iFloor <= 1) {
                iB = 1;
            } else {
                iB = iFloor <= 8 ? com.android.a.a.a.b(iFloor) : (iFloor / 8) << 3;
            }
            options.inSampleSize = iB;
            options.inJustDecodeBounds = false;
            this.b = a(options);
        }
        this.e = c.LOADED;
        return true;
    }

    public abstract boolean a(com.android.a.b.c cVar);

    public final c b() {
        return this.e;
    }

    public final h c() {
        return this.f62a;
    }

    public final Bitmap d() {
        return this.b;
    }

    public final int e() {
        return this.c;
    }

    public final int f() {
        return this.d;
    }

    public abstract h g();
}
