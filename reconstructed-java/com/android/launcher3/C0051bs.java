package com.android.launcher3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;

/* JADX INFO: renamed from: com.android.launcher3.bs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0051bs {
    private static C0051bs l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f204a;
    private final Paint b = new Paint();
    private final Paint c = new Paint();
    private final Paint d = new Paint();
    private BlurMaskFilter e;
    private BlurMaskFilter f;
    private BlurMaskFilter g;
    private BlurMaskFilter h;
    private BlurMaskFilter i;
    private BlurMaskFilter j;
    private BlurMaskFilter k;

    private C0051bs() {
        float fK = cB.a().k();
        this.f204a = (int) (fK * 12.0f);
        this.e = new BlurMaskFilter(12.0f * fK, BlurMaskFilter.Blur.OUTER);
        this.f = new BlurMaskFilter(fK * 6.0f, BlurMaskFilter.Blur.OUTER);
        this.g = new BlurMaskFilter(fK * 2.0f, BlurMaskFilter.Blur.OUTER);
        this.h = new BlurMaskFilter(fK, BlurMaskFilter.Blur.OUTER);
        this.j = new BlurMaskFilter(fK * 6.0f, BlurMaskFilter.Blur.NORMAL);
        this.i = new BlurMaskFilter(4.0f * fK, BlurMaskFilter.Blur.NORMAL);
        this.k = new BlurMaskFilter(fK * 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.b.setFilterBitmap(true);
        this.b.setAntiAlias(true);
        this.c.setFilterBitmap(true);
        this.c.setAntiAlias(true);
        this.d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.d.setFilterBitmap(true);
        this.d.setAntiAlias(true);
    }

    public static C0051bs a(Context context) {
        if (l == null) {
            l = new C0051bs();
        }
        return l;
    }

    private void a(Bitmap bitmap, Canvas canvas, int i, int i2, boolean z, int i3) {
        BlurMaskFilter blurMaskFilter;
        BlurMaskFilter blurMaskFilter2;
        if (z) {
            int[] iArr = new int[bitmap.getWidth() * bitmap.getHeight()];
            bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if ((iArr[i4] >>> 24) < 188) {
                    iArr[i4] = 0;
                }
            }
            bitmap.setPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        Bitmap bitmapExtractAlpha = bitmap.extractAlpha();
        switch (i3) {
            case 0:
                blurMaskFilter = this.f;
                break;
            case 1:
                blurMaskFilter = this.g;
                break;
            case 2:
                blurMaskFilter = this.e;
                break;
            default:
                throw new RuntimeException("Invalid blur thickness");
        }
        this.c.setMaskFilter(blurMaskFilter);
        int[] iArr2 = new int[2];
        Bitmap bitmapExtractAlpha2 = bitmapExtractAlpha.extractAlpha(this.c, iArr2);
        if (i3 == 2) {
            this.c.setMaskFilter(this.g);
        } else {
            this.c.setMaskFilter(this.h);
        }
        int[] iArr3 = new int[2];
        Bitmap bitmapExtractAlpha3 = bitmapExtractAlpha.extractAlpha(this.c, iArr3);
        canvas.setBitmap(bitmapExtractAlpha);
        canvas.drawColor(-16777216, PorterDuff.Mode.SRC_OUT);
        switch (i3) {
            case 0:
                blurMaskFilter2 = this.i;
                break;
            case 1:
                blurMaskFilter2 = this.k;
                break;
            case 2:
                blurMaskFilter2 = this.j;
                break;
            default:
                throw new RuntimeException("Invalid blur thickness");
        }
        this.c.setMaskFilter(blurMaskFilter2);
        int[] iArr4 = new int[2];
        Bitmap bitmapExtractAlpha4 = bitmapExtractAlpha.extractAlpha(this.c, iArr4);
        canvas.setBitmap(bitmapExtractAlpha4);
        canvas.drawBitmap(bitmapExtractAlpha, -iArr4[0], -iArr4[1], this.d);
        canvas.drawRect(0.0f, 0.0f, -iArr4[0], bitmapExtractAlpha4.getHeight(), this.d);
        canvas.drawRect(0.0f, 0.0f, bitmapExtractAlpha4.getWidth(), -iArr4[1], this.d);
        canvas.setBitmap(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.b.setColor(i);
        canvas.drawBitmap(bitmapExtractAlpha4, iArr4[0], iArr4[1], this.b);
        canvas.drawBitmap(bitmapExtractAlpha2, iArr2[0], iArr2[1], this.b);
        this.b.setColor(i2);
        canvas.drawBitmap(bitmapExtractAlpha3, iArr3[0], iArr3[1], this.b);
        canvas.setBitmap(null);
        bitmapExtractAlpha3.recycle();
        bitmapExtractAlpha2.recycle();
        bitmapExtractAlpha4.recycle();
        bitmapExtractAlpha.recycle();
    }

    final void a(Bitmap bitmap, Canvas canvas, int i, int i2) {
        a(bitmap, canvas, i, i2, 1);
    }

    final void a(Bitmap bitmap, Canvas canvas, int i, int i2, int i3) {
        a(bitmap, canvas, i, i2, true, i3);
    }

    final void a(Bitmap bitmap, Canvas canvas, int i, int i2, boolean z) {
        a(bitmap, canvas, i, i2, z, 1);
    }
}
