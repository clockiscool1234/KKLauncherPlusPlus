package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: renamed from: com.android.launcher3.al, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0017al {
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    private float H;
    private float I;
    private int J;
    private float K;
    private boolean L;
    private int M;
    private Rect N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private float T;
    private float U;
    private int V;
    private int W;
    private int X;
    private int Y;
    private int Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f153a;
    private int aa;
    private int ab;
    private float ac;
    private ArrayList ad = new ArrayList();
    private Context ae;
    private boolean af;
    float b;
    float c;
    float d;
    float e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    int v;
    int w;
    int x;
    int y;
    int z;

    C0017al(Context context, ArrayList arrayList, float f, float f2, int i, int i2, int i3, int i4, Resources resources) {
        this.ae = context;
        this.af = a.a.a.c.d.a(context);
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        ArrayList arrayList2 = new ArrayList();
        this.L = resources.getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        this.f153a = f;
        this.b = f2;
        this.N = AppWidgetHostView.getDefaultPaddingForWidget(context, new ComponentName(context.getPackageName(), getClass().getName()), null);
        this.j = resources.getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
        this.M = this.j * 2;
        this.ab = resources.getDimensionPixelSize(R.dimen.dynamic_grid_page_indicator_height);
        this.O = resources.getDimensionPixelSize(R.dimen.dynamic_grid_workspace_page_spacing);
        this.X = resources.getDimensionPixelSize(R.dimen.dynamic_grid_all_apps_cell_padding);
        this.P = resources.getDimensionPixelSize(R.dimen.dynamic_grid_overview_min_icon_zone_height);
        this.Q = resources.getDimensionPixelSize(R.dimen.dynamic_grid_overview_max_icon_zone_height);
        this.R = resources.getDimensionPixelSize(R.dimen.dynamic_grid_overview_bar_item_width);
        this.S = resources.getDimensionPixelSize(R.dimen.dynamic_grid_overview_bar_spacer_width);
        this.T = resources.getInteger(R.integer.config_dynamic_grid_overview_icon_zone_percentage) / 100.0f;
        this.U = resources.getInteger(R.integer.config_dynamic_grid_overview_scale_percentage) / 100.0f;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0017al c0017al = (C0017al) it.next();
            arrayList2.add(new C0020ao(c0017al.f153a, c0017al.b, c0017al.c));
        }
        this.c = Math.round(a(f, f2, arrayList2));
        this.c = a.a.a.c.d.a(this.ae, (int) this.c);
        arrayList2.clear();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C0017al c0017al2 = (C0017al) it2.next();
            arrayList2.add(new C0020ao(c0017al2.f153a, c0017al2.b, c0017al2.d));
        }
        this.d = Math.round(a(f, f2, arrayList2));
        this.d = a.a.a.c.d.b(this.ae, (int) this.d);
        arrayList2.clear();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            C0017al c0017al3 = (C0017al) it3.next();
            arrayList2.add(new C0020ao(c0017al3.f153a, c0017al3.b, c0017al3.e));
        }
        this.e = Math.round(a(f, f2, arrayList2));
        this.D = (int) (this.e / 2.0f);
        arrayList2.clear();
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            C0017al c0017al4 = (C0017al) it4.next();
            arrayList2.add(new C0020ao(c0017al4.f153a, c0017al4.b, c0017al4.H));
        }
        this.H = a(f, f2, arrayList2);
        this.t = aI.a(this.H, displayMetrics);
        arrayList2.clear();
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            C0017al c0017al5 = (C0017al) it5.next();
            arrayList2.add(new C0020ao(c0017al5.f153a, c0017al5.b, c0017al5.I));
        }
        this.I = a(f, f2, arrayList2);
        a.a.a.c.d.b = this.I;
        a.a.a.c.d.o(this.ae);
        this.J = resources.getDimensionPixelSize(R.dimen.dynamic_grid_icon_drawable_padding);
        this.u = aI.a(this.I, displayMetrics);
        arrayList2.clear();
        Iterator it6 = arrayList.iterator();
        while (it6.hasNext()) {
            C0017al c0017al6 = (C0017al) it6.next();
            arrayList2.add(new C0020ao(c0017al6.f153a, c0017al6.b, c0017al6.K));
        }
        this.K = a(f, f2, arrayList2);
        a(context, resources, i, i2, i3, i4);
        a(context);
    }

    C0017al(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        if (!cB.o() && f7 % 2.0f == 0.0f) {
            throw new RuntimeException("All Device Profiles must have an odd number of hotseat spaces");
        }
        this.f153a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.H = f5;
        this.I = f6;
        this.e = f7;
        this.K = f8;
    }

    private float a(float f, float f2, ArrayList arrayList) {
        float f3;
        float fA = 0.0f;
        PointF pointF = new PointF(f, f2);
        Collections.sort(arrayList, new C0018am(this, pointF));
        float f4 = 0.0f;
        int i = 0;
        while (i < arrayList.size()) {
            C0020ao c0020ao = (C0020ao) arrayList.get(i);
            if (i < 3.0f) {
                float fA2 = a(pointF, c0020ao.b, 5.0f);
                if (fA2 == Float.POSITIVE_INFINITY) {
                    return c0020ao.f155a;
                }
                f3 = f4 + fA2;
            } else {
                f3 = f4;
            }
            i++;
            f4 = f3;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            C0020ao c0020ao2 = (C0020ao) arrayList.get(i2);
            if (i2 < 3.0f) {
                fA += (c0020ao2.f155a * a(pointF, c0020ao2.b, 5.0f)) / f4;
            }
        }
        return fA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float a(PointF pointF, PointF pointF2) {
        return (float) Math.sqrt(((pointF2.x - pointF.x) * (pointF2.x - pointF.x)) + ((pointF2.y - pointF.y) * (pointF2.y - pointF.y)));
    }

    private float a(PointF pointF, PointF pointF2, float f) {
        float fA = a(pointF, pointF2);
        if (fA == 0.0f) {
            return Float.POSITIVE_INFINITY;
        }
        return (float) (1.0d / Math.pow(fA, 5.0d));
    }

    private static int a(ViewGroup viewGroup) {
        int i = 0;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            if (viewGroup.getChildAt(i2).getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    private void a(float f, int i, Resources resources, DisplayMetrics displayMetrics, boolean z) {
        float f2;
        float f3 = 1.0f;
        float fN = a.a.a.c.d.n(this.ae);
        float fO = a.a.a.c.d.o(this.ae);
        Log.d("KLP", "Current scale = " + f);
        if (z) {
            f3 = f * fN;
            f2 = f * fO;
        } else {
            f2 = 1.0f;
        }
        Log.d("KLP", "Current iconScale = " + f3);
        Log.d("KLP", "Current iconTextScale = " + f2);
        this.o = (int) (aI.a(this.H, displayMetrics) * f3);
        this.p = (int) (f2 * aI.b(this.I, displayMetrics));
        this.q = i;
        this.B = (int) (f3 * aI.a(this.K, displayMetrics));
        a.a.a.c.d.a = aI.a(this.H, displayMetrics);
        a.a.a.c.d.b = this.I;
        Log.d("KLP", "Current Dynamic.iconSizePx = " + a.a.a.c.d.a);
        Log.d("KLP", "Current Dynamic.iconTextSize = " + a.a.a.c.d.b);
        this.Z = resources.getDimensionPixelSize(R.dimen.dynamic_grid_search_bar_max_width);
        this.aa = resources.getDimensionPixelSize(R.dimen.dynamic_grid_search_bar_height);
        this.Y = Math.min(this.Z, this.k);
        this.G = this.aa + d();
        Paint paint = new Paint();
        paint.setTextSize(this.p);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        this.r = this.o;
        this.s = ((int) Math.ceil(fontMetrics.bottom - fontMetrics.top)) + this.o + this.q;
        this.ac = (resources.getDimensionPixelSize(R.dimen.dragViewScale) + this.o) / this.o;
        this.C = this.o + (this.j * 4);
        this.z = this.o;
        this.A = this.o;
        this.x = this.r + (this.j * 3);
        this.y = this.s + this.j;
        this.v = -this.j;
        this.w = this.o + ((-this.v) * 2);
        Log.d("KLP", "Current allAppsIconSizePx = " + this.t);
        a(this.f ? 0 : 1);
        resources.getDimensionPixelSize(R.dimen.apps_customize_page_indicator_offset);
        this.V = this.t;
        this.W = this.t + i + this.p;
        int integer = resources.getInteger(R.integer.config_dynamic_grid_max_long_edge_cell_count);
        int integer2 = resources.getInteger(R.integer.config_dynamic_grid_max_short_edge_cell_count);
        int integer3 = resources.getInteger(R.integer.config_dynamic_grid_min_edge_cell_count);
        int i2 = this.f ? integer2 : integer;
        if (!this.f) {
            integer = integer2;
        }
        this.E = (this.n - this.ab) / (this.W + this.X);
        this.E = Math.max(integer3, Math.min(i2, this.E));
        this.F = this.m / (this.V + this.X);
        this.F = Math.max(integer3, Math.min(integer, this.F));
        this.E = a.a.a.c.d.c(this.ae, this.E);
        this.F = a.a.a.c.d.d(this.ae, this.F);
    }

    private void a(Context context) {
        float f = 1.0f;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        Point point = new Point();
        Point point2 = new Point();
        Point point3 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getCurrentSizeRange(point2, point3);
        this.m = point.x;
        if (configuration.orientation == 2) {
            this.n = point2.y;
        } else {
            this.n = point3.y;
        }
        int i = this.J;
        a(1.0f, i, resources, displayMetrics, false);
        float f2 = this.s * this.c;
        Rect rectE = e();
        int i2 = (this.n - rectE.top) - rectE.bottom;
        if (f2 > i2) {
            f = i2 / f2;
            i = 0;
        }
        a(f, i, resources, displayMetrics, true);
        Iterator it = this.ad.iterator();
        while (it.hasNext()) {
            ((InterfaceC0019an) it.next()).a(this);
        }
    }

    private int d() {
        return (!this.g || c()) ? this.j * 2 : this.j * 4;
    }

    private Rect e() {
        return a(this.f ? 0 : 1);
    }

    final Rect a() {
        return new Rect(0, this.n - Math.min(this.Q, Math.max(this.P, (int) (this.T * this.n))), 0, this.n);
    }

    final Rect a(int i) {
        int i2 = !a.a.a.c.d.d(this.ae) ? this.ab : 0;
        Rect rect = new Rect();
        if (this.af) {
            this.G = 0;
        }
        if (i == 0 && this.L) {
            if (this.i) {
                rect.set(this.m - this.G, this.j, this.m, this.n - this.j);
            } else {
                rect.set(0, this.j, this.G, this.n - this.j);
            }
        } else if (this.g) {
            int iMax = (int) ((((i == 0 ? Math.max(this.k, this.l) : Math.min(this.k, this.l)) - (this.j * 2)) - (this.d * this.r)) / ((this.d + 1.0f) * 2.0f));
            rect.set(this.j + iMax, d(), this.m - (iMax + this.j), this.G);
        } else {
            rect.set(this.M - this.N.left, d(), this.m - (this.M - this.N.right), this.G);
        }
        Rect rect2 = new Rect();
        if (i == 0 && this.L) {
            if (this.i) {
                rect2.set(this.C, this.j, rect.width(), this.j);
            } else {
                rect2.set(rect.width(), this.j, this.C, this.j);
            }
        } else if (this.g) {
            float f = 1.0f + ((this.ac - 1.0f) / 2.0f);
            int iMax2 = i == 0 ? Math.max(this.k, this.l) : Math.min(this.k, this.l);
            int iMax3 = i != 0 ? Math.max(this.k, this.l) : Math.min(this.k, this.l);
            int i3 = rect.bottom;
            int i4 = i2 + this.C;
            int iMax4 = Math.max(0, iMax2 - ((int) (((f * this.d) * this.r) + (this.d * this.r))));
            int iMax5 = Math.max(0, ((iMax3 - i3) - i4) - ((int) ((this.c * 2.0f) * this.s)));
            rect2.set(iMax4 / 2, i3 + (iMax5 / 2), iMax4 / 2, i4 + (iMax5 / 2));
        } else {
            rect2.set(this.M - this.N.left, rect.bottom, this.M - this.N.right, i2 + this.C);
        }
        return rect2;
    }

    final Rect a(Rect rect) {
        Rect rectE = e();
        if (!this.f || !this.L) {
            int i = (this.l - rect.bottom) - rectE.bottom;
            return new Rect(rectE.left, i, this.k - rectE.right, this.ab + i);
        }
        if (this.i) {
            return new Rect(rectE.left, rectE.top, rectE.left + this.ab, (this.l - rectE.bottom) - rect.bottom);
        }
        int i2 = this.k - rectE.right;
        return new Rect(i2, rectE.top, this.ab + i2, (this.l - rectE.bottom) - rect.bottom);
    }

    final void a(Context context, Resources resources, int i, int i2, int i3, int i4) {
        Configuration configuration = resources.getConfiguration();
        this.f = configuration.orientation == 2;
        this.g = resources.getBoolean(R.bool.is_tablet);
        this.h = resources.getBoolean(R.bool.is_large_tablet);
        if (Build.VERSION.SDK_INT >= 17) {
            this.i = configuration.getLayoutDirection() == 1;
        } else {
            this.i = false;
        }
        this.k = i;
        this.l = i2;
        this.m = i3;
        this.n = i4;
        a(context);
    }

    public final void a(Launcher launcher) {
        Resources resources = launcher.getResources();
        boolean zC = c();
        SearchDropTargetBar searchDropTargetBarK = launcher.k();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) searchDropTargetBarK.getLayoutParams();
        if (zC) {
            layoutParams.gravity = 51;
            layoutParams.width = this.G;
            layoutParams.height = -2;
            searchDropTargetBarK.setPadding(0, this.j * 2, 0, this.j * 2);
            ((LinearLayout) searchDropTargetBarK.findViewById(R.id.drag_target_bar)).setOrientation(1);
        } else {
            layoutParams.gravity = 49;
            layoutParams.width = this.Y;
            if (this.af) {
                layoutParams.height = aI.a(27.0f, resources.getDisplayMetrics());
            } else {
                layoutParams.height = this.G;
                searchDropTargetBarK.setPadding(this.j * 2, d(), this.j * 2, 0);
            }
        }
        searchDropTargetBarK.setLayoutParams(layoutParams);
        if (this.af) {
            launcher.z().setVisibility(8);
        }
        View viewFindViewById = launcher.findViewById(R.id.voice_button_proxy);
        if (viewFindViewById != null && !zC) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams2.gravity = 8388661;
            layoutParams2.width = ((this.k - this.Y) / 2) + (this.o * 2);
            layoutParams2.height = this.G;
        }
        dX dXVar = (dX) launcher.findViewById(R.id.workspace);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) dXVar.getLayoutParams();
        layoutParams3.gravity = 17;
        int i = this.f ? 0 : 1;
        Rect rectA = a(i);
        dXVar.setLayoutParams(layoutParams3);
        dXVar.setPadding(rectA.left, rectA.top, rectA.right, rectA.bottom);
        dXVar.k(((i == 0 && this.L) || this.h) ? this.O : Math.max(this.O, e().left * 2));
        View viewFindViewById2 = launcher.findViewById(R.id.hotseat);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) viewFindViewById2.getLayoutParams();
        if (zC) {
            layoutParams4.gravity = 8388613;
            layoutParams4.width = this.C;
            layoutParams4.height = -1;
            viewFindViewById2.findViewById(R.id.layout).setPadding(0, this.j * 2, 0, this.j * 2);
        } else if (this.g) {
            layoutParams4.gravity = 80;
            layoutParams4.width = -1;
            layoutParams4.height = this.C;
            viewFindViewById2.setPadding(this.j + rectA.left, 0, rectA.right + this.j, this.j * 2);
        } else {
            layoutParams4.gravity = 80;
            layoutParams4.width = -1;
            layoutParams4.height = this.C;
            viewFindViewById2.findViewById(R.id.layout).setPadding(this.j * 2, 0, this.j * 2, 0);
        }
        viewFindViewById2.setLayoutParams(layoutParams4);
        View viewFindViewById3 = launcher.findViewById(R.id.page_indicator);
        if (viewFindViewById3 != null) {
            if (zC) {
                viewFindViewById3.setVisibility(8);
            } else {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) viewFindViewById3.getLayoutParams();
                layoutParams5.gravity = 81;
                layoutParams5.width = -2;
                layoutParams5.height = -2;
                layoutParams5.bottomMargin = this.C;
                viewFindViewById3.setLayoutParams(layoutParams5);
            }
            if (a.a.a.c.d.d(this.ae)) {
                viewFindViewById3.setVisibility(8);
            }
        }
        AppsCustomizeTabHost appsCustomizeTabHost = (AppsCustomizeTabHost) launcher.findViewById(R.id.apps_customize_pane);
        if (appsCustomizeTabHost != null) {
            int iMin = (int) (this.ab * Math.min(1.0f, this.t / aI.f127a));
            View viewFindViewById4 = appsCustomizeTabHost.findViewById(R.id.apps_customize_page_indicator);
            if (viewFindViewById4 != null) {
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) viewFindViewById4.getLayoutParams();
                layoutParams6.gravity = 81;
                layoutParams6.width = -2;
                layoutParams6.height = iMin;
                viewFindViewById4.setLayoutParams(layoutParams6);
                if (a.a.a.c.d.e(this.ae)) {
                    viewFindViewById4.setVisibility(8);
                }
            }
            AppsCustomizePagedView appsCustomizePagedView = (AppsCustomizePagedView) appsCustomizeTabHost.findViewById(R.id.apps_customize_pane_content);
            Rect rect = new Rect();
            if (appsCustomizePagedView != null) {
                int i2 = (this.m - (this.V * this.F)) / ((this.F + 1) * 2);
                int i3 = (this.n - (this.W * this.E)) / ((this.E + 1) * 2);
                int iMin2 = Math.min(i2, (int) ((i2 + i3) * 0.75f));
                int iMin3 = Math.min(i3, (int) ((iMin2 + i3) * 0.75f));
                int i4 = (this.m - (((iMin2 * 2) + this.V) * this.F)) / 2;
                if ((this.g || this.f) && i4 > this.V / 4) {
                    rect.right = i4;
                    rect.left = i4;
                }
                rect.bottom = Math.max(0, iMin - iMin3);
                appsCustomizePagedView.a(rect);
                appsCustomizePagedView.a(iMin);
            }
        }
        ViewGroup viewGroupJ = launcher.j();
        if (viewGroupJ != null) {
            Rect rectA2 = a();
            FrameLayout.LayoutParams layoutParams7 = (FrameLayout.LayoutParams) viewGroupJ.getLayoutParams();
            layoutParams7.gravity = 81;
            int i5 = this.m;
            int iA = a(viewGroupJ);
            layoutParams7.width = Math.min(i5, ((iA - 1) * this.S) + (this.R * iA));
            layoutParams7.height = rectA2.height();
            viewGroupJ.setLayoutParams(layoutParams7);
        }
    }

    final void a(InterfaceC0019an interfaceC0019an) {
        this.ad.add(interfaceC0019an);
        interfaceC0019an.a(this);
    }

    final float b() {
        Rect rectE = e();
        Rect rectA = a();
        int i = (this.n - rectE.top) - rectE.bottom;
        return ((i - rectA.height()) * this.U) / i;
    }

    final boolean c() {
        return this.f && this.L;
    }
}
