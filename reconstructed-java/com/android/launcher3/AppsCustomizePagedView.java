package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AppsCustomizePagedView extends AbstractViewOnLongClickListenerC0125em implements View.OnClickListener, View.OnKeyListener, InterfaceC0031az, dH, InterfaceC0122ej, InterfaceC0124el {
    private static float ap = 6500.0f;
    private static float aq = 0.74f;
    private static float ar = 0.65f;
    private static float as = 22.0f;
    private EnumC0176r O;
    private Launcher P;
    private C0021ap Q;
    private final LayoutInflater R;
    private final PackageManager S;
    private int T;
    private PagedViewIcon U;
    private ArrayList V;
    private ArrayList W;
    private boolean Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f70a;
    private boolean aA;
    private ArrayList aB;
    private ArrayList aC;
    private Rect aD;
    private C0157fr aE;
    private boolean aF;
    private boolean aG;
    private int aa;
    private int ab;
    private Canvas ac;
    private C0055bw ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private C0117ee ak;
    private int al;
    private int am;
    private Rect an;
    private fW ao;
    private AccelerateInterpolator at;
    private DecelerateInterpolator au;
    private Runnable av;
    private Runnable aw;
    private C0129eq ax;
    private boolean ay;
    private Toast az;
    int b;
    int c;

    public AppsCustomizePagedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.O = EnumC0176r.Applications;
        this.T = -1;
        this.an = new Rect();
        this.ao = new fW(0.5f);
        this.at = new AccelerateInterpolator(0.9f);
        this.au = new DecelerateInterpolator(4.0f);
        this.av = null;
        this.aw = null;
        this.b = -1;
        this.c = -1;
        this.ax = null;
        this.ay = false;
        this.aB = new ArrayList();
        this.aC = new ArrayList();
        this.aD = new Rect();
        new B();
        new C0126en();
        new F();
        new F();
        new C0131es();
        new C0131es();
        new C0126en();
        this.R = LayoutInflater.from(context);
        this.S = context.getPackageManager();
        this.V = new ArrayList();
        this.W = new ArrayList();
        this.ad = cB.a().e();
        this.ac = new Canvas();
        this.f70a = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.f409a, 0, 0);
        int i = cB.a().i().a().j;
        this.aj = i;
        this.ai = i;
        this.ag = typedArrayObtainStyledAttributes.getInt(4, 2);
        this.ah = typedArrayObtainStyledAttributes.getInt(5, 2);
        this.aa = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.ab = typedArrayObtainStyledAttributes.getInt(7, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.ak = new C0117ee(getContext());
        this.G = false;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void Z() {
        this.am = (int) Math.ceil(this.W.size() / (this.ag * this.ah));
        this.al = (int) Math.ceil(this.V.size() / (this.w * this.x));
    }

    private void a(View view, boolean z, boolean z2) {
        if (!z && z2 && (view == this.P.h() || (view instanceof DeleteDropTarget) || (view instanceof Folder))) {
            this.P.e(false);
        } else {
            this.P.h().a(true, (Runnable) new RunnableC0172n(this));
        }
    }

    private static void a(ViewGroup viewGroup, int i) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            viewGroup.getChildAt(i2).setVisibility(i);
        }
    }

    static /* synthetic */ void a(AppsCustomizePagedView appsCustomizePagedView, int i, ArrayList arrayList, int i2, int i3, int i4) {
        Iterator it = appsCustomizePagedView.f70a.iterator();
        while (it.hasNext()) {
            AsyncTaskC0166h asyncTaskC0166h = (AsyncTaskC0166h) it.next();
            int i5 = asyncTaskC0166h.f393a;
            if (i5 < appsCustomizePagedView.f(appsCustomizePagedView.i) || i5 > appsCustomizePagedView.g(appsCustomizePagedView.i)) {
                asyncTaskC0166h.cancel(false);
                it.remove();
            } else {
                asyncTaskC0166h.a(appsCustomizePagedView.t(i5));
            }
        }
        C0184z c0184z = new C0184z(i, arrayList, i2, i3, new C0173o(appsCustomizePagedView, Math.max(0, appsCustomizePagedView.s(i) * 200)), new C0174p(appsCustomizePagedView), appsCustomizePagedView.b());
        AsyncTaskC0166h asyncTaskC0166h2 = new AsyncTaskC0166h(i, A.LoadWidgetPreviewData);
        asyncTaskC0166h2.a(appsCustomizePagedView.t(i));
        asyncTaskC0166h2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, c0184z);
        appsCustomizePagedView.f70a.add(asyncTaskC0166h2);
    }

    static /* synthetic */ void a(AppsCustomizePagedView appsCustomizePagedView, AsyncTaskC0166h asyncTaskC0166h, C0184z c0184z) {
        if (asyncTaskC0166h != null) {
            asyncTaskC0166h.a();
        }
        ArrayList arrayList = c0184z.b;
        ArrayList arrayList2 = c0184z.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (asyncTaskC0166h != null) {
                if (asyncTaskC0166h.isCancelled()) {
                    return;
                } else {
                    asyncTaskC0166h.a();
                }
            }
            arrayList2.add(appsCustomizePagedView.b().a(arrayList.get(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0184z c0184z, boolean z) {
        if (!z && this.aA) {
            this.aB.add(c0184z);
            return;
        }
        try {
            C0120eh c0120eh = (C0120eh) c(c0184z.f408a);
            int size = c0184z.b.size();
            for (int i = 0; i < size; i++) {
                PagedViewWidget pagedViewWidget = (PagedViewWidget) c0120eh.getChildAt(i);
                if (pagedViewWidget != null) {
                    pagedViewWidget.a(new aJ((Bitmap) c0184z.c.get(i)));
                }
            }
            ac();
            for (AsyncTaskC0166h asyncTaskC0166h : this.f70a) {
                asyncTaskC0166h.a(t(asyncTaskC0166h.f393a));
            }
        } finally {
            c0184z.a(false);
        }
    }

    private void aa() {
        if (this.aF) {
            this.aG = true;
            return;
        }
        Z();
        if (B()) {
            ab();
            W();
        } else {
            requestLayout();
        }
        this.aG = false;
    }

    private void ab() {
        Iterator it = this.f70a.iterator();
        while (it.hasNext()) {
            AsyncTaskC0166h asyncTaskC0166h = (AsyncTaskC0166h) it.next();
            asyncTaskC0166h.cancel(false);
            it.remove();
            this.E.set(asyncTaskC0166h.f393a, true);
            View viewC = c(asyncTaskC0166h.f393a);
            if (viewC instanceof C0120eh) {
                ((C0120eh) viewC).a();
            }
        }
        this.aB.clear();
        this.aC.clear();
    }

    private void ac() {
        int childCount = getChildCount();
        b(this.A);
        int i = this.A[0];
        int i2 = this.A[1];
        int i3 = -1;
        if (i != i2) {
            i3 = i + 1;
        } else if (i2 < childCount - 1) {
            i3 = i2 + 1;
            i2 = i3;
        } else if (i > 0) {
            i3 = i - 1;
            i = i3;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View viewC = c(i4);
            if (i > i4 || i4 > i2 || (i4 != i3 && !d(viewC))) {
                viewC.setLayerType(0, null);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View viewC2 = c(i5);
            if (i <= i5 && i5 <= i2 && ((i5 == i3 || d(viewC2)) && viewC2.getLayerType() != 2)) {
                viewC2.setLayerType(2, null);
            }
        }
    }

    private AppsCustomizeTabHost ad() {
        return (AppsCustomizeTabHost) this.P.findViewById(R.id.apps_customize_pane);
    }

    private void b(boolean z) {
        if (!z) {
            C0129eq c0129eq = this.ax;
            this.ax = null;
            if (this.b == 0) {
                removeCallbacks(this.aw);
                removeCallbacks(this.av);
            } else if (this.b == 1) {
                if (this.c != -1) {
                    this.P.l().deleteAppWidgetId(this.c);
                }
                removeCallbacks(this.av);
            } else if (this.b == 2) {
                if (this.c != -1) {
                    this.P.l().deleteAppWidgetId(this.c);
                }
                this.P.g().removeView(c0129eq.t);
            }
        }
        this.b = -1;
        this.c = -1;
        this.ax = null;
        PagedViewWidget.b();
    }

    private void f(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0086d c0086d = (C0086d) arrayList.get(i);
            int iBinarySearch = Collections.binarySearch(this.V, c0086d, cO.g());
            if (iBinarySearch < 0) {
                this.V.add(-(iBinarySearch + 1), c0086d);
            }
        }
    }

    private void g(ArrayList arrayList) {
        int i;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0086d c0086d = (C0086d) arrayList.get(i2);
            ArrayList arrayList2 = this.V;
            ComponentName component = c0086d.f256a.getComponent();
            int size2 = arrayList2.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    i = -1;
                    break;
                } else {
                    if (((C0086d) arrayList2.get(i3)).f256a.getComponent().equals(component)) {
                        i = i3;
                        break;
                    }
                    i3++;
                }
            }
            if (i >= 0) {
                this.V.remove(i);
            }
        }
    }

    private void r(int i) {
        boolean z = z();
        int i2 = this.w * this.x;
        int i3 = i * i2;
        int iMin = Math.min(i2 + i3, this.V.size());
        C0167i c0167i = (C0167i) c(i);
        c0167i.a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i4 = i3; i4 < iMin; i4++) {
            C0086d c0086d = (C0086d) this.V.get(i4);
            PagedViewIcon pagedViewIcon = (PagedViewIcon) this.R.inflate(R.layout.apps_customize_application, (ViewGroup) c0167i, false);
            pagedViewIcon.a(c0086d, this);
            pagedViewIcon.setOnClickListener(this);
            pagedViewIcon.setOnLongClickListener(this);
            pagedViewIcon.setOnTouchListener(this);
            pagedViewIcon.setOnKeyListener(this);
            int i5 = i4 - i3;
            int i6 = i5 % this.w;
            int i7 = i5 / this.w;
            if (z) {
                i6 = (this.w - i6) - 1;
            }
            c0167i.a((View) pagedViewIcon, -1, i4, new CellLayout.LayoutParams(i6, i7, 1, 1), false);
            arrayList.add(c0086d);
            arrayList2.add(c0086d.b);
        }
        ac();
    }

    private int s(int i) {
        int i2 = this.k >= 0 ? this.k : this.i;
        Iterator it = this.f70a.iterator();
        int iAbs = Integer.MAX_VALUE;
        while (it.hasNext()) {
            iAbs = Math.abs(((AsyncTaskC0166h) it.next()).f393a - i2);
        }
        int iAbs2 = Math.abs(i - i2);
        return iAbs2 - Math.min(iAbs2, iAbs);
    }

    private int t(int i) {
        int iS = s(i);
        if (iS <= 0) {
            return 1;
        }
        return iS <= 1 ? 19 : 19;
    }

    @Override // com.android.launcher3.dX
    protected final void a() {
        super.a();
        this.y = false;
        d(getContext().getResources().getInteger(R.integer.config_appsCustomizeDragSlopeThreshold) / 100.0f);
    }

    @Override // com.android.launcher3.dX
    protected final void a(float f) {
        c(f);
    }

    final void a(int i) {
        this.t = i;
    }

    @Override // com.android.launcher3.dX
    public final void a(int i, boolean z) {
        if (this.O != EnumC0176r.Widgets) {
            r(i);
            return;
        }
        int i2 = this.ag * this.ah;
        ArrayList arrayList = new ArrayList();
        int i3 = (((this.ae - this.u) - this.v) - ((this.ag - 1) * this.ai)) / this.ag;
        int i4 = (((this.af - this.s) - this.t) - ((this.ah - 1) * this.aj)) / this.ah;
        int i5 = i * i2;
        for (int i6 = i5; i6 < Math.min(i5 + i2, this.W.size()); i6++) {
            arrayList.add(this.W.get(i6));
        }
        C0120eh c0120eh = (C0120eh) c(i);
        c0120eh.setColumnCount(c0120eh.c());
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i8 >= arrayList.size()) {
                c0120eh.a(new RunnableC0175q(this, i3, i4, c0120eh, z, i, arrayList));
                return;
            }
            Object obj = arrayList.get(i8);
            PagedViewWidget pagedViewWidget = (PagedViewWidget) this.R.inflate(R.layout.apps_customize_widget, (ViewGroup) c0120eh, false);
            if (obj instanceof AppWidgetProviderInfo) {
                AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) obj;
                C0129eq c0129eq = new C0129eq(appWidgetProviderInfo, null, null);
                int[] iArrA = Launcher.a(this.P, appWidgetProviderInfo);
                c0129eq.l = iArrA[0];
                c0129eq.m = iArrA[1];
                int[] iArrB = Launcher.b(this.P, appWidgetProviderInfo);
                c0129eq.n = iArrB[0];
                c0129eq.o = iArrB[1];
                pagedViewWidget.a(appWidgetProviderInfo, -1, iArrA, b());
                pagedViewWidget.setTag(c0129eq);
                pagedViewWidget.a(this);
            } else if (obj instanceof ResolveInfo) {
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                C0128ep c0128ep = new C0128ep(resolveInfo.activityInfo);
                c0128ep.g = 1;
                c0128ep.f337a = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                pagedViewWidget.a(this.S, resolveInfo, b());
                pagedViewWidget.setTag(c0128ep);
            }
            pagedViewWidget.setOnClickListener(this);
            pagedViewWidget.setOnLongClickListener(this);
            pagedViewWidget.setOnTouchListener(this);
            pagedViewWidget.setOnKeyListener(this);
            int i9 = i8 % this.ag;
            int i10 = i8 / this.ag;
            GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(i10, GridLayout.START), GridLayout.spec(i9, GridLayout.TOP));
            layoutParams.width = i3;
            layoutParams.height = i4;
            layoutParams.setGravity(8388659);
            if (i9 > 0) {
                layoutParams.leftMargin = this.ai;
            }
            if (i10 > 0) {
                layoutParams.topMargin = this.aj;
            }
            c0120eh.addView(pagedViewWidget, layoutParams);
            i7 = i8 + 1;
        }
    }

    final void a(Rect rect) {
        this.an.set(rect);
    }

    @Override // com.android.launcher3.AbstractViewOnLongClickListenerC0125em
    protected final void a(MotionEvent motionEvent) {
    }

    @Override // com.android.launcher3.InterfaceC0124el
    public final void a(View view) {
        Bundle bundle;
        if (this.ax != null) {
            b(false);
        }
        this.ax = new C0129eq((C0129eq) view.getTag());
        C0129eq c0129eq = this.ax;
        AppWidgetProviderInfo appWidgetProviderInfo = c0129eq.s;
        Launcher launcher = this.P;
        if (Build.VERSION.SDK_INT >= 17) {
            C0112e.a(this.P, c0129eq.l, c0129eq.m, this.aD);
            Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(this.P, c0129eq.f337a, null);
            float f = getResources().getDisplayMetrics().density;
            int i = (int) ((defaultPaddingForWidget.left + defaultPaddingForWidget.right) / f);
            int i2 = (int) ((defaultPaddingForWidget.bottom + defaultPaddingForWidget.top) / f);
            bundle = new Bundle();
            bundle.putInt("appWidgetMinWidth", this.aD.left - i);
            bundle.putInt("appWidgetMinHeight", this.aD.top - i2);
            bundle.putInt("appWidgetMaxWidth", this.aD.right - i);
            bundle.putInt("appWidgetMaxHeight", this.aD.bottom - i2);
        } else {
            bundle = null;
        }
        if (appWidgetProviderInfo.configure != null) {
            c0129eq.u = bundle;
            return;
        }
        this.b = 0;
        this.aw = new RunnableC0169k(this, bundle, c0129eq);
        post(this.aw);
        this.av = new RunnableC0170l(this, appWidgetProviderInfo, c0129eq);
        post(this.av);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    @Override // com.android.launcher3.InterfaceC0031az
    public final void a(View view, aH aHVar, boolean z, boolean z2) {
        boolean z3;
        if (z) {
            return;
        }
        a(view, false, z2);
        if (!z2) {
            if (view instanceof Workspace) {
                CellLayout cellLayout = (CellLayout) ((Workspace) view).getChildAt(this.P.B());
                bD bDVar = (bD) aHVar.g;
                if (cellLayout != null) {
                    CellLayout.a(bDVar);
                    z3 = !cellLayout.a((int[]) null, bDVar.l, bDVar.m);
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            if (z3) {
                this.P.a(false);
            }
            aHVar.k = false;
        }
        b(z2);
        this.ay = false;
    }

    @Override // com.android.launcher3.dH
    public final void a(Launcher launcher, float f) {
    }

    public final void a(Launcher launcher, C0021ap c0021ap) {
        this.P = launcher;
        this.Q = c0021ap;
    }

    @Override // com.android.launcher3.dH
    public final void a(Launcher launcher, boolean z, boolean z2) {
        this.aA = true;
        if (z2) {
            ab();
        }
    }

    @Override // com.android.launcher3.InterfaceC0122ej
    public final void a(PagedViewIcon pagedViewIcon) {
        if (this.U != null) {
            this.U.b();
        }
        this.U = pagedViewIcon;
    }

    public final void a(EnumC0176r enumC0176r) {
        if (this.O != enumC0176r || enumC0176r == EnumC0176r.Widgets) {
            int iC = this.O != enumC0176r ? 0 : C();
            this.O = enumC0176r;
            c(iC, true);
        }
    }

    public final void a(ArrayList arrayList) {
        cB cBVarA = cB.a();
        C0017al c0017alA = cBVarA.i().a();
        this.W.clear();
        for (Object obj : arrayList) {
            if (obj instanceof AppWidgetProviderInfo) {
                AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) obj;
                if (cBVarA.a(appWidgetProviderInfo.provider)) {
                    appWidgetProviderInfo.label = appWidgetProviderInfo.label.trim();
                    if (appWidgetProviderInfo.minWidth <= 0 || appWidgetProviderInfo.minHeight <= 0) {
                        Log.e("AppsCustomizePagedView", "Widget " + appWidgetProviderInfo.provider + " has invalid dimensions (" + appWidgetProviderInfo.minWidth + ", " + appWidgetProviderInfo.minHeight + ")");
                    } else {
                        int[] iArrA = Launcher.a(this.P, appWidgetProviderInfo);
                        int[] iArrB = Launcher.b(this.P, appWidgetProviderInfo);
                        int iMin = Math.min(iArrA[0], iArrB[0]);
                        int iMin2 = Math.min(iArrA[1], iArrB[1]);
                        if (iMin > ((int) c0017alA.d) || iMin2 > ((int) c0017alA.c)) {
                            Log.e("AppsCustomizePagedView", "Widget " + appWidgetProviderInfo.provider + " can not fit on this device (" + appWidgetProviderInfo.minWidth + ", " + appWidgetProviderInfo.minHeight + ")");
                        } else {
                            this.W.add(appWidgetProviderInfo);
                        }
                    }
                }
            } else {
                this.W.add(obj);
            }
        }
        aa();
    }

    public final void a(boolean z) {
        if (z) {
            this.aF = true;
            return;
        }
        this.aF = false;
        if (this.aG) {
            aa();
        }
    }

    @Override // com.android.launcher3.dX
    protected final void a_(int i, int i2, int i3) {
        super.a_(i, i2, i3);
        for (AsyncTaskC0166h asyncTaskC0166h : this.f70a) {
            int i4 = asyncTaskC0166h.f393a;
            if ((this.k <= this.i || i4 < this.i) && (this.k >= this.i || i4 > this.i)) {
                asyncTaskC0166h.a(19);
            } else {
                asyncTaskC0166h.a(t(i4));
            }
        }
    }

    final C0157fr b() {
        if (this.aE == null) {
            this.aE = new C0157fr(this.P);
        }
        return this.aE;
    }

    final void b(int i) {
        if (i < 0) {
            return;
        }
        this.T = i;
    }

    @Override // com.android.launcher3.dH
    public final void b(Launcher launcher, boolean z, boolean z2) {
    }

    public final void b(ArrayList arrayList) {
        if (cB.o()) {
            return;
        }
        this.V = arrayList;
        Collections.sort(this.V, cO.g());
        aa();
    }


    @Override // com.android.launcher3.AbstractViewOnLongClickListenerC0125em
    protected final boolean b(View view) {
        C0127eo c0127eo;
        Bitmap bitmapA;
        Point point;
        boolean z;
        if (!super.b(view)) {
            return false;
        }
        if (view instanceof PagedViewIcon) {
            this.P.h().a(view);
            this.P.h().a(view, this);
        } else if (view instanceof PagedViewWidget) {
            this.ay = true;
            ImageView imageView = (ImageView) view.findViewById(R.id.widget_preview);
            C0127eo c0127eo2 = (C0127eo) view.getTag();
            if (imageView.getDrawable() == null) {
                this.ay = false;
                z = false;
            } else {
                float width = 1.0f;
                if (!(c0127eo2 instanceof C0129eq)) {
                    Drawable drawableA = this.ad.a(((C0128ep) view.getTag()).b);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawableA.getIntrinsicWidth(), drawableA.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    this.ac.setBitmap(bitmapCreateBitmap);
                    this.ac.save();
                    C0157fr.a(drawableA, bitmapCreateBitmap, 0, 0, drawableA.getIntrinsicWidth(), drawableA.getIntrinsicHeight());
                    this.ac.restore();
                    this.ac.setBitmap(null);
                    c0127eo2.m = 1;
                    c0127eo2.l = 1;
                    c0127eo = c0127eo2;
                    bitmapA = bitmapCreateBitmap;
                    point = null;
                } else if (this.ax == null) {
                    z = false;
                } else {
                    C0129eq c0129eq = this.ax;
                    int i = c0129eq.l;
                    int i2 = c0129eq.m;
                    int[] iArrA = this.P.h().a(i, i2, (bD) c0129eq, true);
                    aJ aJVar = (aJ) imageView.getDrawable();
                    int[] iArr = new int[1];
                    bitmapA = b().a(c0129eq.f337a, c0129eq.d, c0129eq.e, i, i2, Math.min((int) (aJVar.getIntrinsicWidth() * 1.25f), iArrA[0]), Math.min((int) (aJVar.getIntrinsicHeight() * 1.25f), iArrA[1]), null, iArr);
                    int iMin = Math.min(iArr[0], b().a(i));
                    width = iMin / bitmapA.getWidth();
                    if (iMin < aJVar.getIntrinsicWidth()) {
                        point = new Point((aJVar.getIntrinsicWidth() - iMin) / 2, 0);
                        c0127eo = c0129eq;
                    } else {
                        point = null;
                        c0127eo = c0129eq;
                    }
                }
                boolean z2 = ((c0127eo instanceof C0129eq) && ((C0129eq) c0127eo).d == 0) ? false : true;
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapA, bitmapA.getWidth(), bitmapA.getHeight(), false);
                this.P.E();
                this.P.h().a(c0127eo, bitmapCreateScaledBitmap, z2);
                this.Q.a(imageView, bitmapA, this, c0127eo, C0021ap.b, point, width);
                bitmapCreateScaledBitmap.recycle();
                bitmapA.recycle();
                z = true;
            }
            if (!z) {
                return false;
            }
        }
        postDelayed(new RunnableC0171m(this), 150L);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0060  */
    final int c() {
        int i;
        if (this.T == -1) {
            if (getChildCount() > 0) {
                int iC = C();
                if (this.O == EnumC0176r.Applications) {
                    C0136ex c0136exQ = ((C0167i) c(iC)).q();
                    int i2 = this.w * this.x;
                    int childCount = c0136exQ.getChildCount();
                    if (childCount > 0) {
                        i = (childCount / 2) + (iC * i2);
                    } else {
                        i = -1;
                    }
                } else {
                    if (this.O != EnumC0176r.Widgets) {
                        throw new RuntimeException("Invalid ContentType");
                    }
                    int size = this.V.size();
                    C0120eh c0120eh = (C0120eh) c(iC);
                    int i3 = this.ag * this.ah;
                    int childCount2 = c0120eh.getChildCount();
                    if (childCount2 > 0) {
                        i = (childCount2 / 2) + (iC * i3) + size;
                    } else {
                        i = -1;
                    }
                }
            } else {
                i = -1;
            }
            this.T = i;
        }
        return this.T;
    }

    @Override // com.android.launcher3.dX
    final View c(int i) {
        return getChildAt(d(i));
    }

    @Override // com.android.launcher3.dH
    public final void c(Launcher launcher, boolean z, boolean z2) {
        this.aA = false;
        Iterator it = this.aB.iterator();
        while (it.hasNext()) {
            a((C0184z) it.next(), false);
        }
        this.aB.clear();
        Iterator it2 = this.aC.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.aC.clear();
        this.B = !z2;
    }

    public final void c(ArrayList arrayList) {
        if (cB.o()) {
            return;
        }
        f(arrayList);
        aa();
    }

    final void c_() {
        if (this.Z || !B()) {
            return;
        }
        this.Z = true;
        int[] iArr = new int[2];
        int[] iArrA = this.ak.a(this.aa, this.ab);
        this.P.g().a(this, iArr);
        iArrA[0] = iArrA[0] + ((getMeasuredWidth() - this.ak.getMeasuredWidth()) / 2) + iArr[0];
        iArrA[1] = (iArr[1] - this.P.g().getPaddingTop()) + iArrA[1];
    }

    @Override // com.android.launcher3.dX
    protected final int d(int i) {
        return (getChildCount() - i) - 1;
    }

    public final void d(ArrayList arrayList) {
        if (cB.o()) {
            return;
        }
        g(arrayList);
        aa();
    }

    @Override // com.android.launcher3.InterfaceC0124el
    public final void e() {
        if (this.ay) {
            return;
        }
        b(false);
    }

    @Override // com.android.launcher3.dX
    protected final void e(int i) {
        float measuredWidth;
        float interpolation;
        boolean z = z();
        super.e(i);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View viewC = c(i2);
            if (viewC != null) {
                float fA = a(i, viewC, i2);
                float fMax = Math.max(0.0f, fA);
                float fMin = Math.min(0.0f, fA);
                if (z) {
                    measuredWidth = viewC.getMeasuredWidth() * fMax;
                    interpolation = this.ao.getInterpolation(Math.abs(fMax));
                } else {
                    measuredWidth = viewC.getMeasuredWidth() * fMin;
                    interpolation = this.ao.getInterpolation(Math.abs(fMin));
                }
                float f = (1.0f - interpolation) + (interpolation * aq);
                float interpolation2 = (!z || fA <= 0.0f) ? (z || fA >= 0.0f) ? this.au.getInterpolation(1.0f - fA) : this.at.getInterpolation(1.0f - Math.abs(fA)) : this.at.getInterpolation(1.0f - Math.abs(fMax));
                viewC.setCameraDistance(this.e * ap);
                int measuredWidth2 = viewC.getMeasuredWidth();
                int measuredHeight = viewC.getMeasuredHeight();
                float f2 = z ? 1.0f - ar : ar;
                boolean z2 = z ? fA > 0.0f : fA < 0.0f;
                boolean z3 = z ? fA < 0.0f : fA > 0.0f;
                if (i2 == 0 && z2) {
                    viewC.setPivotX(measuredWidth2 * f2);
                    viewC.setRotationY((-as) * fA);
                    f = 1.0f;
                    interpolation2 = 1.0f;
                    measuredWidth = 0.0f;
                } else if (i2 == getChildCount() - 1 && z3) {
                    viewC.setPivotX((1.0f - f2) * measuredWidth2);
                    viewC.setRotationY((-as) * fA);
                    f = 1.0f;
                    interpolation2 = 1.0f;
                    measuredWidth = 0.0f;
                } else {
                    viewC.setPivotY(measuredHeight / 2.0f);
                    viewC.setPivotX(measuredWidth2 / 2.0f);
                    viewC.setRotationY(0.0f);
                }
                viewC.setTranslationX(measuredWidth);
                viewC.setScaleX(f);
                viewC.setScaleY(f);
                viewC.setAlpha(interpolation2);
                if (interpolation2 == 0.0f) {
                    viewC.setVisibility(4);
                } else if (viewC.getVisibility() != 0) {
                    viewC.setVisibility(0);
                }
            }
        }
        ac();
    }

    public final void e(ArrayList arrayList) {
        if (cB.o()) {
            return;
        }
        g(arrayList);
        f(arrayList);
        aa();
    }

    @Override // com.android.launcher3.dX
    protected final int f(int i) {
        int childCount = getChildCount();
        return Math.max(Math.min(i - 2, childCount - Math.min(childCount, 5)), 0);
    }

    @Override // com.android.launcher3.dH
    public final View f() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    @Override // com.android.launcher3.dX
    protected final int g(int i) {
        int childCount = getChildCount();
        return Math.min(Math.max(i + 2, Math.min(childCount, 5) - 1), childCount - 1);
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final void g() {
        a((View) null, true, true);
        b(false);
        this.ay = false;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final boolean h() {
        return true;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final boolean i() {
        return false;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final float j() {
        C0017al c0017alA = cB.a().i().a();
        return c0017alA.t / c0017alA.o;
    }

    public final void k() {
        ab();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewC = c(i);
            if (viewC instanceof C0120eh) {
                ((C0120eh) viewC).a();
                this.E.set(i, true);
            }
        }
    }

    public final EnumC0176r l() {
        return this.O;
    }

    @Override // com.android.launcher3.dX
    public final void m() {
        N();
        removeAllViews();
        ab();
        Context context = getContext();
        if (this.O == EnumC0176r.Applications) {
            for (int i = 0; i < this.al; i++) {
                C0167i c0167i = new C0167i(context);
                c0167i.b(this.w, this.x);
                a(c0167i, 8);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.ae, Integer.MIN_VALUE);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.af, Integer.MIN_VALUE);
                c0167i.setMinimumWidth(this.ae);
                c0167i.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                c0167i.setPadding(this.an.left, this.an.top, this.an.right, this.an.bottom);
                a(c0167i, 0);
                addView(c0167i, new C0115ec(-1, -1));
            }
        } else {
            if (this.O != EnumC0176r.Widgets) {
                throw new RuntimeException("Invalid ContentType");
            }
            for (int i2 = 0; i2 < this.am; i2++) {
                C0120eh c0120eh = new C0120eh(context, this.ag, this.ah);
                int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(this.ae, Integer.MIN_VALUE);
                int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(this.af, Integer.MIN_VALUE);
                c0120eh.setMinimumWidth(this.ae);
                c0120eh.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                addView(c0120eh, new C0115ec(-1, -1));
            }
        }
        M();
    }

    public final int n() {
        return this.ae;
    }

    @Override // com.android.launcher3.dX
    protected final void o() {
        super.o();
        this.B = true;
        this.T = -1;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.P.w() || this.P.h().aa()) {
            return;
        }
        if (view instanceof PagedViewIcon) {
            C0086d c0086d = (C0086d) view.getTag();
            if (this.U != null) {
                this.U.a();
            }
            this.P.a(view, c0086d.f256a, c0086d);
            this.P.c().a(c0086d.f256a, null);
            return;
        }
        if (view instanceof PagedViewWidget) {
            if (this.az != null) {
                this.az.cancel();
            }
            this.az = Toast.makeText(getContext(), R.string.long_press_widget_to_add, 0);
            this.az.show();
            float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.dragViewOffsetY);
            ImageView imageView = (ImageView) view.findViewById(R.id.widget_preview);
            AnimatorSet animatorSetB = C0082cw.b();
            ObjectAnimator objectAnimatorA = C0082cw.a(imageView, "translationY", dimensionPixelSize);
            objectAnimatorA.setDuration(125L);
            ObjectAnimator objectAnimatorA2 = C0082cw.a(imageView, "translationY", 0.0f);
            objectAnimatorA2.setDuration(100L);
            animatorSetB.play(objectAnimatorA).before(objectAnimatorA2);
            animatorSetB.setInterpolator(new AccelerateInterpolator());
            animatorSetB.start();
        }
    }

    @Override // com.android.launcher3.AbstractViewOnLongClickListenerC0125em, com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ab();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        C0017al c0017alA = cB.a().i().a();
        setPadding(c0017alA.j, c0017alA.j * 2, c0017alA.j, c0017alA.j * 2);
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        return C0032b.b(view, i, keyEvent);
    }

    @Override // com.android.launcher3.dX, android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        if (!B() && ((cB.o() || !this.V.isEmpty()) && !this.W.isEmpty())) {
            A();
            setMeasuredDimension(size2, size3);
            C0017al c0017alA = cB.a().i().a();
            this.ak.setPadding(this.u, this.s, this.v, this.t);
            this.w = c0017alA.F;
            this.x = c0017alA.E;
            Z();
            this.ae = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            this.af = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            this.ak.measure(View.MeasureSpec.makeMeasureSpec(this.ae, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.af, Integer.MIN_VALUE));
            boolean zD = ad().d();
            int i3 = this.T;
            if (i3 < 0) {
                size = 0;
            } else if (i3 < this.V.size()) {
                size = i3 / (this.w * this.x);
            } else {
                size = (i3 - this.V.size()) / (this.ag * this.ah);
            }
            c(Math.max(0, size), zD);
            if (!zD) {
                post(new RunnableC0168j(this));
            }
        }
        super.onMeasure(i, i2);
    }

    public final void p() {
        this.T = -1;
        AppsCustomizeTabHost appsCustomizeTabHostAd = ad();
        String currentTabTag = appsCustomizeTabHostAd.getCurrentTabTag();
        if (currentTabTag != null && !currentTabTag.equals(AppsCustomizeTabHost.c(EnumC0176r.Applications))) {
            appsCustomizeTabHostAd.b(EnumC0176r.Applications);
        }
        if (this.i != 0) {
            if (a.a.a.c.d.f(getContext())) {
                q(this.i);
            } else {
                q(0);
            }
        }
    }

    public final void q() {
        C0086d.a("AppsCustomizePagedView", "mApps", this.V);
        ArrayList arrayList = this.W;
        Log.d("AppsCustomizePagedView", String.valueOf("mWidgets") + " size=" + arrayList.size());
        for (Object obj : arrayList) {
            if (obj instanceof AppWidgetProviderInfo) {
                AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) obj;
                Log.d("AppsCustomizePagedView", "   label=\"" + appWidgetProviderInfo.label + "\" previewImage=" + appWidgetProviderInfo.previewImage + " resizeMode=" + appWidgetProviderInfo.resizeMode + " configure=" + appWidgetProviderInfo.configure + " initialLayout=" + appWidgetProviderInfo.initialLayout + " minWidth=" + appWidgetProviderInfo.minWidth + " minHeight=" + appWidgetProviderInfo.minHeight);
            } else if (obj instanceof ResolveInfo) {
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                Log.d("AppsCustomizePagedView", "   label=\"" + ((Object) resolveInfo.loadLabel(this.S)) + "\" icon=" + resolveInfo.icon);
            }
        }
    }

    public final void r() {
        ab();
    }

    public final void s() {
        if (this.U != null) {
            this.U.b();
            this.U = null;
        }
    }

    @Override // com.android.launcher3.dX
    protected final String t() {
        int i;
        int i2;
        int i3 = this.k != -1 ? this.k : this.i;
        if (this.O == EnumC0176r.Applications) {
            i = R.string.apps_customize_apps_scroll_format;
            i2 = this.al;
        } else {
            if (this.O != EnumC0176r.Widgets) {
                throw new RuntimeException("Invalid ContentType");
            }
            i = R.string.apps_customize_widgets_scroll_format;
            i2 = this.am;
        }
        return String.format(getContext().getString(i), Integer.valueOf(i3 + 1), Integer.valueOf(i2));
    }
}
