package com.android.launcher3;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes.dex */
public final class aA extends View {
    private static float b = 1.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ValueAnimator f120a;
    private Bitmap c;
    private Bitmap d;
    private Paint e;
    private int f;
    private int g;
    private Point h;
    private Rect i;
    private DragLayer j;
    private boolean k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;

    public aA(Launcher launcher, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, float f) {
        super(launcher);
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = false;
        this.l = 0.0f;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = 1.0f;
        this.p = 1.0f;
        this.j = launcher.g();
        this.o = f;
        Resources resources = getResources();
        float dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.dragViewOffsetX);
        float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.dragViewOffsetY);
        float dimensionPixelSize3 = (resources.getDimensionPixelSize(R.dimen.dragViewScale) + i5) / i5;
        setScaleX(f);
        setScaleY(f);
        this.f120a = C0082cw.a(0.0f, 1.0f);
        this.f120a.setDuration(150L);
        this.f120a.addUpdateListener(new aB(this, dimensionPixelSize, dimensionPixelSize2, f, dimensionPixelSize3));
        this.c = Bitmap.createBitmap(bitmap, 0, 0, i5, i6);
        this.i = new Rect(0, 0, i5, i6);
        this.f = i;
        this.g = i2;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        measure(iMakeMeasureSpec, iMakeMeasureSpec);
        this.e = new Paint(2);
    }

    public final float a() {
        return this.p;
    }

    public final void a(float f) {
        this.p = f;
    }

    public final void a(int i) {
        ValueAnimator valueAnimatorA = C0082cw.a(0.0f, 1.0f);
        valueAnimatorA.setDuration(i);
        valueAnimatorA.setInterpolator(new DecelerateInterpolator(1.5f));
        valueAnimatorA.addUpdateListener(new aC(this));
        valueAnimatorA.start();
    }

    public final void a(int i, int i2) {
        this.j.addView(this);
        DragLayer.LayoutParams layoutParams = new DragLayer.LayoutParams(0, 0);
        layoutParams.width = this.c.getWidth();
        layoutParams.height = this.c.getHeight();
        layoutParams.c = true;
        setLayoutParams(layoutParams);
        setTranslationX(i - this.f);
        setTranslationY(i2 - this.g);
        post(new aD(this));
    }

    public final void a(Bitmap bitmap) {
        this.d = bitmap;
    }

    public final void a(Point point) {
        this.h = point;
    }

    public final void a(Rect rect) {
        this.i = rect;
    }

    public final int b() {
        return this.i.top;
    }

    public final void b(int i) {
        if (this.e == null) {
            this.e = new Paint(2);
        }
        if (i != 0) {
            this.e.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_ATOP));
        } else {
            this.e.setColorFilter(null);
        }
        invalidate();
    }

    final void b(int i, int i2) {
        setTranslationX((i - this.f) + ((int) this.m));
        setTranslationY((i2 - this.g) + ((int) this.n));
    }

    public final Point c() {
        return this.h;
    }

    public final Rect d() {
        return this.i;
    }

    public final float e() {
        return this.o;
    }

    public final void f() {
        this.o = getScaleX();
    }

    public final boolean g() {
        return this.k;
    }

    public final void h() {
        if (this.f120a == null || !this.f120a.isRunning()) {
            return;
        }
        this.f120a.cancel();
    }

    public final void i() {
        this.n = 0.0f;
        this.m = 0.0f;
        requestLayout();
    }

    final void j() {
        if (getParent() != null) {
            this.j.removeView(this);
        }
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        this.k = true;
        boolean z = this.l > 0.0f && this.d != null;
        if (z) {
            this.e.setAlpha((int) ((1.0f - this.l) * 255.0f));
        }
        canvas.drawBitmap(this.c, 0.0f, 0.0f, this.e);
        if (z) {
            this.e.setAlpha((int) (this.l * 255.0f));
            canvas.save();
            canvas.scale(this.c.getWidth() / this.d.getWidth(), this.c.getHeight() / this.d.getHeight());
            canvas.drawBitmap(this.d, 0.0f, 0.0f, this.e);
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        setMeasuredDimension(this.c.getWidth(), this.c.getHeight());
    }

    @Override // android.view.View
    public final void setAlpha(float f) {
        super.setAlpha(f);
        this.e.setAlpha((int) (255.0f * f));
        invalidate();
    }
}
