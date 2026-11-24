package com.android.launcher3;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class CropView extends com.android.b.a.f implements ScaleGestureDetector.OnScaleGestureListener {
    private ScaleGestureDetector c;
    private long d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private boolean l;
    private RectF m;
    private float[] n;
    private float[] o;
    private float[] p;
    private float[] q;
    private float[] r;
    private Z s;
    private Matrix t;
    private Matrix u;

    public CropView(Context context) {
        this(context, null);
    }

    public CropView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = true;
        this.m = new RectF();
        this.n = new float[]{0.0f, 0.0f};
        this.o = new float[]{0.0f, 0.0f};
        this.p = new float[]{0.0f, 0.0f};
        this.q = new float[]{0.0f, 0.0f};
        this.r = new float[]{0.0f, 0.0f};
        this.c = new ScaleGestureDetector(context, this);
        this.t = new Matrix();
        this.u = new Matrix();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0032 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x000d, B:10:0x002a, B:13:0x0032, B:11:0x0030), top: B:18:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x000d A[Catch: all -> 0x0037, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x000d, B:10:0x002a, B:13:0x0032, B:11:0x0030), top: B:18:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x0029  */
    private void a(int i, int i2, com.android.b.a.e eVar, boolean z) {
        float f;
        synchronized (this.f57a) {
            if (z) {
                this.b.f60a = 1.0f;
                if (eVar != null) {
                    float[] fArrE = e();
                    this.k = Math.max(i / fArrE[0], i2 / fArrE[1]);
                    com.android.b.a.i iVar = this.b;
                    float f2 = this.k;
                    if (z) {
                        f = Float.MIN_VALUE;
                    } else {
                        f = this.b.f60a;
                    }
                    iVar.f60a = Math.max(f2, f);
                }
            } else if (eVar != null) {
                float[] fArrE2 = e();
                this.k = Math.max(i / fArrE2[0], i2 / fArrE2[1]);
                com.android.b.a.i iVar2 = this.b;
                float f3 = this.k;
                if (z) {
                    f = Float.MIN_VALUE;
                } else {
                    f = this.b.f60a;
                }
                iVar2.f60a = Math.max(f3, f);
            }
            throw th;
        }
    }

    private void a(RectF rectF) {
        float width = getWidth();
        float height = getHeight();
        float[] fArrE = e();
        float f = fArrE[0];
        float f2 = fArrE[1];
        float fB = this.b.e.b() / 2.0f;
        float fC = this.b.e.c() / 2.0f;
        float[] fArr = this.r;
        fArr[0] = this.i - fB;
        fArr[1] = this.j - fC;
        this.t.mapPoints(fArr);
        fArr[0] = fArr[0] + (f / 2.0f);
        fArr[1] = fArr[1] + (f2 / 2.0f);
        float f3 = this.b.f60a;
        float f4 = (width / 2.0f) + ((((width / 2.0f) - fArr[0]) + ((f - width) / 2.0f)) * f3);
        float f5 = (height / 2.0f) + ((((height / 2.0f) - fArr[1]) + ((f2 - height) / 2.0f)) * f3);
        float f6 = f4 - ((f / 2.0f) * f3);
        rectF.left = f6;
        rectF.right = f4 + ((f / 2.0f) * f3);
        rectF.top = f5 - ((f2 / 2.0f) * f3);
        rectF.bottom = f5 + ((f2 / 2.0f) * f3);
    }

    private float[] e() {
        float fB = this.b.e.b();
        float fC = this.b.e.c();
        float[] fArr = this.q;
        fArr[0] = fB;
        fArr[1] = fC;
        this.t.mapPoints(fArr);
        fArr[0] = Math.abs(fArr[0]);
        fArr[1] = Math.abs(fArr[1]);
        return fArr;
    }

    private void f() {
        this.b.b = Math.round(this.i);
        this.b.c = Math.round(this.j);
    }

    public final int a() {
        return this.b.d;
    }

    public final void a(float f) {
        synchronized (this.f57a) {
            this.b.f60a = f;
        }
    }

    @Override // com.android.b.a.f
    public final void a(com.android.b.a.e eVar, Runnable runnable) {
        super.a(eVar, runnable);
        this.i = this.b.b;
        this.j = this.b.c;
        this.t.reset();
        this.t.setRotate(this.b.d);
        this.u.reset();
        this.u.setRotate(-this.b.d);
        a(getWidth(), getHeight(), eVar, true);
    }

    public final void a(Z z) {
        this.s = z;
    }

    public final void a(boolean z) {
        this.l = z;
    }

    public final RectF b() {
        RectF rectF = this.m;
        a(rectF);
        float f = this.b.f60a;
        float f2 = (-rectF.left) / f;
        float f3 = (-rectF.top) / f;
        return new RectF(f2, f3, (getWidth() / f) + f2, (getHeight() / f) + f3);
    }

    public final Point c() {
        return new Point(this.b.e.b(), this.b.e.c());
    }

    public final void d() {
        if (getWidth() == 0 || getHeight() == 0) {
            getViewTreeObserver().addOnGlobalLayoutListener(new Y(this));
        }
        RectF rectF = this.m;
        a(rectF);
        this.i = (float) (Math.ceil(rectF.left / this.b.f60a) + ((double) this.i));
        f();
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        this.b.f60a *= scaleGestureDetector.getScaleFactor();
        this.b.f60a = Math.max(this.k, this.b.f60a);
        invalidate();
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        a(i, i2, this.b.e, false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        boolean z = actionMasked == 6;
        int actionIndex = z ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        float y = 0.0f;
        float x = 0.0f;
        for (int i = 0; i < pointerCount; i++) {
            if (actionIndex != i) {
                x += motionEvent.getX(i);
                y += motionEvent.getY(i);
            }
        }
        int i2 = z ? pointerCount - 1 : pointerCount;
        float f = x / i2;
        float f2 = y / i2;
        if (actionMasked == 0) {
            this.e = f;
            this.f = f2;
            this.d = System.currentTimeMillis();
            if (this.s != null) {
                this.s.a();
            }
        } else if (actionMasked == 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
            float f3 = ((this.e - f) * (this.e - f)) + ((this.f - f2) * (this.f - f2));
            float scaledTouchSlop = viewConfiguration.getScaledTouchSlop() * viewConfiguration.getScaledTouchSlop();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.s != null) {
                if (f3 < scaledTouchSlop && jCurrentTimeMillis < this.d + ((long) ViewConfiguration.getTapTimeout())) {
                    this.s.b();
                }
                this.s.c();
            }
        }
        if (this.l) {
            synchronized (this.f57a) {
                this.c.onTouchEvent(motionEvent);
                switch (actionMasked) {
                    case 2:
                        float[] fArr = this.n;
                        fArr[0] = (this.g - f) / this.b.f60a;
                        fArr[1] = (this.h - f2) / this.b.f60a;
                        this.u.mapPoints(fArr);
                        this.i += fArr[0];
                        this.j = fArr[1] + this.j;
                        f();
                        invalidate();
                        break;
                }
                if (this.b.e != null) {
                    RectF rectF = this.m;
                    a(rectF);
                    float f4 = this.b.f60a;
                    float[] fArr2 = this.o;
                    fArr2[0] = 1.0f;
                    fArr2[1] = 1.0f;
                    this.t.mapPoints(fArr2);
                    float[] fArr3 = this.p;
                    this.p[0] = 0.0f;
                    this.p[1] = 0.0f;
                    if (rectF.left > 0.0f) {
                        fArr3[0] = rectF.left / f4;
                    } else if (rectF.right < getWidth()) {
                        fArr3[0] = (rectF.right - getWidth()) / f4;
                    }
                    if (rectF.top > 0.0f) {
                        fArr3[1] = FloatMath.ceil(rectF.top / f4);
                    } else if (rectF.bottom < getHeight()) {
                        fArr3[1] = (rectF.bottom - getHeight()) / f4;
                    }
                    for (int i3 = 0; i3 <= 1; i3++) {
                        if (fArr2[i3] > 0.0f) {
                            fArr3[i3] = FloatMath.ceil(fArr3[i3]);
                        }
                    }
                    this.u.mapPoints(fArr3);
                    this.i += fArr3[0];
                    this.j += fArr3[1];
                    f();
                }
            }
            this.g = f;
            this.h = f2;
        }
        return true;
    }
}
