package com.android.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class RegionDecoder implements com.android.b.a.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f53a;
    private h b;
    private int c;
    private int d;
    private int e;
    private com.android.a.c.a f;
    private final int g;
    private Rect h = new Rect();
    private Rect i = new Rect();
    private BitmapFactory.Options j;
    private Canvas k;

    static {
        f53a = Build.VERSION.SDK_INT >= 16;
    }

    public RegionDecoder(Context context, b bVar) {
        Bitmap bitmapCopy;
        this.e = com.android.b.a.a.a(context);
        this.g = bVar.f();
        this.b = bVar.c();
        if (this.b != null) {
            this.c = this.b.a();
            this.d = this.b.b();
            this.j = new BitmapFactory.Options();
            this.j.inPreferredConfig = Bitmap.Config.ARGB_8888;
            this.j.inPreferQualityOverSpeed = true;
            this.j.inTempStorage = new byte[16384];
            int iE = bVar.e();
            if (iE != 0) {
                int iMin = Math.min(iE, 1024);
                Bitmap bitmapD = bVar.d();
                if (bitmapD == null) {
                    bitmapCopy = null;
                } else {
                    float fMax = iMin / Math.max(bitmapD.getWidth(), bitmapD.getHeight());
                    bitmapD = ((double) fMax) <= 0.5d ? a.a.a.c.d.a(bitmapD, fMax, true) : bitmapD;
                    if (bitmapD == null || bitmapD.getConfig() != null) {
                        bitmapCopy = bitmapD;
                    } else {
                        bitmapCopy = bitmapD.copy(Bitmap.Config.ARGB_8888, false);
                        bitmapD.recycle();
                    }
                }
                if (bitmapCopy.getWidth() > 2048 || bitmapCopy.getHeight() > 2048) {
                    Log.w("BitmapRegionTileSource", String.format("Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d", Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(bitmapCopy.getWidth()), Integer.valueOf(bitmapCopy.getHeight())));
                } else {
                    this.f = new com.android.a.c.b(bitmapCopy);
                }
            }
        }
    }

    @Override // com.android.b.a.e
    public final int a() {
        return this.e;
    }

    @Override // com.android.b.a.e
    public final Bitmap a(int i, int i2, int i3, Bitmap bitmap) {
        int i4 = this.e;
        if (!f53a) {
            int i5 = i4 << i;
            this.h.set(i2, i3, i2 + i5, i5 + i3);
            this.i.set(0, 0, this.c, this.d);
            this.j.inSampleSize = 1 << i;
            Bitmap bitmapA = this.b.a(this.i, this.j);
            if (bitmapA == null) {
                Log.w("BitmapRegionTileSource", "fail in decoding region");
            }
            if (this.h.equals(this.i)) {
                return bitmapA;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
            if (this.k == null) {
                this.k = new Canvas();
            }
            this.k.setBitmap(bitmapCreateBitmap);
            this.k.drawBitmap(bitmapA, (this.i.left - this.h.left) >> i, (this.i.top - this.h.top) >> i, (Paint) null);
            this.k.setBitmap(null);
            return bitmapCreateBitmap;
        }
        int i6 = i4 << i;
        this.h.set(i2, i3, i2 + i6, i6 + i3);
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
        }
        this.j.inSampleSize = 1 << i;
        this.j.inBitmap = bitmap;
        try {
            Bitmap bitmapA2 = this.b.a(this.h, this.j);
            if (this.j.inBitmap != bitmapA2 && this.j.inBitmap != null) {
                this.j.inBitmap = null;
            }
            if (bitmapA2 != null) {
                return bitmapA2;
            }
            Log.w("BitmapRegionTileSource", "fail in decoding region");
            return bitmapA2;
        } catch (Throwable th) {
            if (this.j.inBitmap != bitmap && this.j.inBitmap != null) {
                this.j.inBitmap = null;
            }
            throw th;
        }
    }

    @Override // com.android.b.a.e
    public final int b() {
        return this.c;
    }

    @Override // com.android.b.a.e
    public final int c() {
        return this.d;
    }

    @Override // com.android.b.a.e
    public final int d() {
        return this.g;
    }

    @Override // com.android.b.a.e
    public final com.android.a.c.a e() {
        return this.f;
    }
}
