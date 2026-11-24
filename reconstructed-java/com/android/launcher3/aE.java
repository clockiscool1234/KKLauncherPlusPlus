package com.android.launcher3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class aE implements com.android.b.a.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f124a;
    private int b = Math.min(1024, 1024);
    private Drawable c;
    private com.android.a.c.b d;

    public aE(Context context, Drawable drawable, int i) {
        this.f124a = com.android.b.a.a.a(context);
        this.c = drawable;
    }

    @Override // com.android.b.a.e
    public final int a() {
        return this.f124a;
    }

    @Override // com.android.b.a.e
    public final Bitmap a(int i, int i2, int i3, Bitmap bitmap) {
        int i4 = this.f124a;
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmap);
        Rect rect = new Rect(0, 0, this.c.getIntrinsicWidth(), this.c.getIntrinsicHeight());
        rect.offset(-i2, -i3);
        this.c.setBounds(rect);
        this.c.draw(canvas);
        canvas.setBitmap(null);
        return bitmap;
    }

    @Override // com.android.b.a.e
    public final int b() {
        return this.c.getIntrinsicWidth();
    }

    @Override // com.android.b.a.e
    public final int c() {
        return this.c.getIntrinsicHeight();
    }

    @Override // com.android.b.a.e
    public final int d() {
        return 0;
    }

    @Override // com.android.b.a.e
    public final com.android.a.c.a e() {
        if (this.b == 0) {
            return null;
        }
        if (this.d == null) {
            float intrinsicWidth = this.c.getIntrinsicWidth();
            float intrinsicHeight = this.c.getIntrinsicHeight();
            while (true) {
                if (intrinsicWidth <= 1024.0f && intrinsicHeight <= 1024.0f) {
                    break;
                }
                intrinsicWidth /= 2.0f;
                intrinsicHeight /= 2.0f;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) intrinsicWidth, (int) intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            this.c.setBounds(new Rect(0, 0, (int) intrinsicWidth, (int) intrinsicHeight));
            this.c.draw(canvas);
            canvas.setBitmap(null);
            this.d = new com.android.a.c.b(bitmapCreateBitmap);
        }
        return this.d;
    }
}
