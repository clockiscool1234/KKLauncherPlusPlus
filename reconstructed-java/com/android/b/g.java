package com.android.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class g implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f67a;
    private Canvas b;
    private Paint c;

    private g(Bitmap bitmap) {
        this.f67a = bitmap;
    }

    public static g a(InputStream inputStream) {
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
        if (bitmapDecodeStream != null) {
            return new g(bitmapDecodeStream);
        }
        return null;
    }

    public static g a(String str) {
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        if (bitmapDecodeFile != null) {
            return new g(bitmapDecodeFile);
        }
        return null;
    }

    @Override // com.android.b.h
    public final int a() {
        return this.f67a.getWidth();
    }

    @Override // com.android.b.h
    public final Bitmap a(Rect rect, BitmapFactory.Options options) {
        if (this.b == null) {
            this.b = new Canvas();
            this.c = new Paint();
            this.c.setFilterBitmap(true);
        }
        int iMax = Math.max(options.inSampleSize, 1);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(rect.width() / iMax, rect.height() / iMax, Bitmap.Config.ARGB_8888);
        this.b.setBitmap(bitmapCreateBitmap);
        this.b.save();
        this.b.scale(1.0f / iMax, 1.0f / iMax);
        this.b.drawBitmap(this.f67a, -rect.left, -rect.top, this.c);
        this.b.restore();
        this.b.setBitmap(null);
        return bitmapCreateBitmap;
    }

    @Override // com.android.b.h
    public final int b() {
        return this.f67a.getHeight();
    }
}
