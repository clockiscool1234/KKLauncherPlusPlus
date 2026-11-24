package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class dX extends ViewGroup implements ViewGroup.OnHierarchyChangeListener {
    protected int[] A;
    protected boolean B;
    protected int C;
    protected int D;
    protected ArrayList E;
    protected boolean F;
    protected boolean G;
    protected boolean H;
    protected boolean I;
    protected boolean J;
    protected boolean K;
    protected int L;
    protected View M;
    protected final Rect N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private Interpolator S;
    private VelocityTracker T;
    private int U;
    private float V;
    private float W;
    private float Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f276a;
    private int aA;
    private int aB;
    private Runnable aC;
    private Matrix aD;
    private float[] aE;
    private int[] aF;
    private Rect aG;
    private Rect aH;
    private int aI;
    private boolean aJ;
    private int aK;
    private int aL;
    private float aa;
    private float ab;
    private float ac;
    private float ad;
    private float ae;
    private int af;
    private boolean ag;
    private int[] ah;
    private boolean ai;
    private int aj;
    private int ak;
    private boolean al;
    private boolean am;
    private boolean an;
    private int ao;
    private PageIndicator ap;
    private boolean aq;
    private Rect ar;
    private int as;
    private int at;
    private float au;
    private boolean av;
    private Runnable aw;
    private int ax;
    private boolean ay;
    private boolean az;
    private int b;
    private int c;
    protected int d;
    protected float e;
    protected float f;
    protected float g;
    protected boolean h;
    protected int i;
    protected int j;
    protected int k;
    protected int l;
    protected dD m;
    protected float n;
    protected float o;
    protected int p;
    protected View.OnLongClickListener q;
    protected int r;
    protected int s;
    protected int t;
    protected int u;
    protected int v;
    protected int w;
    protected int x;
    protected boolean y;
    protected int z;

    public dX(Context context) {
        this(context, null);
    }

    public dX(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public dX(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f276a = false;
        this.b = -1;
        this.c = -1;
        this.h = true;
        this.j = -1001;
        this.k = -1;
        this.U = 0;
        this.af = -1;
        this.p = 0;
        this.ai = false;
        this.w = 0;
        this.x = 0;
        this.al = true;
        this.A = new int[2];
        this.D = -1;
        this.F = true;
        this.G = false;
        this.H = true;
        this.I = false;
        this.am = false;
        this.J = false;
        this.an = false;
        this.K = true;
        this.aq = true;
        this.ar = new Rect();
        this.as = 200;
        this.L = 300;
        this.at = 80;
        this.au = 1.0f;
        this.av = false;
        this.ax = -1;
        this.ay = false;
        this.aA = 2;
        this.aD = new Matrix();
        this.aE = new float[2];
        this.aF = new int[2];
        this.aG = new Rect();
        this.aH = new Rect();
        this.aI = -1400;
        this.aJ = false;
        this.aK = 250;
        this.aL = 350;
        this.N = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.j, i, 0);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.ao = typedArrayObtainStyledAttributes.getResourceId(6, -1);
        typedArrayObtainStyledAttributes.recycle();
        setHapticFeedbackEnabled(false);
        a();
    }

    public static void R() {
    }

    public static void S() {
    }

    private void a(int i) {
        if (this.ap == null || c(false)) {
            return;
        }
        this.ap.a(i, this.aq);
    }

    private void a(int i, int i2, int i3, boolean z, TimeInterpolator timeInterpolator) {
        int iAbs;
        this.k = i;
        View focusedChild = getFocusedChild();
        if (focusedChild != null && i != this.i && focusedChild == c(this.i)) {
            focusedChild.clearFocus();
        }
        h();
        f();
        awakenScrollBars(i3);
        if (z) {
            iAbs = 0;
        } else {
            iAbs = i3 == 0 ? Math.abs(i2) : i3;
        }
        if (!this.m.a()) {
            a(false);
        }
        if (timeInterpolator != null) {
            this.m.a(timeInterpolator);
        } else {
            this.m.a(this.S);
        }
        this.m.a(this.z, 0, i2, 0, iAbs);
        e();
        if (z) {
            computeScroll();
        }
        this.am = true;
        this.ai = true;
        invalidate();
    }

    private void a(int i, int i2, boolean z, TimeInterpolator timeInterpolator) {
        int iMax = Math.max(0, Math.min(i, getChildCount() - 1));
        a(iMax, m(iMax) - this.z, i2, z, timeInterpolator);
    }

    private void a(MotionEvent motionEvent) {
        if (this.T == null) {
            this.T = VelocityTracker.obtain();
        }
        this.T.addMovement(motionEvent);
    }

    private void a(boolean z) {
        this.m.f();
        if (z) {
            this.k = -1;
        }
    }

    private float[] a(View view, float f, float f2) {
        this.aE[0] = f;
        this.aE[1] = f2;
        view.getMatrix().mapPoints(this.aE);
        float[] fArr = this.aE;
        fArr[0] = fArr[0] + view.getLeft();
        float[] fArr2 = this.aE;
        fArr2[1] = fArr2[1] + view.getTop();
        return this.aE;
    }

    private void b() {
        if (this.M != null) {
            float scrollX = (this.n - this.Z) + (getScrollX() - this.ab) + (this.ac - this.M.getLeft());
            float f = this.o - this.aa;
            this.M.setTranslationX(scrollX);
            this.M.setTranslationY(f);
        }
    }

    private void b(boolean z) {
        this.f276a = z;
        if (this.f276a) {
            j();
            a(this.A);
            if (this.i < this.A[0]) {
                i(this.A[0]);
            } else if (this.i > this.A[1]) {
                i(this.A[1]);
            }
        }
        this.al = z ? false : true;
    }

    private float[] b(View view, float f, float f2) {
        this.aE[0] = f - view.getLeft();
        this.aE[1] = f2 - view.getTop();
        view.getMatrix().invert(this.aD);
        this.aD.mapPoints(this.aE);
        return this.aE;
    }

    private void c() {
        this.m.a(true);
        this.k = -1;
    }

    private void c(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() >> 8) & 255;
        if (motionEvent.getPointerId(action) == this.D) {
            int i = action == 0 ? 1 : 0;
            float x = motionEvent.getX(i);
            this.Z = x;
            this.n = x;
            this.o = motionEvent.getY(i);
            this.ad = 0.0f;
            this.D = motionEvent.getPointerId(i);
            if (this.T != null) {
                this.T.clear();
            }
        }
    }

    private boolean c(int i, int i2) {
        this.aG.set(this.ar.left - (this.ar.width() / 2), this.ar.top, this.ar.right + (this.ar.width() / 2), this.ar.bottom);
        return this.aG.contains(i, i2);
    }

    private boolean c(boolean z) {
        boolean z2 = this.az;
        if (z) {
            return (this.p == 4) & z2;
        }
        return z2;
    }

    private void e() {
        if (this.ap == null || c(false)) {
            return;
        }
        this.ap.a(D());
    }

    private void f() {
        if (this.J) {
            return;
        }
        this.J = true;
        J();
    }

    private void g() {
        if (this.J) {
            this.J = false;
            o();
        }
    }

    private void h() {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(4096);
            accessibilityEventObtain.setItemCount(getChildCount());
            accessibilityEventObtain.setFromIndex(this.i);
            accessibilityEventObtain.setToIndex(D());
            accessibilityEventObtain.setAction(D() >= this.i ? 4096 : 8192);
            sendAccessibilityEventUnchecked(accessibilityEventObtain);
        }
    }

    private static C0115ec i() {
        return new C0115ec(-2, -2);
    }

    private void j() {
        a(this.A);
        if (z()) {
            this.b = m(this.A[1]);
            this.c = m(this.A[0]);
        } else {
            this.b = m(this.A[0]);
            this.c = m(this.A[1]);
        }
    }

    private void k() {
        l();
        if (this.ay) {
            this.ay = false;
            RunnableC0113ea runnableC0113ea = new RunnableC0113ea(this);
            if (!this.aJ) {
                this.aC = new RunnableC0114eb(this, runnableC0113ea);
                this.aB = this.aA;
                b(indexOfChild(this.M), 0);
                if (this.M != null) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.setDuration(this.as);
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.M, "translationX", 0.0f), ObjectAnimator.ofFloat(this.M, "translationY", 0.0f), ObjectAnimator.ofFloat(this.M, "scaleX", 1.0f), ObjectAnimator.ofFloat(this.M, "scaleY", 1.0f));
                    animatorSet.addListener(new dZ(this));
                    animatorSet.start();
                }
            }
        }
        this.ag = false;
        this.p = 0;
        this.D = -1;
    }

    private void l() {
        if (this.T != null) {
            this.T.clear();
            this.T.recycle();
            this.T = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.aB--;
        if (this.aC == null || this.aB != 0) {
            return;
        }
        this.aC.run();
        this.aC = null;
    }

    protected final void A() {
        this.an = true;
    }

    protected final boolean B() {
        return this.an;
    }

    final int C() {
        return this.i;
    }

    final int D() {
        return this.k != -1 ? this.k : this.i;
    }

    protected final void E() {
        int iM = (this.i < 0 || this.i >= getChildCount()) ? 0 : m(this.i);
        scrollTo(iM, 0);
        this.m.a(iM);
        c();
    }

    final void F() {
        this.i = D();
        H();
        c();
    }

    final int G() {
        return this.j;
    }

    protected void H() {
        e();
    }

    protected final boolean I() {
        return this.J;
    }

    protected void J() {
    }

    protected final boolean K() {
        if (this.m.e()) {
            if (getScrollX() != this.m.b() || getScrollY() != this.m.c() || this.C != this.m.b()) {
                scrollTo((int) ((1.0f / (this.f276a ? getScaleX() : 1.0f)) * this.m.b()), this.m.c());
            }
            invalidate();
            return true;
        }
        if (this.k == -1) {
            return false;
        }
        h();
        this.i = Math.max(0, Math.min(this.k, getChildCount() - 1));
        this.k = -1;
        H();
        if (this.am) {
            b(this.i, false);
            this.am = false;
        }
        if (this.p == 0) {
            g();
        }
        n();
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            announceForAccessibility(t());
        }
        return true;
    }

    public final int L() {
        return this.Q;
    }

    protected final void M() {
        this.aq = true;
    }

    protected final void N() {
        this.aq = false;
    }

    protected final void O() {
        View viewC;
        if (!this.K || (viewC = c(this.i)) == null) {
            return;
        }
        viewC.cancelLongPress();
    }

    protected final void P() {
        b(true);
    }

    protected final void Q() {
        b(false);
    }

    final int T() {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        int iX = x() + getScrollX() + (this.ar.width() / 2);
        int childCount = getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            int iAbs = Math.abs(((c(i3).getMeasuredWidth() / 2) + (x() + l(i3))) - iX);
            if (iAbs < i) {
                i2 = i3;
            } else {
                iAbs = i;
            }
            i3++;
            i = iAbs;
        }
        return i2;
    }

    protected void U() {
        b(T(), 750);
    }

    public final boolean V() {
        return this.K;
    }

    protected final void W() {
        c(-1, false);
    }

    protected void X() {
        this.p = 4;
        this.az = true;
        invalidate();
    }

    protected void Y() {
        this.az = false;
    }

    protected final float a(int i, View view, int i2) {
        int iWidth = i - ((this.ar.width() / 2) + m(i2));
        int childCount = getChildCount();
        int i3 = i2 + 1;
        if ((iWidth < 0 && !z()) || (iWidth > 0 && z())) {
            i3 = i2 - 1;
        }
        return Math.max(Math.min(iWidth / ((i3 < 0 || i3 > childCount + (-1)) ? view.getMeasuredWidth() + this.U : Math.abs(m(i3) - m(i2))), 1.0f), -1.0f);
    }

    protected void a() {
        this.E = new ArrayList();
        this.E.ensureCapacity(32);
        this.m = new dD(getContext());
        a(new InterpolatorC0116ed());
        this.i = 0;
        this.y = true;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.r = viewConfiguration.getScaledPagingTouchSlop();
        this.aj = viewConfiguration.getScaledPagingTouchSlop();
        this.ak = viewConfiguration.getScaledMaximumFlingVelocity();
        this.e = getResources().getDisplayMetrics().density;
        this.aI = (int) (this.aI * this.e);
        this.d = (int) (500.0f * this.e);
        this.O = (int) (250.0f * this.e);
        this.P = (int) (1500.0f * this.e);
        setOnHierarchyChangeListener(this);
    }

    protected void a(float f) {
        int iWidth = this.ar.width();
        float f2 = f / iWidth;
        if (f2 != 0.0f) {
            float fAbs = f2 / Math.abs(f2);
            float fAbs2 = Math.abs(f2) - 1.0f;
            float fAbs3 = ((fAbs2 * fAbs2 * fAbs2) + 1.0f) * fAbs;
            if (Math.abs(fAbs3) >= 1.0f) {
                fAbs3 /= Math.abs(fAbs3);
            }
            int iRound = Math.round(fAbs3 * 0.14f * iWidth);
            if (f < 0.0f) {
                this.C = iRound;
                super.scrollTo(0, getScrollY());
            } else {
                this.C = iRound + this.l;
                super.scrollTo(this.l, getScrollY());
            }
            invalidate();
        }
    }

    protected void a(int i, int i2) {
        int iMax = Math.max(0, Math.min(i, getChildCount() - 1));
        int iWidth = this.ar.width() / 2;
        int iM = m(iMax) - this.z;
        if (Math.abs(i2) < this.O) {
            b(iMax, 750);
            return;
        }
        a_(iMax, iM, Math.round(Math.abs(((iWidth * ((float) Math.sin((float) (((double) (Math.min(1.0f, (Math.abs(iM) * 1.0f) / (iWidth * 2)) - 0.5f)) * 0.4712389167638204d)))) + iWidth) / Math.max(this.P, Math.abs(i2))) * 1000.0f) * 4);
    }

    protected final void a(int i, int i2, TimeInterpolator timeInterpolator) {
        a(i, i2, false, timeInterpolator);
    }

    public abstract void a(int i, boolean z);

    protected final void a(MotionEvent motionEvent, float f) {
        int iFindPointerIndex = motionEvent.findPointerIndex(this.D);
        if (iFindPointerIndex == -1) {
            return;
        }
        float x = motionEvent.getX(iFindPointerIndex);
        float y = motionEvent.getY(iFindPointerIndex);
        if (c((int) x, (int) y)) {
            int iAbs = (int) Math.abs(x - this.n);
            int iAbs2 = (int) Math.abs(y - this.o);
            int iRound = Math.round(this.r * f);
            boolean z = iAbs > this.aj;
            boolean z2 = iAbs > iRound;
            boolean z3 = iAbs2 > iRound;
            if (z2 || z || z3) {
                if (this.H) {
                    if (!z) {
                        return;
                    }
                } else if (!z2) {
                    return;
                }
                this.p = 1;
                this.ae += Math.abs(this.n - x);
                this.n = x;
                this.ad = 0.0f;
                this.g = x() + getScrollX();
                this.f = System.nanoTime() / 1.0E9f;
                f();
            }
        }
    }

    protected final void a(Interpolator interpolator) {
        this.S = interpolator;
        this.m.a(this.S);
    }

    protected void a(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = Math.max(0, getChildCount() - 1);
    }

    protected void a_(int i, int i2, int i3) {
        a(i, i2, i3, false, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i, int i2) {
        if (this.i >= 0 && this.i < getChildCount()) {
            c(this.i).addFocusables(arrayList, i, i2);
        }
        if (i == 17) {
            if (this.i > 0) {
                c(this.i - 1).addFocusables(arrayList, i, i2);
            }
        } else {
            if (i != 66 || this.i >= getChildCount() - 1) {
                return;
            }
            c(this.i + 1).addFocusables(arrayList, i, i2);
        }
    }

    public final void b(float f) {
        this.au = f;
        this.av = true;
        requestLayout();
    }

    protected final void b(int i, int i2) {
        a(i, i2, false, null);
    }

    protected final void b(int i, boolean z) {
        int childCount;
        if (!this.F || i >= (childCount = getChildCount())) {
            return;
        }
        int iF = f(i);
        int iG = g(i);
        for (int i2 = 0; i2 < childCount; i2++) {
            dV dVVar = (dV) c(i2);
            if (i2 < iF || i2 > iG) {
                if (dVVar.b() > 0) {
                    dVVar.a();
                }
                this.E.set(i2, true);
            }
        }
        int i3 = 0;
        while (i3 < childCount) {
            if ((i3 == i || !z) && iF <= i3 && i3 <= iG && ((Boolean) this.E.get(i3)).booleanValue()) {
                a(i3, i3 == i && z);
                this.E.set(i3, false);
            }
            i3++;
        }
    }

    protected void b(MotionEvent motionEvent) {
        a(motionEvent, 1.0f);
    }

    protected final void b(int[] iArr) {
        int childCount = getChildCount();
        int[] iArr2 = this.aF;
        this.aF[1] = 0;
        iArr2[0] = 0;
        iArr[0] = -1;
        iArr[1] = -1;
        if (childCount <= 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int iWidth = this.ar.width();
        int childCount2 = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount2; i2++) {
            View viewC = c(i2);
            this.aF[0] = 0;
            eI.a(viewC, this, this.aF, false);
            if (this.aF[0] <= iWidth) {
                this.aF[0] = viewC.getMeasuredWidth();
                eI.a(viewC, this, this.aF, false);
                if (this.aF[0] < 0) {
                    if (iArr[0] != -1) {
                        break;
                    }
                } else {
                    if (iArr[0] < 0) {
                        iArr[0] = i2;
                    }
                    i = i2;
                }
            } else {
                if (iArr[0] != -1) {
                    break;
                }
            }
        }
        iArr[1] = i;
    }

    View c(int i) {
        return getChildAt(i);
    }

    protected final void c(float f) {
        int iWidth = this.ar.width();
        float fAbs = 2.0f * (f / iWidth);
        if (fAbs == 0.0f) {
            return;
        }
        if (Math.abs(fAbs) >= 1.0f) {
            fAbs /= Math.abs(fAbs);
        }
        int iRound = Math.round(fAbs * iWidth);
        if (f < 0.0f) {
            this.C = iRound;
            super.scrollTo(0, getScrollY());
        } else {
            this.C = iRound + this.l;
            super.scrollTo(this.l, getScrollY());
        }
        invalidate();
    }

    protected final void c(int i, boolean z) {
        if (this.an) {
            if (this.F) {
                c();
                m();
                measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                if (i >= 0) {
                    i(Math.min(getChildCount() - 1, i));
                }
                int childCount = getChildCount();
                this.E.clear();
                for (int i2 = 0; i2 < childCount; i2++) {
                    this.E.add(true);
                }
                b(this.i, z);
                requestLayout();
            }
            if (this.J) {
                U();
            }
        }
    }

    public final void c(View view) {
        C0115ec c0115ecI = i();
        c0115ecI.f329a = true;
        super.addView(view, 0, c0115ecI);
    }

    @Override // android.view.View
    public void computeScroll() {
        K();
    }

    protected int d(int i) {
        return i;
    }

    public void d() {
        if (D() < getChildCount() - 1) {
            o(D() + 1);
        }
    }

    protected boolean d(View view) {
        return view.getAlpha() > 0.0f && view.getVisibility() == 0;
    }

    public void d_() {
        if (D() > 0) {
            o(D() - 1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int childCount = getChildCount();
        if (childCount > 0) {
            int iWidth = (this.ar.width() / 2) + this.C;
            if (iWidth != this.af || this.ai) {
                this.ai = false;
                e(iWidth);
                this.af = iWidth;
            }
            b(this.A);
            int i = this.A[0];
            int i2 = this.A[1];
            if (i == -1 || i2 == -1) {
                return;
            }
            long drawingTime = getDrawingTime();
            canvas.save();
            canvas.clipRect(getScrollX(), getScrollY(), (getScrollX() + getRight()) - getLeft(), (getScrollY() + getBottom()) - getTop());
            for (int i3 = childCount - 1; i3 >= 0; i3--) {
                View viewC = c(i3);
                if (viewC != this.M && (this.B || (i <= i3 && i3 <= i2 && d(viewC)))) {
                    drawChild(canvas, viewC, drawingTime);
                }
            }
            if (this.M != null) {
                drawChild(canvas, this.M, drawingTime);
            }
            this.B = false;
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (i == 17) {
            if (this.i > 0) {
                o(this.i - 1);
                return true;
            }
        } else if (i == 66 && this.i < getChildCount() - 1) {
            o(this.i + 1);
            return true;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    public final int e(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (parent == c(i)) {
                    return i;
                }
            }
        }
        return -1;
    }

    protected void e(int i) {
        if (this.C >= 0) {
            int i2 = this.C;
            int i3 = this.l;
        }
    }

    protected int f(int i) {
        return Math.max(0, i - 1);
    }

    public final boolean f(View view) {
        int iIndexOfChild = indexOfChild(view);
        if (this.p != 0) {
            return false;
        }
        this.A[0] = 0;
        this.A[1] = getChildCount() - 1;
        a(this.A);
        this.ay = true;
        if (this.A[0] > iIndexOfChild || iIndexOfChild > this.A[1]) {
            return false;
        }
        this.M = getChildAt(iIndexOfChild);
        this.M.animate().scaleX(1.15f).scaleY(1.15f).setDuration(100L).start();
        this.ac = this.M.getLeft();
        o(T());
        b(false);
        X();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void focusableViewAvailable(View view) {
        View viewC = c(this.i);
        for (View view2 = view; view2 != viewC; view2 = (View) view2.getParent()) {
            if (view2 == this || !(view2.getParent() instanceof View)) {
                return;
            }
        }
        super.focusableViewAvailable(view);
    }

    protected int g(int i) {
        return Math.min(i + 1, getChildCount() - 1);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return i();
    }

    protected dW h(int i) {
        return new dW();
    }

    final void i(int i) {
        Log.d("KLP", "setCurrentPage " + i);
        if (!this.m.a()) {
            a(true);
        }
        if (getChildCount() == 0) {
            return;
        }
        this.ai = true;
        this.i = Math.max(0, Math.min(i, getChildCount() - 1));
        E();
        H();
        invalidate();
    }

    final void j(int i) {
        this.j = i;
    }

    public final void k(int i) {
        this.U = i;
        requestLayout();
    }

    protected final int l(int i) {
        if (i < 0 || i > getChildCount() - 1) {
            return 0;
        }
        return c(i).getLeft() - x();
    }

    public final int m(int i) {
        if (this.ah == null || i >= this.ah.length || i < 0) {
            return 0;
        }
        return this.ah[i];
    }

    public abstract void m();

    public final int n(int i) {
        int paddingRight;
        if (this.ah == null || i >= this.ah.length || i < 0) {
            return 0;
        }
        View childAt = getChildAt(i);
        if (((C0115ec) childAt.getLayoutParams()).f329a) {
            paddingRight = 0;
        } else {
            paddingRight = z() ? getPaddingRight() : getPaddingLeft();
        }
        return (int) (childAt.getX() - ((paddingRight + this.ah[i]) + x()));
    }

    protected void o() {
    }

    protected void o(int i) {
        b(i, 750);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (this.ap != null || this.ao < 0) {
            return;
        }
        this.ap = (PageIndicator) viewGroup.findViewById(this.ao);
        this.ap.a(this.aq);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            arrayList.add(h(i));
        }
        this.ap.a(arrayList, this.aq);
        View.OnClickListener onClickListenerV = v();
        if (onClickListenerV != null) {
            this.ap.setOnClickListener(onClickListenerV);
        }
        this.ap.setContentDescription(u());
    }

    public void onChildViewAdded(View view, View view2) {
        if (this.ap != null && !c(false)) {
            int iIndexOfChild = indexOfChild(view2);
            this.ap.a(iIndexOfChild, h(iIndexOfChild), this.aq);
        }
        this.ai = true;
        j();
        invalidate();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        this.ai = true;
        j();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.ap = null;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        boolean z = false;
        if ((motionEvent.getSource() & 2) != 0) {
            switch (motionEvent.getAction()) {
                case 8:
                    if ((motionEvent.getMetaState() & 1) != 0) {
                        axisValue = motionEvent.getAxisValue(9);
                        f = 0.0f;
                    } else {
                        f = -motionEvent.getAxisValue(9);
                        axisValue = motionEvent.getAxisValue(10);
                    }
                    if (axisValue != 0.0f || f != 0.0f) {
                        if (z()) {
                            if (axisValue < 0.0f || f < 0.0f) {
                                z = true;
                            }
                        } else if (axisValue > 0.0f || f > 0.0f) {
                            z = true;
                        }
                        if (z) {
                            d();
                            return true;
                        }
                        d_();
                        return true;
                    }
                    break;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setScrollable(true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setScrollable(getChildCount() > 1);
        if (this.i < getChildCount() - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        if (this.i > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a(motionEvent);
        if (getChildCount() <= 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 2 && this.p == 1) {
            return true;
        }
        switch (action & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.Z = x;
                this.aa = y;
                this.ab = getScrollX();
                this.n = x;
                this.o = y;
                float[] fArrA = a(this, x, y);
                this.V = fArrA[0];
                this.W = fArrA[1];
                this.ad = 0.0f;
                this.ae = 0.0f;
                this.D = motionEvent.getPointerId(0);
                if (this.m.a() || Math.abs(this.m.d() - this.m.b()) < this.r / 3) {
                    this.p = 0;
                    if (!this.m.a() && !this.f276a) {
                        i(D());
                        g();
                    }
                } else if (!c((int) this.Z, (int) this.aa)) {
                    this.p = 0;
                } else {
                    this.p = 1;
                }
                break;
            case 1:
            case 3:
                k();
                break;
            case 2:
                if (this.D != -1) {
                    b(motionEvent);
                }
                break;
            case 6:
                c(motionEvent);
                l();
                break;
        }
        return this.p != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int paddingTop;
        int paddingRight;
        if (!this.an || getChildCount() == 0) {
            return;
        }
        int childCount = getChildCount();
        int iX = x();
        int measuredHeight = (getMeasuredHeight() - this.ar.height()) / 2;
        this.ar.offset(iX, measuredHeight);
        boolean z2 = z();
        int i6 = z2 ? childCount - 1 : 0;
        int i7 = z2 ? -1 : childCount;
        int i8 = z2 ? -1 : 1;
        int paddingTop2 = getPaddingTop() + getPaddingBottom();
        int paddingLeft = iX + (((C0115ec) getChildAt(i6).getLayoutParams()).f329a ? 0 : getPaddingLeft());
        if (this.ah == null || getChildCount() != this.R) {
            this.ah = new int[getChildCount()];
        }
        int i9 = i6;
        while (i9 != i7) {
            View viewC = c(i9);
            if (viewC.getVisibility() != 8) {
                C0115ec c0115ec = (C0115ec) viewC.getLayoutParams();
                if (c0115ec.f329a) {
                    paddingTop = measuredHeight;
                } else {
                    paddingTop = getPaddingTop() + measuredHeight + this.N.top;
                    if (this.y) {
                        paddingTop += ((((this.ar.height() - this.N.top) - this.N.bottom) - paddingTop2) - viewC.getMeasuredHeight()) / 2;
                    }
                }
                int measuredWidth = viewC.getMeasuredWidth();
                viewC.layout(paddingLeft, paddingTop, viewC.getMeasuredWidth() + paddingLeft, viewC.getMeasuredHeight() + paddingTop);
                this.ah[i9] = (paddingLeft - (c0115ec.f329a ? 0 : getPaddingLeft())) - iX;
                int i10 = this.U;
                int i11 = i9 + i8;
                C0115ec c0115ec2 = i11 != i7 ? (C0115ec) c(i11).getLayoutParams() : null;
                if (c0115ec.f329a) {
                    paddingRight = getPaddingLeft();
                } else {
                    paddingRight = (c0115ec2 == null || !c0115ec2.f329a) ? i10 : getPaddingRight();
                }
                i5 = paddingRight + measuredWidth + paddingLeft;
            } else {
                i5 = paddingLeft;
            }
            i9 += i8;
            paddingLeft = i5;
        }
        if (this.h && this.i >= 0 && this.i < getChildCount()) {
            setHorizontalScrollBarEnabled(false);
            E();
            setHorizontalScrollBarEnabled(true);
            this.h = false;
        }
        if (childCount > 0) {
            this.l = m(z() ? 0 : childCount - 1);
        } else {
            this.l = 0;
        }
        if (this.m.a() && this.R != getChildCount() && !this.aJ) {
            if (this.j != -1001) {
                Log.d("KLP", "Restoring to page " + this.j);
                i(this.j);
                this.j = -1001;
            } else {
                Log.d("KLP", "Restoring to page " + D());
                i(D());
            }
        }
        this.R = getChildCount();
        if (c(true)) {
            b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int iWidth;
        int iHeight;
        if (!this.an || getChildCount() == 0) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (Math.max(displayMetrics.widthPixels + this.N.left + this.N.right, displayMetrics.heightPixels + this.N.top + this.N.bottom) * 2.0f);
        if (this.av) {
            int i7 = (int) (iMax / this.au);
            i4 = (int) (iMax / this.au);
            i3 = i7;
        } else {
            i3 = size;
            i4 = size2;
        }
        this.ar.set(0, 0, size, size2);
        if (mode == 0 || mode2 == 0) {
            super.onMeasure(i, i2);
            return;
        }
        if (size <= 0 || size2 <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View viewC = c(i8);
            if (viewC.getVisibility() != 8) {
                C0115ec c0115ec = (C0115ec) viewC.getLayoutParams();
                if (c0115ec.f329a) {
                    i5 = 1073741824;
                    i6 = 1073741824;
                    iWidth = (this.ar.width() - this.N.left) - this.N.right;
                    iHeight = this.ar.height();
                } else {
                    int i9 = c0115ec.width == -2 ? Integer.MIN_VALUE : 1073741824;
                    int i10 = c0115ec.height == -2 ? Integer.MIN_VALUE : 1073741824;
                    int iWidth2 = ((this.ar.width() - paddingLeft) - this.N.left) - this.N.right;
                    int iHeight2 = ((this.ar.height() - paddingTop) - this.N.top) - this.N.bottom;
                    this.Q = iHeight2;
                    i5 = i9;
                    iWidth = iWidth2;
                    i6 = i10;
                    iHeight = iHeight2;
                }
                viewC.measure(View.MeasureSpec.makeMeasureSpec(iWidth, i5), View.MeasureSpec.makeMeasureSpec(iHeight, i6));
            }
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        View viewC = c(this.k != -1 ? this.k : this.i);
        if (viewC != null) {
            return viewC.requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iIndexOfChild;
        boolean z = false;
        super.onTouchEvent(motionEvent);
        if (getChildCount() <= 0) {
            return super.onTouchEvent(motionEvent);
        }
        a(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                if (!this.m.a()) {
                    a(false);
                }
                float x = motionEvent.getX();
                this.n = x;
                this.Z = x;
                float y = motionEvent.getY();
                this.o = y;
                this.aa = y;
                this.ab = getScrollX();
                float[] fArrA = a(this, this.n, this.o);
                this.V = fArrA[0];
                this.W = fArrA[1];
                this.ad = 0.0f;
                this.ae = 0.0f;
                this.D = motionEvent.getPointerId(0);
                if (this.p != 1) {
                    return true;
                }
                f();
                return true;
            case 1:
                if (this.p == 1) {
                    int i = this.D;
                    float x2 = motionEvent.getX(motionEvent.findPointerIndex(i));
                    VelocityTracker velocityTracker = this.T;
                    velocityTracker.computeCurrentVelocity(1000, this.ak);
                    int xVelocity = (int) velocityTracker.getXVelocity(i);
                    int i2 = (int) (x2 - this.Z);
                    int measuredWidth = c(this.i).getMeasuredWidth();
                    boolean z2 = ((float) Math.abs(i2)) > ((float) measuredWidth) * 0.4f;
                    this.ae = Math.abs((this.n + this.ad) - x2) + this.ae;
                    boolean z3 = this.ae > 25.0f && Math.abs(xVelocity) > this.d;
                    if (this.f276a) {
                        if (!this.m.a()) {
                            a(true);
                        }
                        float scaleX = getScaleX();
                        int scrollX = (int) (scaleX * getScrollX());
                        this.m.a(this.S);
                        this.m.a(scrollX, getScrollY(), (int) ((-xVelocity) * scaleX), 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
                        invalidate();
                    } else {
                        boolean z4 = ((float) Math.abs(i2)) > ((float) measuredWidth) * 0.33f && Math.signum((float) xVelocity) != Math.signum((float) i2) && z3;
                        boolean z5 = z();
                        boolean z6 = z5 ? i2 > 0 : i2 < 0;
                        if (z5) {
                            if (xVelocity > 0) {
                                z = true;
                            }
                        } else if (xVelocity < 0) {
                            z = true;
                        }
                        if ((!(!z2 || z6 || z3) || (z3 && !z)) && this.i > 0) {
                            a(z4 ? this.i : this.i - 1, xVelocity);
                        } else if (!((z2 && z6 && !z3) || (z3 && z)) || this.i >= getChildCount() - 1) {
                            U();
                        } else {
                            a(z4 ? this.i : this.i + 1, xVelocity);
                        }
                    }
                } else if (this.p == 2) {
                    int iMax = Math.max(0, this.i - 1);
                    if (iMax != this.i) {
                        o(iMax);
                    } else {
                        U();
                    }
                } else if (this.p == 3) {
                    int iMin = Math.min(getChildCount() - 1, this.i + 1);
                    if (iMin != this.i) {
                        o(iMin);
                    } else {
                        U();
                    }
                } else if (this.p == 4) {
                    this.n = motionEvent.getX();
                    this.o = motionEvent.getY();
                    float[] fArrA2 = a(this, this.n, this.o);
                    this.V = fArrA2[0];
                    this.W = fArrA2[1];
                    b();
                } else if (!this.ag) {
                    ((Launcher) getContext()).onClick(this);
                }
                removeCallbacks(this.aw);
                k();
                return true;
            case 2:
                if (this.p == 1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.D);
                    if (iFindPointerIndex == -1) {
                        return true;
                    }
                    float x3 = motionEvent.getX(iFindPointerIndex);
                    float f = (this.n + this.ad) - x3;
                    this.ae += Math.abs(f);
                    if (Math.abs(f) < 1.0f) {
                        awakenScrollBars();
                        return true;
                    }
                    this.g += f;
                    this.f = System.nanoTime() / 1.0E9f;
                    if (this.I) {
                        invalidate();
                    } else {
                        scrollBy((int) f, 0);
                    }
                    this.n = x3;
                    this.ad = f - ((int) f);
                    return true;
                }
                if (this.p != 4) {
                    b(motionEvent);
                    return true;
                }
                this.n = motionEvent.getX();
                this.o = motionEvent.getY();
                float[] fArrA3 = a(this, this.n, this.o);
                this.V = fArrA3[0];
                this.W = fArrA3[1];
                b();
                int iIndexOfChild2 = indexOfChild(this.M);
                if (this.M != null) {
                    int left = (int) (this.M.getLeft() + (this.M.getMeasuredWidth() / 2) + this.M.getTranslationX());
                    a(this.A);
                    int i3 = Integer.MAX_VALUE;
                    iIndexOfChild = indexOfChild(this.M);
                    for (int i4 = this.A[0]; i4 <= this.A[1]; i4++) {
                        View viewC = c(i4);
                        int iAbs = Math.abs(left - ((viewC.getMeasuredWidth() / 2) + viewC.getLeft()));
                        if (iAbs < i3) {
                            iIndexOfChild = i4;
                            i3 = iAbs;
                        }
                    }
                } else {
                    iIndexOfChild = -1;
                }
                if (iIndexOfChild < 0 || iIndexOfChild == indexOfChild(this.M)) {
                    removeCallbacks(this.aw);
                    this.ax = -1;
                    return true;
                }
                this.A[0] = 0;
                this.A[1] = getChildCount() - 1;
                a(this.A);
                if (this.A[0] > iIndexOfChild || iIndexOfChild > this.A[1] || iIndexOfChild == this.ax || !this.m.a()) {
                    return true;
                }
                this.ax = iIndexOfChild;
                this.aw = new dY(this, iIndexOfChild, iIndexOfChild2);
                postDelayed(this.aw, this.at);
                return true;
            case 3:
                if (this.p == 1) {
                    U();
                }
                k();
                return true;
            case 4:
            case 5:
            default:
                return true;
            case 6:
                c(motionEvent);
                l();
                return true;
        }
    }

    protected final void p(int i) {
        b(i, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        switch (i) {
            case 4096:
                if (this.i < getChildCount() - 1) {
                    d();
                    return true;
                }
                return false;
            case 8192:
                if (this.i > 0) {
                    d_();
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    @Override // android.view.View
    public boolean performLongClick() {
        this.ag = true;
        return super.performLongClick();
    }

    protected final void q(int i) {
        c(i, false);
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        if (this.ap != null) {
            this.ap.a(this.aq);
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        a(indexOfChild(view));
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        removeViewAt(i);
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        a(indexOfChild(view));
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int iD = d(indexOfChild(view));
        if (iD < 0 || iD == this.i || isInTouchMode()) {
            return;
        }
        o(iD);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int iD = d(indexOfChild(view));
        if (iD == this.i && this.m.a()) {
            return false;
        }
        o(iD);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            c(this.i).cancelLongPress();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        scrollTo(this.z + i, getScrollY() + i2);
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        boolean z;
        boolean z2;
        if (this.f276a) {
            i = Math.max(Math.min(i, this.c), this.b);
        }
        boolean z3 = z();
        this.z = i;
        if (z3) {
            z = i > this.l;
        } else {
            z = i < 0;
        }
        if (z3) {
            z2 = i < 0;
        } else {
            z2 = i > this.l;
        }
        if (z) {
            super.scrollTo(0, i2);
            if (this.al) {
                if (z3) {
                    a(i - this.l);
                } else {
                    a(i);
                }
            }
        } else if (z2) {
            super.scrollTo(this.l, i2);
            if (this.al) {
                if (z3) {
                    a(i);
                } else {
                    a(i - this.l);
                }
            }
        } else {
            this.C = i;
            super.scrollTo(i, i2);
        }
        this.g = i;
        this.f = System.nanoTime() / 1.0E9f;
        if (c(true)) {
            float[] fArrB = b(this, this.V, this.W);
            this.n = fArrB[0];
            this.o = fArrB[1];
            b();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i) {
        if (i != 4096) {
            super.sendAccessibilityEvent(i);
        }
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.q = onLongClickListener;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            c(i).setOnLongClickListener(onLongClickListener);
        }
        super.setOnLongClickListener(onLongClickListener);
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        if (c(true)) {
            float[] fArrB = b(this, this.V, this.W);
            this.n = fArrB[0];
            this.o = fArrB[1];
            b();
        }
    }

    protected String t() {
        return String.format(getContext().getString(R.string.default_scroll_format), Integer.valueOf(D() + 1), Integer.valueOf(getChildCount()));
    }

    protected String u() {
        return t();
    }

    protected View.OnClickListener v() {
        return null;
    }

    final int w() {
        return this.ar.height();
    }

    final int x() {
        return (getMeasuredWidth() - this.ar.width()) / 2;
    }

    final PageIndicator y() {
        return this.ap;
    }

    public final boolean z() {
        return getLayoutDirection() == 1;
    }
}
