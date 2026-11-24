package com.android.b.a;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongSparseArray;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static a.a.a.c.d d = new a.b.a(64);
    private c A;
    private boolean B;
    private int C;
    private int D;
    private View E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f54a;
    private int e;
    private e f;
    private com.android.a.c.a g;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private final d q;
    private final d r;
    private final d s;
    private int t;
    private int u;
    private float v;
    private int w;
    private boolean x;
    private int h = 0;
    private final RectF m = new RectF();
    private final RectF n = new RectF();
    private final LongSparseArray o = new LongSparseArray();
    private final Object p = new Object();
    protected int b = -1;
    protected int c = -1;
    private final Rect y = new Rect();
    private final Rect[] z = {new Rect(), new Rect()};

    public a(View view) {
        byte b = 0;
        this.q = new d(b);
        this.r = new d(b);
        this.s = new d(b);
        this.E = view;
        this.A = new c(this, b);
        this.A.start();
    }

    public static int a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels > 2048 || displayMetrics.widthPixels > 2048 ? 512 : 256;
    }

    private b a(int i, int i2, int i3) {
        b bVarA;
        synchronized (this.p) {
            bVarA = this.q.a();
            if (bVarA != null) {
                bVarA.j = 1;
                bVarA.a(i, i2, i3);
            } else {
                bVarA = new b(this, i, i2, i3);
            }
        }
        return bVarA;
    }

    private void a(Rect rect, int i, int i2, int i3, float f, int i4) {
        double radians = Math.toRadians(-i4);
        double d2 = this.C;
        double d3 = this.D;
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        int iCeil = (int) Math.ceil(Math.max(Math.abs((dCos * d2) - (dSin * d3)), Math.abs((dCos * d2) + (dSin * d3))));
        int iCeil2 = (int) Math.ceil(Math.max(Math.abs((dSin * d2) + (dCos * d3)), Math.abs((dSin * d2) - (dCos * d3))));
        int iFloor = (int) Math.floor(i - (iCeil / (2.0f * f)));
        int iFloor2 = (int) Math.floor(i2 - (iCeil2 / (2.0f * f)));
        int iCeil3 = (int) Math.ceil(iFloor + (iCeil / f));
        int iCeil4 = (int) Math.ceil((iCeil2 / f) + iFloor2);
        int i5 = this.e << i3;
        rect.set(Math.max(0, (iFloor / i5) * i5), Math.max(0, (iFloor2 / i5) * i5), Math.min(this.b, iCeil3), Math.min(this.c, iCeil4));
    }

    static /* synthetic */ void a(a aVar, b bVar) {
        synchronized (aVar.p) {
            if (bVar.j != 2) {
                return;
            }
            bVar.j = 4;
            boolean zO = bVar.o();
            synchronized (aVar.p) {
                if (bVar.j == 32) {
                    bVar.j = 64;
                    if (bVar.i != null) {
                        d.a(bVar.i);
                        bVar.i = null;
                    }
                    aVar.q.a(bVar);
                    return;
                }
                bVar.j = zO ? 8 : 16;
                if (zO) {
                    aVar.r.a(bVar);
                    aVar.E.postInvalidate();
                }
            }
        }
    }

    private void a(b bVar) {
        synchronized (this.p) {
            if (bVar.j == 1) {
                bVar.j = 2;
                if (this.s.a(bVar)) {
                    this.p.notifyAll();
                }
            }
        }
    }

    private boolean a(b bVar, com.android.a.c.c cVar, RectF rectF, RectF rectF2) {
        while (!bVar.n()) {
            b bVarP = bVar.p();
            if (bVarP == null) {
                return false;
            }
            if (bVar.e == bVarP.e) {
                rectF.left /= 2.0f;
                rectF.right /= 2.0f;
            } else {
                rectF.left = (this.e + rectF.left) / 2.0f;
                rectF.right = (this.e + rectF.right) / 2.0f;
            }
            if (bVar.f == bVarP.f) {
                rectF.top /= 2.0f;
                rectF.bottom /= 2.0f;
            } else {
                rectF.top = (this.e + rectF.top) / 2.0f;
                rectF.bottom = (this.e + rectF.bottom) / 2.0f;
            }
            bVar = bVarP;
        }
        cVar.a(bVar, rectF, rectF2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b b(int i, int i2, int i3) {
        return (b) this.o.get(c(i, i2, i3));
    }

    private void b(b bVar) {
        synchronized (this.p) {
            if (bVar.j == 4) {
                bVar.j = 32;
                return;
            }
            bVar.j = 64;
            if (bVar.i != null) {
                d.a(bVar.i);
                bVar.i = null;
            }
            this.q.a(bVar);
        }
    }

    private static long c(int i, int i2, int i3) {
        return (((((long) i) << 16) | ((long) i2)) << 16) | ((long) i3);
    }

    private void c() {
        synchronized (this.p) {
            this.s.b();
            this.r.b();
            int size = this.o.size();
            for (int i = 0; i < size; i++) {
                b((b) this.o.valueAt(i));
            }
            this.o.clear();
        }
    }

    private void d() {
        this.B = true;
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            b bVar = (b) this.o.valueAt(i);
            if (!bVar.n()) {
                a(bVar);
            }
        }
    }

    public final void a() {
        this.x = true;
        this.A.a();
        synchronized (this.p) {
            this.r.b();
            this.s.b();
            b bVarA = this.q.a();
            while (bVarA != null) {
                bVarA.j();
                bVarA = this.q.a();
            }
        }
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            ((b) this.o.valueAt(i)).j();
        }
        this.o.clear();
        this.y.set(0, 0, 0, 0);
        while (d.a() != null) {
        }
    }

    public final void a(int i, int i2) {
        this.C = i;
        this.D = i2;
    }

    public final void a(int i, int i2, float f) {
        if (this.t == i && this.u == i2 && this.v == f) {
            return;
        }
        this.t = i;
        this.u = i2;
        this.v = f;
        this.x = true;
    }

    public final void a(e eVar, int i) {
        if (this.f != eVar) {
            this.f = eVar;
            c();
            if (this.f == null) {
                this.b = 0;
                this.c = 0;
                this.f54a = 0;
                this.g = null;
            } else {
                this.b = this.f.b();
                this.c = this.f.c();
                this.g = this.f.e();
                this.e = this.f.a();
                if (this.g != null) {
                    this.f54a = Math.max(0, com.android.a.a.a.a(this.b / this.g.c()));
                } else {
                    int iMax = Math.max(this.b, this.c);
                    int i2 = this.e;
                    int i3 = 1;
                    while (i2 < iMax) {
                        i2 <<= 1;
                        i3++;
                    }
                    this.f54a = i3;
                }
            }
            this.x = true;
        }
        if (this.w != i) {
            this.w = i;
            this.x = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0340 A[Catch: all -> 0x03af, TryCatch #2 {all -> 0x03af, blocks: (B:19:0x0066, B:21:0x006c, B:22:0x0080, B:94:0x02be, B:95:0x02ca, B:97:0x02ce, B:98:0x02d3, B:100:0x0313, B:102:0x0319, B:104:0x0321, B:106:0x0327, B:113:0x03a9, B:119:0x03b6, B:121:0x03be, B:107:0x0336, B:112:0x03a4, B:109:0x0340, B:111:0x0346, B:122:0x03ca, B:124:0x03d0), top: B:133:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0346 A[Catch: all -> 0x03af, TryCatch #2 {all -> 0x03af, blocks: (B:19:0x0066, B:21:0x006c, B:22:0x0080, B:94:0x02be, B:95:0x02ca, B:97:0x02ce, B:98:0x02d3, B:100:0x0313, B:102:0x0319, B:104:0x0321, B:106:0x0327, B:113:0x03a9, B:119:0x03b6, B:121:0x03be, B:107:0x0336, B:112:0x03a4, B:109:0x0340, B:111:0x0346, B:122:0x03ca, B:124:0x03d0), top: B:133:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x03a4 A[SYNTHETIC] */
    public final boolean a(com.android.a.c.c cVar) {
        int i;
        if (this.C != 0 && this.D != 0 && this.x) {
            this.x = false;
            this.h = com.android.a.a.a.a(com.android.a.a.a.b(1.0f / this.v), 0, this.f54a);
            if (this.h != this.f54a) {
                Rect rect = this.y;
                a(rect, this.t, this.u, this.h, this.v, this.w);
                this.i = Math.round((this.C / 2.0f) + ((rect.left - this.t) * this.v));
                this.j = Math.round((this.D / 2.0f) + ((rect.top - this.u) * this.v));
                i = this.v * ((float) (1 << this.h)) > 0.75f ? this.h - 1 : this.h;
            } else {
                i = this.h - 2;
                this.i = Math.round((this.C / 2.0f) - (this.t * this.v));
                this.j = Math.round((this.D / 2.0f) - (this.u * this.v));
            }
            int iMax = Math.max(0, Math.min(i, this.f54a - 2));
            int iMin = Math.min(iMax + 2, this.f54a);
            Rect[] rectArr = this.z;
            for (int i2 = iMax; i2 < iMin; i2++) {
                a(rectArr[i2 - iMax], this.t, this.u, i2, 1.0f / (1 << (i2 + 1)), this.w);
            }
            if (this.w % 90 == 0) {
                synchronized (this.p) {
                    this.s.b();
                    this.r.b();
                    this.B = false;
                    int size = this.o.size();
                    int i3 = 0;
                    while (i3 < size) {
                        b bVar = (b) this.o.valueAt(i3);
                        int i4 = bVar.g;
                        if (i4 < iMax || i4 >= iMin || !rectArr[i4 - iMax].contains(bVar.e, bVar.f)) {
                            this.o.removeAt(i3);
                            i3--;
                            size--;
                            b(bVar);
                        }
                        size = size;
                        i3++;
                    }
                }
                for (int i5 = iMax; i5 < iMin; i5++) {
                    int i6 = this.e << i5;
                    Rect rect2 = rectArr[i5 - iMax];
                    int i7 = rect2.top;
                    int i8 = rect2.bottom;
                    for (int i9 = i7; i9 < i8; i9 += i6) {
                        int i10 = rect2.left;
                        int i11 = rect2.right;
                        for (int i12 = i10; i12 < i11; i12 += i6) {
                            long jC = c(i12, i9, i5);
                            b bVar2 = (b) this.o.get(jC);
                            if (bVar2 == null) {
                                this.o.put(jC, a(i12, i9, i5));
                            } else if (bVar2.j == 2) {
                                bVar2.j = 1;
                            }
                        }
                    }
                }
                this.E.postInvalidate();
            }
        }
        int i13 = 1;
        b bVarA = null;
        while (i13 > 0) {
            synchronized (this.p) {
                bVarA = this.r.a();
            }
            if (bVarA == null) {
                break;
            }
            if (!bVarA.n()) {
                if (bVarA.j == 8) {
                    bVarA.c(cVar);
                    i13--;
                } else {
                    Log.w("TiledImageRenderer", "Tile in upload queue has invalid state: " + bVarA.j);
                }
            }
        }
        if (bVarA != null) {
            this.E.postInvalidate();
        }
        this.k = 1;
        this.l = true;
        int i14 = this.h;
        int i15 = this.w;
        char c = i15 != 0 ? (char) 2 : (char) 0;
        if (c != 0) {
            cVar.a(2);
            if (i15 != 0) {
                int i16 = this.C / 2;
                int i17 = this.D / 2;
                cVar.a(i16, i17);
                cVar.a(i15, 0.0f, 0.0f, 1.0f);
                cVar.a(-i16, -i17);
            }
        }
        try {
            if (i14 != this.f54a) {
                int i18 = this.e << i14;
                float f = i18 * this.v;
                Rect rect3 = this.y;
                int i19 = rect3.top;
                int i20 = 0;
                while (i19 < rect3.bottom) {
                    float f2 = this.j + (i20 * f);
                    int i21 = rect3.left;
                    int i22 = 0;
                    while (i21 < rect3.right) {
                        float f3 = this.i + (i22 * f);
                        RectF rectF = this.m;
                        RectF rectF2 = this.n;
                        rectF2.set(f3, f2, f3 + f, f2 + f);
                        rectF.set(0.0f, 0.0f, this.e, this.e);
                        b bVarB = b(i21, i19, i14);
                        if (bVarB != null) {
                            if (!bVarB.n()) {
                                if (bVarB.j == 8) {
                                    if (this.k > 0) {
                                        this.k--;
                                        bVarB.c(cVar);
                                    } else {
                                        this.l = false;
                                    }
                                } else if (bVarB.j != 16) {
                                    this.l = false;
                                    a(bVarB);
                                }
                            }
                            if (!a(bVarB, cVar, rectF, rectF2)) {
                                if (this.g != null) {
                                    int i23 = this.e << i14;
                                    float fC = this.g.c() / this.b;
                                    float fD = this.g.d() / this.c;
                                    rectF.set(i21 * fC, i19 * fD, fC * (i21 + i23), (i23 + i19) * fD);
                                    cVar.a(this.g, rectF, rectF2);
                                }
                            }
                        } else if (this.g != null) {
                            int i24 = this.e << i14;
                            float fC2 = this.g.c() / this.b;
                            float fD2 = this.g.d() / this.c;
                            rectF.set(i21 * fC2, i19 * fD2, fC2 * (i21 + i24), (i24 + i19) * fD2);
                            cVar.a(this.g, rectF, rectF2);
                        }
                        i21 += i18;
                        i22++;
                    }
                    i19 += i18;
                    i20++;
                }
            } else if (this.g != null) {
                this.g.a(cVar, this.i, this.j, Math.round(this.b * this.v), Math.round(this.c * this.v));
            }
            if (c != 0) {
                cVar.b();
            }
            if (!this.l) {
                this.E.postInvalidate();
            } else if (!this.B) {
                d();
            }
            return this.l || this.g != null;
        } catch (Throwable th) {
            if (c != 0) {
                cVar.b();
            }
            throw th;
        }
    }
}
