package a.a.a.e;

import a.a.a.d.d;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();
    private final View c;
    private Runnable d;
    private int g;
    private int h;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f32a = new b();
    private final Interpolator b = new AccelerateInterpolator();
    private float[] e = {0.0f, 0.0f};
    private float[] f = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] i = {0.0f, 0.0f};
    private float[] j = {0.0f, 0.0f};
    private float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    public a(View view) {
        this.c = view;
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int i = (int) ((1575.0f * displayMetrics.density) + 0.5f);
        int i2 = (int) ((displayMetrics.density * 315.0f) + 0.5f);
        a(i, i);
        this.j[0] = i2 / 1000.0f;
        this.j[1] = i2 / 1000.0f;
        this.g = 1;
        this.f[0] = Float.MAX_VALUE;
        this.f[1] = Float.MAX_VALUE;
        this.e[0] = 0.2f;
        this.e[1] = 0.2f;
        this.i[0] = 0.001f;
        this.i[1] = 0.001f;
        this.h = r;
        c(500);
        d(500);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0040  */
    /* JADX WARN: Code duplicated, block: B:16:0x0051  */
    /* JADX WARN: Code duplicated, block: B:17:0x0057  */
    /* JADX WARN: Code duplicated, block: B:8:0x0031  */
    private float a(int i, float f, float f2, float f3) {
        float fB;
        float interpolation;
        float fB2 = b(this.e[i] * f2, 0.0f, this.f[i]);
        float fB3 = b(f2 - f, fB2) - b(f, fB2);
        if (fB3 >= 0.0f) {
            if (fB3 > 0.0f) {
                interpolation = this.b.getInterpolation(fB3);
            } else {
                fB = 0.0f;
            }
            if (fB == 0.0f) {
                return 0.0f;
            }
            float f4 = this.i[i];
            float f5 = this.j[i];
            float f6 = this.k[i];
            float f7 = f4 * f3;
            return fB > 0.0f ? b(fB * f7, f5, f6) : -b((-fB) * f7, f5, f6);
        }
        interpolation = -this.b.getInterpolation(-fB3);
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB == 0.0f) {
            return 0.0f;
        }
        float f8 = this.i[i];
        float f9 = this.j[i];
        float f10 = this.k[i];
        float f11 = f8 * f3;
        if (fB > 0.0f) {
        }
    }

    static /* synthetic */ int a(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        if (i < 0) {
            return 0;
        }
        return i;
    }

    static /* synthetic */ boolean a(a aVar, boolean z) {
        aVar.m = false;
        return false;
    }

    private float b(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        switch (this.g) {
            case 0:
            case 1:
                if (f >= f2) {
                    return 0.0f;
                }
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                return (this.o && this.g == 1) ? 1.0f : 0.0f;
            case 2:
                if (f < 0.0f) {
                    return f / (-f2);
                }
                return 0.0f;
            default:
                return 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float b(float f, float f2, float f3) {
        if (f > f3) {
            return f3;
        }
        return f < f2 ? f2 : f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        b bVar = this.f32a;
        int iF = bVar.f();
        int iE = bVar.e();
        if (iF != 0 && e(iF)) {
            return true;
        }
        if (iE != 0) {
        }
        return false;
    }

    static /* synthetic */ boolean b(a aVar, boolean z) {
        aVar.o = false;
        return false;
    }

    private void c() {
        if (this.m) {
            this.o = false;
        } else {
            this.f32a.b();
        }
    }

    static /* synthetic */ boolean c(a aVar, boolean z) {
        aVar.n = false;
        return false;
    }

    static /* synthetic */ void f(a aVar) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        aVar.c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public final a a(float f, float f2) {
        this.k[0] = f / 1000.0f;
        this.k[1] = f2 / 1000.0f;
        return this;
    }

    public final a a(int i) {
        this.g = 1;
        return this;
    }

    public final a a(boolean z) {
        if (this.p && !z) {
            c();
        }
        this.p = z;
        return this;
    }

    public abstract void a(int i, int i2);

    public final boolean a() {
        return this.p;
    }

    public final a b(int i) {
        this.h = i;
        return this;
    }

    public final a b(boolean z) {
        this.q = true;
        return this;
    }

    public final a c(int i) {
        this.f32a.a(i);
        return this;
    }

    public final a d(int i) {
        this.f32a.b(i);
        return this;
    }

    public abstract boolean e(int i);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0057  */
    /* JADX WARN: Code duplicated, block: B:26:0x0077  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        byte b = 0;
        if (!this.p) {
            return false;
        }
        switch (a.a.a.d.a.a(motionEvent)) {
            case 0:
                this.n = true;
                this.l = false;
                this.f32a.a(a(0, motionEvent.getX(), view.getWidth(), this.c.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.c.getHeight()));
                if (!this.o && b()) {
                    if (this.d == null) {
                        this.d = new c(this, b);
                    }
                    this.o = true;
                    this.m = true;
                    if (!this.l || this.h <= 0) {
                        this.d.run();
                    } else {
                        d.a(this.c, this.d, this.h);
                    }
                    this.l = true;
                }
                break;
            case 1:
            case 3:
                c();
                break;
            case 2:
                this.f32a.a(a(0, motionEvent.getX(), view.getWidth(), this.c.getWidth()), a(1, motionEvent.getY(), view.getHeight(), this.c.getHeight()));
                if (!this.o) {
                    if (this.d == null) {
                        this.d = new c(this, b);
                    }
                    this.o = true;
                    this.m = true;
                    if (this.l) {
                        this.d.run();
                    } else {
                        this.d.run();
                    }
                    this.l = true;
                }
                break;
        }
        return this.q && this.o;
    }
}
