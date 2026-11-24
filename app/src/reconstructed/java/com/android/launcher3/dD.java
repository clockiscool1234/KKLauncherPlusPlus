package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.FloatMath;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public final class dD {
    private static float D;
    private static float E;
    private static float x = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static final float[] y = new float[101];
    private static final float[] z = new float[101];
    private float A;
    private final float B;
    private float C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f260a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private long l;
    private int m;
    private float n;
    private float o;
    private float p;
    private boolean q;
    private TimeInterpolator r;
    private boolean s;
    private float t;
    private float u;
    private int v;
    private float w;

    static {
        float f;
        float f2;
        float f3;
        float f4;
        float f5 = 0.0f;
        int i = 0;
        float f6 = 0.0f;
        while (i < 100) {
            float f7 = i / 100.0f;
            float f8 = 1.0f;
            float f9 = f6;
            while (true) {
                f = ((f8 - f9) / 2.0f) + f9;
                f2 = 3.0f * f * (1.0f - f);
                float f10 = ((((1.0f - f) * 0.175f) + (0.35000002f * f)) * f2) + (f * f * f);
                if (Math.abs(f10 - f7) < 1.0E-5d) {
                    break;
                } else if (f10 > f7) {
                    f8 = f;
                } else {
                    f9 = f;
                }
            }
            y[i] = (f * f * f) + (f2 * (((1.0f - f) * 0.5f) + f));
            float f11 = 1.0f;
            while (true) {
                f3 = ((f11 - f5) / 2.0f) + f5;
                f4 = 3.0f * f3 * (1.0f - f3);
                float f12 = ((((1.0f - f3) * 0.5f) + f3) * f4) + (f3 * f3 * f3);
                if (Math.abs(f12 - f7) >= 1.0E-5d) {
                    if (f12 > f7) {
                        f11 = f3;
                    } else {
                        f5 = f3;
                    }
                }
            }
            z[i] = (f3 * f3 * f3) + ((((1.0f - f3) * 0.175f) + (0.35000002f * f3)) * f4);
            i++;
            f6 = f9;
        }
        float[] fArr = y;
        z[100] = 1.0f;
        fArr[100] = 1.0f;
        D = 8.0f;
        E = 1.0f;
        E = 1.0f / c(1.0f);
    }

    public dD(Context context) {
        this(context, null);
    }

    private dD(Context context, Interpolator interpolator) {
        this(context, null, context.getApplicationInfo().targetSdkVersion >= 11);
    }

    private dD(Context context, Interpolator interpolator, boolean z2) {
        this.w = ViewConfiguration.getScrollFriction();
        this.q = true;
        this.r = interpolator;
        this.B = context.getResources().getDisplayMetrics().density * 160.0f;
        this.A = a(ViewConfiguration.getScrollFriction());
        this.s = z2;
        this.C = a(0.84f);
    }

    private float a(float f) {
        return 386.0878f * this.B * f;
    }

    private double b(float f) {
        return Math.log((0.35f * Math.abs(f)) / (this.w * this.C));
    }

    private static float c(float f) {
        float f2 = D * f;
        return (f2 < 1.0f ? f2 - (1.0f - ((float) Math.exp(-f2))) : ((1.0f - ((float) Math.exp(1.0f - f2))) * 0.63212055f) + 0.36787945f) * E;
    }

    public final void a(int i) {
        this.d = i;
        this.o = this.d - this.b;
        this.q = false;
    }

    public final void a(int i, int i2, int i3, int i4, int i5) {
        this.f260a = 0;
        this.q = false;
        this.m = i5;
        this.l = AnimationUtils.currentAnimationTimeMillis();
        this.b = i;
        this.c = 0;
        this.d = i + i3;
        this.e = 0;
        this.o = i3;
        this.p = 0.0f;
        this.n = 1.0f / this.m;
    }

    public final void a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.s && !this.q) {
            float fCurrentAnimationTimeMillis = this.f260a == 1 ? this.u : this.t - ((this.A * ((int) (AnimationUtils.currentAnimationTimeMillis() - this.l))) / 2000.0f);
            float f = this.d - this.b;
            float f2 = this.e - this.c;
            float fSqrt = FloatMath.sqrt((f * f) + (f2 * f2));
            float f3 = (f / fSqrt) * fCurrentAnimationTimeMillis;
            float f4 = fCurrentAnimationTimeMillis * (f2 / fSqrt);
            if (Math.signum(i3) == Math.signum(f3) && Math.signum(0.0f) == Math.signum(f4)) {
                i3 = (int) (f3 + i3);
                i4 = (int) (f4 + 0.0f);
            }
        }
        this.f260a = 1;
        this.q = false;
        float fSqrt2 = FloatMath.sqrt((i3 * i3) + (i4 * i4));
        this.t = fSqrt2;
        this.m = (int) (Math.exp(b(fSqrt2) / (((double) x) - 1.0d)) * 1000.0d);
        this.l = AnimationUtils.currentAnimationTimeMillis();
        this.b = i;
        this.c = i2;
        float f5 = fSqrt2 == 0.0f ? 1.0f : i3 / fSqrt2;
        float f6 = fSqrt2 == 0.0f ? 1.0f : i4 / fSqrt2;
        double dExp = Math.exp(b(fSqrt2) * (((double) x) / (((double) x) - 1.0d))) * ((double) (this.w * this.C));
        this.v = (int) (((double) Math.signum(fSqrt2)) * dExp);
        this.f = Integer.MIN_VALUE;
        this.g = Integer.MAX_VALUE;
        this.h = 0;
        this.i = 0;
        this.d = ((int) Math.round(((double) f5) * dExp)) + i;
        this.d = Math.min(this.d, this.g);
        this.d = Math.max(this.d, this.f);
        this.e = ((int) Math.round(((double) f6) * dExp)) + i2;
        this.e = Math.min(this.e, this.i);
        this.e = Math.max(this.e, this.h);
    }

    public final void a(TimeInterpolator timeInterpolator) {
        this.r = timeInterpolator;
    }

    public final void a(boolean z2) {
        this.q = true;
    }

    public final boolean a() {
        return this.q;
    }

    public final int b() {
        return this.j;
    }

    public final int c() {
        return this.k;
    }

    public final int d() {
        return this.d;
    }

    public final boolean e() {
        if (this.q) {
            return false;
        }
        int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - this.l);
        if (iCurrentAnimationTimeMillis < this.m) {
            switch (this.f260a) {
                case 0:
                    float f = iCurrentAnimationTimeMillis * this.n;
                    float fC = this.r == null ? c(f) : this.r.getInterpolation(f);
                    this.j = this.b + Math.round(this.o * fC);
                    this.k = Math.round(fC * this.p) + this.c;
                    break;
                case 1:
                    float f2 = iCurrentAnimationTimeMillis / this.m;
                    int i = (int) (100.0f * f2);
                    float f3 = 1.0f;
                    float f4 = 0.0f;
                    if (i < 100) {
                        float f5 = i / 100.0f;
                        float f6 = y[i];
                        f4 = (y[i + 1] - f6) / (((i + 1) / 100.0f) - f5);
                        f3 = ((f2 - f5) * f4) + f6;
                    }
                    this.u = ((f4 * this.v) / this.m) * 1000.0f;
                    this.j = this.b + Math.round((this.d - this.b) * f3);
                    this.j = Math.min(this.j, this.g);
                    this.j = Math.max(this.j, this.f);
                    this.k = this.c + Math.round(f3 * (this.e - this.c));
                    this.k = Math.min(this.k, this.i);
                    this.k = Math.max(this.k, this.h);
                    if (this.j == this.d && this.k == this.e) {
                        this.q = true;
                    }
                    break;
            }
        } else {
            this.j = this.d;
            this.k = this.e;
            this.q = true;
        }
        return true;
    }

    public final void f() {
        this.j = this.d;
        this.k = this.e;
        this.q = true;
    }
}
