package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.ComponentName;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.IBinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.android.launcher3.ap, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0021ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f156a = 0;
    public static int b = 1;
    private int B;
    private VelocityTracker C;
    private Launcher c;
    private Handler d;
    private boolean g;
    private int h;
    private int i;
    private int j;
    private aH k;
    private aF n;
    private IBinder o;
    private View p;
    private View q;
    private InterfaceC0030ay r;
    private aF u;
    private InputMethodManager v;
    private Rect e = new Rect();
    private final int[] f = new int[2];
    private ArrayList l = new ArrayList();
    private ArrayList m = new ArrayList();
    private int s = 0;
    private RunnableC0023ar t = new RunnableC0023ar(this);
    private int[] w = new int[2];
    private long x = -1;
    private int y = 0;
    private int[] z = new int[2];
    private Rect A = new Rect();

    public C0021ap(Launcher launcher) {
        Resources resources = launcher.getResources();
        this.c = launcher;
        this.d = new Handler();
        this.j = resources.getDimensionPixelSize(R.dimen.scroll_zone);
        this.C = VelocityTracker.obtain();
        this.B = (int) (resources.getInteger(R.integer.config_flingToDeleteMinVelocity) * resources.getDisplayMetrics().density);
    }

    private PointF a(InterfaceC0031az interfaceC0031az) {
        if (this.n == null) {
            return null;
        }
        this.C.computeCurrentVelocity(1000, ViewConfiguration.get(this.c).getScaledMaximumFlingVelocity());
        if (this.C.getYVelocity() >= this.B) {
            return null;
        }
        PointF pointF = new PointF(this.C.getXVelocity(), this.C.getYVelocity());
        PointF pointF2 = new PointF(0.0f, -1.0f);
        if (((float) Math.acos(((pointF.x * pointF2.x) + (pointF.y * pointF2.y)) / (pointF2.length() * pointF.length()))) <= Math.toRadians(35.0d)) {
            return pointF;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private aF a(int i, int i2, int[] iArr) {
        Rect rect = this.e;
        ArrayList arrayList = this.l;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            aF aFVar = (aF) arrayList.get(size);
            if (aFVar.b()) {
                aFVar.a(rect);
                this.k.f126a = i;
                this.k.b = i2;
                if (rect.contains(i, i2)) {
                    iArr[0] = i;
                    iArr[1] = i2;
                    this.c.g().c((View) aFVar, iArr);
                    return aFVar;
                }
            }
        }
        return null;
    }

    private void a(int i, int i2) {
        this.k.f.b(i, i2);
        int[] iArr = this.f;
        aF aFVarA = a(i, i2, iArr);
        this.k.f126a = iArr[0];
        this.k.b = iArr[1];
        d(aFVarA);
        this.y = (int) (((double) this.y) + Math.sqrt(Math.pow(this.w[0] - i, 2.0d) + Math.pow(this.w[1] - i2, 2.0d)));
        this.w[0] = i;
        this.w[1] = i2;
        b(i, i2);
    }

    private void a(PointF pointF) {
        boolean z;
        int[] iArr = this.f;
        this.k.f126a = iArr[0];
        this.k.b = iArr[1];
        if (this.u != null && this.n != this.u) {
            this.u.e(this.k);
        }
        this.n.c(this.k);
        this.k.e = true;
        this.n.e(this.k);
        if (this.n.a(this.k)) {
            aF aFVar = this.n;
            aH aHVar = this.k;
            int i = this.k.f126a;
            int i2 = this.k.b;
            aFVar.a(aHVar, pointF);
            z = true;
        } else {
            z = false;
        }
        this.k.h.a((View) this.n, this.k, true, z);
    }

    static void a(aH aHVar) {
        aHVar.h.g();
    }

    private int[] a(float f, float f2) {
        this.c.g().getLocalVisibleRect(this.A);
        this.z[0] = (int) Math.max(this.A.left, Math.min(f, this.A.right - 1));
        this.z[1] = (int) Math.max(this.A.top, Math.min(f2, this.A.bottom - 1));
        return this.z;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    /* JADX WARN: Multi-variable type inference failed */
    private void b(float f, float f2) {
        boolean z = true;
        int[] iArr = this.f;
        aF aFVarA = a((int) f, (int) f2, iArr);
        this.k.f126a = iArr[0];
        this.k.b = iArr[1];
        if (aFVarA != 0) {
            this.k.e = true;
            aFVarA.e(this.k);
            if (aFVarA.a(this.k)) {
                aFVarA.b(this.k);
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        this.k.h.a((View) aFVarA, this.k, false, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2) {
        int i3 = this.y < ViewConfiguration.get(this.c).getScaledWindowTouchSlop() ? 900 : 500;
        DragLayer dragLayerG = this.c.g();
        boolean z = dragLayerG.getLayoutDirection() == 1;
        int i4 = z ? 1 : 0;
        int i5 = z ? 0 : 1;
        if (i < this.j) {
            if (this.s == 0) {
                this.s = 1;
                if (this.r.a(i, i2, i4)) {
                    dragLayerG.d();
                    this.t.a(i4);
                    this.d.postDelayed(this.t, i3);
                    return;
                }
                return;
            }
            return;
        }
        if (i <= this.p.getWidth() - this.j) {
            h();
            return;
        }
        if (this.s == 0) {
            this.s = 1;
            if (this.r.a(i, i2, i5)) {
                dragLayerG.d();
                this.t.a(i5);
                this.d.postDelayed(this.t, i3);
            }
        }
    }

    private void c(MotionEvent motionEvent) {
        if (this.C == null) {
            this.C = VelocityTracker.obtain();
        }
        this.C.addMovement(motionEvent);
    }

    private void d(aF aFVar) {
        if (aFVar != null) {
            if (this.u != aFVar) {
                if (this.u != null) {
                    this.u.e(this.k);
                }
                aFVar.c(this.k);
            }
            aFVar.d(this.k);
        } else if (this.u != null) {
            this.u.e(this.k);
        }
        this.u = aFVar;
    }

    private void g() {
        boolean z = false;
        if (this.g) {
            this.g = false;
            h();
            if (this.k.f != null) {
                z = this.k.k;
                if (!z) {
                    this.k.f.j();
                }
                this.k.f = null;
            }
            if (!z) {
                Iterator it = this.m.iterator();
                while (it.hasNext()) {
                    ((InterfaceC0022aq) it.next()).c();
                }
            }
        }
        if (this.C != null) {
            this.C.recycle();
            this.C = null;
        }
    }

    private void h() {
        this.d.removeCallbacks(this.t);
        if (this.s == 1) {
            this.s = 0;
            this.t.a(1);
            this.r.e();
            this.c.g().e();
        }
    }

    public final aA a(Bitmap bitmap, int i, int i2, InterfaceC0031az interfaceC0031az, Object obj, int i3, Point point, Rect rect, float f) {
        if (this.v == null) {
            this.v = (InputMethodManager) this.c.getSystemService("input_method");
        }
        this.v.hideSoftInputFromWindow(this.o, 0);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((InterfaceC0022aq) it.next()).a(interfaceC0031az, obj);
        }
        int i4 = this.h - i;
        int i5 = this.i - i2;
        int i6 = rect == null ? 0 : rect.left;
        int i7 = rect == null ? 0 : rect.top;
        this.g = true;
        this.k = new aH();
        this.k.e = false;
        this.k.c = this.h - (i6 + i);
        this.k.d = this.i - (i7 + i2);
        this.k.h = interfaceC0031az;
        this.k.g = obj;
        aH aHVar = this.k;
        aA aAVar = new aA(this.c, bitmap, i4, i5, 0, 0, bitmap.getWidth(), bitmap.getHeight(), f);
        aHVar.f = aAVar;
        if (point != null) {
            aAVar.a(new Point(point));
        }
        if (rect != null) {
            aAVar.a(new Rect(rect));
        }
        this.c.g().performHapticFeedback(0);
        aAVar.a(this.h, this.i);
        a(this.h, this.i);
        return aAVar;
    }

    public final void a(IBinder iBinder) {
        this.o = iBinder;
    }

    final void a(View view) {
        this.q = view;
    }

    public final void a(View view, Bitmap bitmap, InterfaceC0031az interfaceC0031az, Object obj, int i, Point point, float f) {
        int[] iArr = this.f;
        this.c.g().a(view, iArr);
        a(bitmap, ((int) (((bitmap.getWidth() * f) - bitmap.getWidth()) / 2.0f)) + (point != null ? point.x : 0) + iArr[0] + view.getPaddingLeft(), (point != null ? point.y : 0) + iArr[1] + view.getPaddingTop() + ((int) (((bitmap.getHeight() * f) - bitmap.getHeight()) / 2.0f)), interfaceC0031az, obj, i, null, null, f);
        if (i == 0) {
            view.setVisibility(8);
        }
    }

    final void a(aA aAVar) {
        aAVar.j();
        if (this.k.k) {
            Iterator it = this.m.iterator();
            while (it.hasNext()) {
                ((InterfaceC0022aq) it.next()).c();
            }
        }
    }

    public final void a(aF aFVar) {
        this.l.add(aFVar);
    }

    public final void a(InterfaceC0022aq interfaceC0022aq) {
        this.m.add(interfaceC0022aq);
    }

    public final void a(InterfaceC0030ay interfaceC0030ay) {
        this.r = interfaceC0030ay;
    }

    public final void a(ArrayList arrayList, ArrayList arrayList2) {
        if (this.k != null) {
            Object obj = this.k.g;
            if (obj instanceof C0137ey) {
                C0137ey c0137ey = (C0137ey) obj;
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    C0086d c0086d = (C0086d) it.next();
                    if (c0137ey != null && c0137ey.f343a != null && c0086d != null) {
                        ComponentName component = c0137ey.f343a.getComponent();
                        if (component.equals(c0086d.d) || arrayList.contains(component.getPackageName())) {
                            c();
                            return;
                        }
                    }
                }
            }
        }
    }

    public final boolean a() {
        return this.g;
    }

    public final boolean a(MotionEvent motionEvent) {
        c(motionEvent);
        int action = motionEvent.getAction();
        int[] iArrA = a(motionEvent.getX(), motionEvent.getY());
        int i = iArrA[0];
        int i2 = iArrA[1];
        switch (action) {
            case 0:
                this.h = i;
                this.i = i2;
                this.u = null;
                break;
            case 1:
                this.x = System.currentTimeMillis();
                if (this.g) {
                    PointF pointFA = DeleteDropTarget.a(this.k.g) ? a(this.k.h) : null;
                    if (pointFA != null) {
                        a(pointFA);
                    } else {
                        b(i, i2);
                    }
                }
                g();
                break;
            case 3:
                c();
                break;
        }
        return this.g;
    }

    public final boolean a(View view, int i) {
        return this.q != null && this.q.dispatchUnhandledMove(view, i);
    }

    public final void b(View view) {
        this.p = view;
    }

    public final void b(aF aFVar) {
        this.l.remove(aFVar);
    }

    public final boolean b() {
        return this.g;
    }

    public final boolean b(MotionEvent motionEvent) {
        if (!this.g) {
            return false;
        }
        c(motionEvent);
        int action = motionEvent.getAction();
        int[] iArrA = a(motionEvent.getX(), motionEvent.getY());
        int i = iArrA[0];
        int i2 = iArrA[1];
        switch (action) {
            case 0:
                this.h = i;
                this.i = i2;
                if (i < this.j || i > this.p.getWidth() - this.j) {
                    this.s = 1;
                    this.d.postDelayed(this.t, 500L);
                } else {
                    this.s = 0;
                }
                a(i, i2);
                break;
            case 1:
                a(i, i2);
                this.d.removeCallbacks(this.t);
                if (this.g) {
                    PointF pointFA = a(this.k.h);
                    if (!DeleteDropTarget.a(this.k.g)) {
                        pointFA = null;
                    }
                    if (pointFA != null) {
                        a(pointFA);
                    } else {
                        b(i, i2);
                    }
                }
                g();
                break;
            case 2:
                a(i, i2);
                break;
            case 3:
                this.d.removeCallbacks(this.t);
                c();
                break;
        }
        return true;
    }

    public final void c() {
        if (this.g) {
            if (this.u != null) {
                this.u.e(this.k);
            }
            this.k.k = false;
            this.k.j = true;
            this.k.e = true;
            this.k.h.a(null, this.k, false, false);
        }
        g();
    }

    public final void c(aF aFVar) {
        this.n = aFVar;
    }

    final long d() {
        return this.g ? System.currentTimeMillis() : this.x;
    }

    final void e() {
        this.x = -1L;
    }

    public final void f() {
        int[] iArr = this.f;
        aF aFVarA = a(this.w[0], this.w[1], iArr);
        this.k.f126a = iArr[0];
        this.k.b = iArr[1];
        d(aFVarA);
    }
}
