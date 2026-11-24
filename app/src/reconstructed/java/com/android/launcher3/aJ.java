package com.android.launcher3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
final class aJ extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f128a;
    private final Paint c = new Paint(2);
    private int b = 255;

    aJ(Bitmap bitmap) {
        this.f128a = bitmap;
        setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
    }

    public final Bitmap a() {
        return this.f128a;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawBitmap(this.f128a, (Rect) null, getBounds(), this.c);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return getBounds().height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return getBounds().width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return getBounds().height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return getBounds().width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.b = i;
        this.c.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.c.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z) {
        this.c.setFilterBitmap(z);
        this.c.setAntiAlias(z);
    }
}
