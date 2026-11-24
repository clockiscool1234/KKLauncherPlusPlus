package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Rect;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* JADX INFO: renamed from: com.android.launcher3.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0112e extends FrameLayout {
    private static Rect J = new Rect();
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int[] G;
    private int[] H;
    private int[] I;
    private Launcher K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cE f302a;
    private CellLayout b;
    private DragLayer c;
    private ImageView d;
    private ImageView e;
    private ImageView f;
    private ImageView g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    public C0112e(Context context, cE cEVar, CellLayout cellLayout, DragLayer dragLayer) {
        super(context);
        this.E = 0;
        this.F = 0;
        this.G = new int[2];
        this.H = new int[2];
        this.I = new int[2];
        this.K = (Launcher) context;
        this.b = cellLayout;
        this.f302a = cEVar;
        this.t = 3;
        this.c = dragLayer;
        AppWidgetProviderInfo appWidgetInfo = cEVar.getAppWidgetInfo();
        appWidgetInfo.resizeMode = 3;
        int[] iArrB = Launcher.b(this.K, appWidgetInfo);
        this.w = iArrB[0];
        this.x = iArrB[1];
        setBackgroundResource(R.drawable.widget_resize_frame_holo);
        setPadding(0, 0, 0, 0);
        this.d = new ImageView(context);
        this.d.setImageResource(R.drawable.widget_resize_handle_left);
        addView(this.d, new FrameLayout.LayoutParams(-2, -2, 19));
        this.e = new ImageView(context);
        this.e.setImageResource(R.drawable.widget_resize_handle_right);
        addView(this.e, new FrameLayout.LayoutParams(-2, -2, 21));
        this.f = new ImageView(context);
        this.f.setImageResource(R.drawable.widget_resize_handle_top);
        addView(this.f, new FrameLayout.LayoutParams(-2, -2, 49));
        this.g = new ImageView(context);
        this.g.setImageResource(R.drawable.widget_resize_handle_bottom);
        addView(this.g, new FrameLayout.LayoutParams(-2, -2, 81));
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, cEVar.getAppWidgetInfo().provider, null);
        this.l = defaultPaddingForWidget.left;
        this.n = defaultPaddingForWidget.top;
        this.m = defaultPaddingForWidget.right;
        this.o = defaultPaddingForWidget.bottom;
        if (this.t == 1) {
            this.f.setVisibility(8);
            this.g.setVisibility(8);
        } else if (this.t == 2) {
            this.d.setVisibility(8);
            this.e.setVisibility(8);
        }
        this.C = (int) Math.ceil(this.K.getResources().getDisplayMetrics().density * 24.0f);
        this.D = this.C * 2;
        this.b.d(this.f302a);
    }

    static Rect a(Launcher launcher, int i, int i2, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        Rect rectA = Workspace.a(launcher, 0);
        Rect rectA2 = Workspace.a(launcher, 1);
        float f = launcher.getResources().getDisplayMetrics().density;
        int i3 = rectA.left;
        int i4 = rectA.top;
        int i5 = (int) (((i3 * i) + (rectA.right * (i - 1))) / f);
        rect.set((int) (((rectA2.left * i) + (rectA2.right * (i - 1))) / f), (int) (((rectA.bottom * (i2 - 1)) + (i4 * i2)) / f), i5, (int) (((rectA2.bottom * (i2 - 1)) + (rectA2.top * i2)) / f));
        return rect;
    }

    static void a(AppWidgetHostView appWidgetHostView, Launcher launcher, int i, int i2) {
        a(launcher, i, i2, J);
        appWidgetHostView.updateAppWidgetSize(null, J.left, J.top, J.right, J.bottom);
    }

    private void b(boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        this.w = 1;
        this.x = 1;
        int iM = this.b.m() + this.b.o();
        int iN = this.b.n() + this.b.p();
        int i10 = this.y + this.A;
        int i11 = this.z + this.B;
        float f = ((i10 * 1.0f) / iM) - this.u;
        float f2 = ((1.0f * i11) / iN) - this.v;
        int iK = this.b.k();
        int iL = this.b.l();
        int iRound = Math.abs(f) > 0.66f ? Math.round(f) : 0;
        int iRound2 = Math.abs(f2) > 0.66f ? Math.round(f2) : 0;
        if (!z && iRound == 0 && iRound2 == 0) {
            return;
        }
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) this.f302a.getLayoutParams();
        int i12 = layoutParams.f;
        int i13 = layoutParams.g;
        int i14 = layoutParams.e ? layoutParams.c : layoutParams.f74a;
        int i15 = layoutParams.e ? layoutParams.d : layoutParams.b;
        if (this.h) {
            int iMin = Math.min(layoutParams.f - this.w, Math.max(-i14, iRound));
            int iMax = Math.max(-(layoutParams.f - this.w), Math.min(i14, -iRound));
            i = -iMax;
            i3 = iMin;
            i2 = iMax;
        } else if (this.i) {
            int iMax2 = Math.max(-(layoutParams.f - this.w), Math.min(iK - (i14 + i12), iRound));
            i = iMax2;
            i2 = iMax2;
            i3 = 0;
        } else {
            i = 0;
            i2 = iRound;
            i3 = 0;
        }
        if (this.j) {
            int iMin2 = Math.min(layoutParams.g - this.x, Math.max(-i15, iRound2));
            int iMax3 = Math.max(-(layoutParams.g - this.x), Math.min(i15, -iRound2));
            i4 = -iMax3;
            i5 = iMin2;
            i6 = iMax3;
        } else if (this.k) {
            int iMax4 = Math.max(-(layoutParams.g - this.x), Math.min(iL - (i15 + i13), iRound2));
            i4 = iMax4;
            i6 = iMax4;
            i5 = 0;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = iRound2;
        }
        this.G[0] = 0;
        this.G[1] = 0;
        if (this.h || this.i) {
            i7 = i2 + i12;
            i8 = i3 + i14;
            if (i != 0) {
                this.G[0] = this.h ? -1 : 1;
            }
        } else {
            i8 = i14;
            i7 = i12;
        }
        if (this.j || this.k) {
            int i16 = i6 + i13;
            i15 += i5;
            if (i4 != 0) {
                this.G[1] = this.j ? -1 : 1;
            }
            i9 = i16;
        } else {
            i9 = i13;
        }
        if (!z && i4 == 0 && i == 0) {
            return;
        }
        if (z) {
            this.G[0] = this.H[0];
            this.G[1] = this.H[1];
        } else {
            this.H[0] = this.G[0];
            this.H[1] = this.G[1];
        }
        if (this.b.a(i8, i15, i7, i9, this.f302a, this.G, z)) {
            layoutParams.c = i8;
            layoutParams.d = i15;
            layoutParams.f = i7;
            layoutParams.g = i9;
            this.v += i4;
            this.u += i;
            if (!z) {
                a(this.f302a, this.K, i7, i9);
            }
        }
        this.f302a.requestLayout();
    }

    public final void a() {
        b(true);
        requestLayout();
    }

    public final void a(boolean z) {
        DragLayer.LayoutParams layoutParams = (DragLayer.LayoutParams) getLayoutParams();
        int width = ((this.f302a.getWidth() + (this.C * 2)) - this.l) - this.m;
        int height = ((this.f302a.getHeight() + (this.C * 2)) - this.n) - this.o;
        this.I[0] = this.f302a.getLeft();
        this.I[1] = this.f302a.getTop();
        this.c.b(this.b.q(), this.I);
        int i = (this.I[0] - this.C) + this.l;
        int i2 = (this.I[1] - this.C) + this.n;
        if (i2 < 0) {
            this.E = -i2;
        } else {
            this.E = 0;
        }
        if (i2 + height > this.c.getHeight()) {
            this.F = -((i2 + height) - this.c.getHeight());
        } else {
            this.F = 0;
        }
        if (!z) {
            layoutParams.width = width;
            layoutParams.height = height;
            layoutParams.f78a = i;
            layoutParams.b = i2;
            this.d.setAlpha(1.0f);
            this.e.setAlpha(1.0f);
            this.f.setAlpha(1.0f);
            this.g.setAlpha(1.0f);
            requestLayout();
            return;
        }
        ObjectAnimator objectAnimatorA = C0082cw.a(layoutParams, this, PropertyValuesHolder.ofInt("width", layoutParams.width, width), PropertyValuesHolder.ofInt("height", layoutParams.height, height), PropertyValuesHolder.ofInt("x", layoutParams.f78a, i), PropertyValuesHolder.ofInt("y", layoutParams.b, i2));
        ObjectAnimator objectAnimatorA2 = C0082cw.a(this.d, "alpha", 1.0f);
        ObjectAnimator objectAnimatorA3 = C0082cw.a(this.e, "alpha", 1.0f);
        ObjectAnimator objectAnimatorA4 = C0082cw.a(this.f, "alpha", 1.0f);
        ObjectAnimator objectAnimatorA5 = C0082cw.a(this.g, "alpha", 1.0f);
        objectAnimatorA.addUpdateListener(new C0165g(this));
        AnimatorSet animatorSetB = C0082cw.b();
        if (this.t == 2) {
            animatorSetB.playTogether(objectAnimatorA, objectAnimatorA4, objectAnimatorA5);
        } else if (this.t == 1) {
            animatorSetB.playTogether(objectAnimatorA, objectAnimatorA2, objectAnimatorA3);
        } else {
            animatorSetB.playTogether(objectAnimatorA, objectAnimatorA2, objectAnimatorA3, objectAnimatorA4, objectAnimatorA5);
        }
        animatorSetB.setDuration(150L);
        animatorSetB.start();
    }

    public final boolean a(int i, int i2) {
        boolean z = (this.t & 1) != 0;
        boolean z2 = (this.t & 2) != 0;
        this.h = i < this.D && z;
        this.i = i > getWidth() - this.D && z;
        this.j = i2 < this.D + this.E && z2;
        this.k = i2 > (getHeight() - this.D) + this.F && z2;
        boolean z3 = this.h || this.i || this.j || this.k;
        this.p = getMeasuredWidth();
        this.q = getMeasuredHeight();
        this.r = getLeft();
        this.s = getTop();
        if (z3) {
            this.d.setAlpha(this.h ? 1.0f : 0.0f);
            this.e.setAlpha(this.i ? 1.0f : 0.0f);
            this.f.setAlpha(this.j ? 1.0f : 0.0f);
            this.g.setAlpha(this.k ? 1.0f : 0.0f);
        }
        return z3;
    }

    public final void b() {
        int iM = this.b.m() + this.b.o();
        int iN = this.b.n() + this.b.p();
        this.A = iM * this.u;
        this.B = this.v * iN;
        this.y = 0;
        this.z = 0;
        post(new RunnableC0139f(this));
    }

    public final void b(int i, int i2) {
        if (this.h) {
            this.y = Math.max(-this.r, i);
            this.y = Math.min(this.p - (this.D * 2), this.y);
        } else if (this.i) {
            this.y = Math.min(this.c.getWidth() - (this.r + this.p), i);
            this.y = Math.max((-this.p) + (this.D * 2), this.y);
        }
        if (this.j) {
            this.z = Math.max(-this.s, i2);
            this.z = Math.min(this.q - (this.D * 2), this.z);
        } else if (this.k) {
            this.z = Math.min(this.c.getHeight() - (this.s + this.q), i2);
            this.z = Math.max((-this.q) + (this.D * 2), this.z);
        }
        DragLayer.LayoutParams layoutParams = (DragLayer.LayoutParams) getLayoutParams();
        if (this.h) {
            layoutParams.f78a = this.r + this.y;
            layoutParams.width = this.p - this.y;
        } else if (this.i) {
            layoutParams.width = this.p + this.y;
        }
        if (this.j) {
            layoutParams.b = this.s + this.z;
            layoutParams.height = this.q - this.z;
        } else if (this.k) {
            layoutParams.height = this.q + this.z;
        }
        b(false);
        requestLayout();
    }
}
