package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class CellLayout extends ViewGroup {
    private static final Paint ao;
    private int A;
    private float B;
    private float C;
    private boolean D;
    private Drawable E;
    private Drawable F;
    private Drawable G;
    private Drawable H;
    private Drawable I;
    private Rect J;
    private Rect K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private Rect[] Q;
    private float[] R;
    private bB[] S;
    private int T;
    private final Paint U;
    private BubbleTextView V;
    private HashMap W;
    private HashMap Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Launcher f73a;
    private boolean aa;
    private final int[] ab;
    private boolean ac;
    private TimeInterpolator ad;
    private C0136ex ae;
    private boolean af;
    private float ag;
    private float ah;
    private ArrayList ai;
    private Rect aj;
    private int[] ak;
    private int[] al;
    private aG am;
    private Rect an;
    private final Stack ap;
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
    private int l;
    private boolean m;
    private boolean n;
    private final Rect o;
    private final L p;
    private final int[] q;
    private final int[] r;
    private int[] s;
    private boolean[][] t;
    private boolean[][] u;
    private boolean v;
    private View.OnTouchListener w;
    private ArrayList x;
    private int[] y;
    private float z;

    public class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f74a;
        public int b;
        public int c;
        public int d;
        public boolean e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public boolean j;
        int k;
        int l;
        boolean m;

        public LayoutParams(int i, int i2, int i3, int i4) {
            super(-1, -1);
            this.h = true;
            this.i = false;
            this.j = true;
            this.f74a = i;
            this.b = i2;
            this.f = i3;
            this.g = i4;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = true;
            this.i = false;
            this.j = true;
            this.f = 1;
            this.g = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.h = true;
            this.i = false;
            this.j = true;
            this.f = 1;
            this.g = 1;
        }

        public final void a(int i, int i2, int i3, int i4, boolean z, int i5) {
            if (this.h) {
                int i6 = this.f;
                int i7 = this.g;
                int i8 = this.e ? this.c : this.f74a;
                int i9 = this.e ? this.d : this.b;
                if (z) {
                    i8 = (i5 - i8) - this.f;
                }
                this.width = ((((i6 - 1) * i3) + (i6 * i)) - this.leftMargin) - this.rightMargin;
                this.height = (((i7 * i2) + ((i7 - 1) * i4)) - this.topMargin) - this.bottomMargin;
                this.k = (i8 * (i + i3)) + this.leftMargin;
                this.l = ((i2 + i4) * i9) + this.topMargin;
            }
        }

        public int getHeight() {
            return this.height;
        }

        public int getWidth() {
            return this.width;
        }

        public int getX() {
            return this.k;
        }

        public int getY() {
            return this.l;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setWidth(int i) {
            this.width = i;
        }

        public void setX(int i) {
            this.k = i;
        }

        public void setY(int i) {
            this.l = i;
        }

        public String toString() {
            return "(" + this.f74a + ", " + this.b + ")";
        }
    }

    static {
        new PorterDuffXfermode(PorterDuff.Mode.ADD);
        ao = new Paint();
    }

    public CellLayout(Context context) {
        this(context, null);
    }

    public CellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2 = 0;
        this.m = false;
        this.n = false;
        this.o = new Rect();
        this.p = new L();
        this.q = new int[2];
        this.r = new int[2];
        this.s = new int[2];
        this.v = false;
        this.x = new ArrayList();
        this.y = new int[]{-1, -1};
        this.z = 0.65f;
        this.A = 0;
        this.C = 1.0f;
        this.D = true;
        this.M = -1;
        this.N = -1;
        this.O = false;
        this.P = false;
        this.Q = new Rect[4];
        this.R = new float[this.Q.length];
        this.S = new bB[this.Q.length];
        this.T = 0;
        this.U = new Paint();
        this.W = new HashMap();
        this.Z = new HashMap();
        this.aa = false;
        this.ab = new int[2];
        this.ac = false;
        this.af = false;
        this.ag = 1.0f;
        this.ai = new ArrayList();
        this.aj = new Rect();
        this.ak = new int[2];
        this.al = new int[2];
        this.an = new Rect();
        this.ap = new Stack();
        this.am = new aG(context);
        setWillNotDraw(false);
        setClipToPadding(false);
        this.f73a = (Launcher) context;
        C0017al c0017alA = cB.a().i().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.b, i, 0);
        this.c = -1;
        this.b = -1;
        this.e = -1;
        this.d = -1;
        this.h = 0;
        this.j = 0;
        this.i = 0;
        this.k = 0;
        this.l = Integer.MAX_VALUE;
        this.f = (int) c0017alA.d;
        this.g = (int) c0017alA.c;
        this.t = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.f, this.g);
        this.u = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.f, this.g);
        this.al[0] = -100;
        this.al[1] = -100;
        typedArrayObtainStyledAttributes.recycle();
        setAlwaysDrawnWithCacheEnabled(false);
        Resources resources = getResources();
        this.ag = c0017alA.B / c0017alA.o;
        this.E = resources.getDrawable(R.drawable.screenpanel);
        this.F = resources.getDrawable(R.drawable.screenpanel_hover);
        this.H = resources.getDrawable(R.drawable.overscroll_glow_left);
        this.I = resources.getDrawable(R.drawable.overscroll_glow_right);
        this.L = resources.getDimensionPixelSize(R.dimen.workspace_overscroll_drawable_padding);
        this.ah = 0.12f * c0017alA.o;
        this.E.setFilterBitmap(true);
        this.F.setFilterBitmap(true);
        this.ad = new DecelerateInterpolator(2.5f);
        int[] iArr = this.ab;
        this.ab[1] = -1;
        iArr[0] = -1;
        for (int i3 = 0; i3 < this.Q.length; i3++) {
            this.Q[i3] = new Rect(-1, -1, -1, -1);
        }
        int integer = resources.getInteger(R.integer.config_dragOutlineFadeTime);
        float integer2 = resources.getInteger(R.integer.config_dragOutlineMaxAlpha);
        Arrays.fill(this.R, 0.0f);
        while (true) {
            int i4 = i2;
            if (i4 >= this.S.length) {
                this.J = new Rect();
                this.K = new Rect();
                this.ae = new C0136ex(context);
                this.ae.a(this.b, this.c, this.j, this.k, this.f, this.g);
                addView(this.ae);
                return;
            }
            bB bBVar = new bB(this, integer, 0.0f, integer2);
            bBVar.d().setInterpolator(this.ad);
            bBVar.d().addUpdateListener(new G(this, bBVar, i4));
            bBVar.d().addListener(new H(this, bBVar));
            this.S[i4] = bBVar;
            i2 = i4 + 1;
        }
    }

    private ItemConfiguration a(int i, int i2, int i3, int i4, int i5, int i6, ItemConfiguration m) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        a(i, i2, i3, i4, i5, i6, (View) null, iArr, iArr2);
        if (iArr[0] < 0 || iArr[1] < 0) {
            m.isSolution = false;
        } else {
            a(m, false);
            m.dragX = iArr[0];
            m.dragY = iArr[1];
            m.dragSpanX = iArr2[0];
            m.dragSpanY = iArr2[1];
            m.isSolution = true;
        }
        return m;
    }

    private ItemConfiguration a(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr, View view, boolean z, ItemConfiguration m) {
        boolean z2;
        CellAndSpan k;
        int i7 = i6;
        int i8 = i5;
        while (true) {
            a(m, false);
            boolean[][] zArr = this.u;
            for (int i9 = 0; i9 < this.f; i9++) {
                for (int i10 = 0; i10 < this.g; i10++) {
                    zArr[i9][i10] = this.t[i9][i10];
                }
            }
            int[] iArrC = c(i, i2, i8, i7, new int[2]);
            int i11 = iArrC[0];
            int i12 = iArrC[1];
            if (i11 < 0 || i12 < 0) {
                z2 = false;
            } else {
                this.ai.clear();
                this.aj.set(i11, i12, i11 + i8, i12 + i7);
                if (view != null && (k = (CellAndSpan) m.cells.get(view)) != null) {
                    k.cellX = i11;
                    k.cellY = i12;
                }
                Rect rect = new Rect(i11, i12, i11 + i8, i12 + i7);
                Rect rect2 = new Rect();
                Iterator it = m.cells.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        m.intersectingViews = new ArrayList(this.ai);
                        if (b(this.ai, this.aj, iArr, view, m) || addViewsToTempLocation(this.ai, this.aj, iArr, m)) {
                            z2 = true;
                            break;
                        }
                        Iterator it2 = this.ai.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z2 = true;
                                break;
                            }
                            if (!a((View) it2.next(), this.aj, iArr, m)) {
                                z2 = false;
                                break;
                            }
                        }
                    } else {
                        View view2 = (View) it.next();
                        if (view2 != view) {
                            CellAndSpan k2 = (CellAndSpan) m.cells.get(view2);
                            LayoutParams layoutParams = (LayoutParams) view2.getLayoutParams();
                            rect2.set(k2.cellX, k2.cellY, k2.cellX + k2.spanX, k2.spanY + k2.cellY);
                            if (!Rect.intersects(rect, rect2)) {
                                continue;
                            } else {
                                if (!layoutParams.j) {
                                    z2 = false;
                                    break;
                                }
                                this.ai.add(view2);
                            }
                        }
                    }
                }
            }
            if (z2) {
                m.isSolution = true;
                m.dragX = iArrC[0];
                m.dragY = iArrC[1];
                m.dragSpanX = i8;
                m.dragSpanY = i7;
                break;
            }
            if (i8 > i3 && (i4 == i7 || z)) {
                i8--;
                z = false;
            } else {
                if (i7 <= i4) {
                    m.isSolution = false;
                    break;
                }
                i7--;
                z = true;
            }
        }
        return m;
    }

    private void a() {
        Iterator it = this.Z.values().iterator();
        while (it.hasNext()) {
            ((N) it.next()).b();
        }
        this.Z.clear();
    }

    private void a(int i, int i2, int i3, int i4, View view, Rect rect, ArrayList arrayList) {
        if (rect != null) {
            rect.set(i, i2, i + i3, i2 + i4);
        }
        arrayList.clear();
        Rect rect2 = new Rect(i, i2, i + i3, i2 + i4);
        Rect rect3 = new Rect();
        int childCount = this.ae.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = this.ae.getChildAt(i5);
            if (childAt != view) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                rect3.set(layoutParams.f74a, layoutParams.b, layoutParams.f74a + layoutParams.f, layoutParams.g + layoutParams.b);
                if (Rect.intersects(rect2, rect3)) {
                    this.ai.add(childAt);
                    if (rect != null) {
                        rect.union(rect3);
                    }
                }
            }
        }
    }

    private void a(int i, int i2, int i3, int i4, boolean[][] zArr, boolean z) {
        if (i < 0 || i2 < 0) {
            return;
        }
        for (int i5 = i; i5 < i + i3 && i5 < this.f; i5++) {
            for (int i6 = i2; i6 < i2 + i4 && i6 < this.g; i6++) {
                zArr[i5][i6] = z;
            }
        }
    }

    private void a(Rect rect, boolean[][] zArr, boolean z) {
        a(rect.left, rect.top, rect.width(), rect.height(), zArr, true);
    }

    private void a(View view, boolean[][] zArr) {
        if (view == null || view.getParent() != this.ae) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        a(layoutParams.f74a, layoutParams.b, layoutParams.f, layoutParams.g, zArr, true);
    }

    private void a(ItemConfiguration m, View view) {
        for (int i = 0; i < this.f; i++) {
            for (int i2 = 0; i2 < this.g; i2++) {
                this.u[i][i2] = false;
            }
        }
        int childCount = this.ae.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.ae.getChildAt(i3);
            if (childAt != view) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                CellAndSpan k = (CellAndSpan) m.cells.get(childAt);
                if (k != null) {
                    layoutParams.c = k.cellX;
                    layoutParams.d = k.cellY;
                    layoutParams.f = k.spanX;
                    layoutParams.g = k.spanY;
                    a(k.cellX, k.cellY, k.spanX, k.spanY, this.u, true);
                }
            }
        }
        a(m.dragX, m.dragY, m.dragSpanX, m.dragSpanY, this.u, true);
    }

    private void a(ItemConfiguration m, View view, int i) {
        int childCount = this.ae.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.ae.getChildAt(i2);
            if (childAt != view) {
                CellAndSpan k = (CellAndSpan) m.cells.get(childAt);
                boolean z = (i != 0 || m.intersectingViews == null || m.intersectingViews.contains(childAt)) ? false : true;
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (k != null && !z) {
                    new N(this, childAt, i, layoutParams.f74a, layoutParams.b, k.cellX, k.cellY, k.spanX, k.spanY).a();
                }
            }
        }
    }

    private void a(ItemConfiguration m, View view, boolean z) {
        CellAndSpan k;
        boolean[][] zArr = this.u;
        for (int i = 0; i < this.f; i++) {
            for (int i2 = 0; i2 < this.g; i2++) {
                zArr[i][i2] = false;
            }
        }
        int childCount = this.ae.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.ae.getChildAt(i3);
            if (childAt != view && (k = (CellAndSpan) m.cells.get(childAt)) != null) {
                a(childAt, k.cellX, k.cellY, 150, 0, false, false);
                a(k.cellX, k.cellY, k.spanX, k.spanY, zArr, true);
            }
        }
        if (z) {
            a(m.dragX, m.dragY, m.dragSpanX, m.dragSpanY, zArr, true);
        }
    }

    private void a(ItemConfiguration m, boolean z) {
        int childCount = this.ae.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.ae.getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            m.add(childAt, new CellAndSpan(layoutParams.f74a, layoutParams.b, layoutParams.f, layoutParams.g));
        }
    }

    public static void a(bD bDVar) {
        int i;
        int i2;
        if (bDVar instanceof cF) {
            i = ((cF) bDVar).c;
            i2 = ((cF) bDVar).d;
        } else if (!(bDVar instanceof C0129eq)) {
            bDVar.m = 1;
            bDVar.l = 1;
            return;
        } else {
            i = ((C0129eq) bDVar).b;
            i2 = ((C0129eq) bDVar).c;
        }
        int[] iArrA = a(i, i2, (int[]) null);
        bDVar.l = iArrA[0];
        bDVar.m = iArrA[1];
    }

    private void a(Stack stack) {
        while (!stack.isEmpty()) {
            this.ap.push((Rect) stack.pop());
        }
    }

    private boolean a(View view, Rect rect, int[] iArr, ItemConfiguration m) {
        boolean z;
        CellAndSpan k = (CellAndSpan) m.cells.get(view);
        a(k.cellX, k.cellY, k.spanX, k.spanY, this.u, false);
        a(rect, this.u, true);
        a(k.cellX, k.cellY, k.spanX, k.spanY, iArr, this.u, (boolean[][]) null, this.s);
        if (this.s[0] < 0 || this.s[1] < 0) {
            z = false;
        } else {
            k.cellX = this.s[0];
            k.cellY = this.s[1];
            z = true;
        }
        a(k.cellX, k.cellY, k.spanX, k.spanY, this.u, true);
        return z;
    }

    private boolean pushViewsToTempLocation(ArrayList<View> views, Rect occupiedByDrop,
            int[] direction, View dragView, ItemConfiguration currentState) {
        ViewCluster cluster = new ViewCluster(this.g, this.f, views, currentState);
        Rect clusterBounds = cluster.getBoundingRect();
        int edge;
        int pushDistance;
        boolean failed = false;

        if (direction[0] < 0) {
            edge = ViewCluster.LEFT;
            pushDistance = clusterBounds.right - occupiedByDrop.left;
        } else if (direction[0] > 0) {
            edge = ViewCluster.RIGHT;
            pushDistance = occupiedByDrop.right - clusterBounds.left;
        } else if (direction[1] < 0) {
            edge = ViewCluster.TOP;
            pushDistance = clusterBounds.bottom - occupiedByDrop.top;
        } else {
            edge = ViewCluster.BOTTOM;
            pushDistance = occupiedByDrop.bottom - clusterBounds.top;
        }

        if (pushDistance <= 0) return false;

        for (View view : views) {
            CellAndSpan cell = currentState.cells.get(view);
            a(cell.cellX, cell.cellY, cell.spanX, cell.spanY, this.u, false);
        }
        currentState.save();
        cluster.sortConfigurationForEdgePush(edge);

        while (pushDistance > 0 && !failed) {
            for (View candidate : currentState.sortedViews) {
                if (!cluster.views.contains(candidate) && candidate != dragView
                        && cluster.isViewTouchingEdge(candidate, edge)) {
                    LayoutParams params = (LayoutParams) candidate.getLayoutParams();
                    if (!params.j) {
                        failed = true;
                        break;
                    }
                    cluster.addView(candidate);
                    CellAndSpan cell = currentState.cells.get(candidate);
                    a(cell.cellX, cell.cellY, cell.spanX, cell.spanY, this.u, false);
                }
            }
            pushDistance--;
            cluster.shift(edge, 1);
        }

        clusterBounds = cluster.getBoundingRect();
        boolean foundSolution = !failed && clusterBounds.left >= 0
                && clusterBounds.right <= this.f && clusterBounds.top >= 0
                && clusterBounds.bottom <= this.g;
        if (!foundSolution) currentState.restore();

        for (View view : cluster.views) {
            CellAndSpan cell = currentState.cells.get(view);
            a(cell.cellX, cell.cellY, cell.spanX, cell.spanY, this.u, true);
        }
        return foundSolution;
    }

    private boolean addViewsToTempLocation(ArrayList arrayList, Rect rect, int[] iArr, ItemConfiguration m) {
        boolean z;
        if (arrayList.size() == 0) {
            return true;
        }
        Iterator it = arrayList.iterator();
        Rect rect2 = null;
        while (it.hasNext()) {
            CellAndSpan k = (CellAndSpan) m.cells.get((View) it.next());
            if (rect2 == null) {
                rect2 = new Rect(k.cellX, k.cellY, k.cellX + k.spanX, k.spanY + k.cellY);
            } else {
                rect2.union(k.cellX, k.cellY, k.cellX + k.spanX, k.spanY + k.cellY);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            CellAndSpan k2 = (CellAndSpan) m.cells.get((View) it2.next());
            a(k2.cellX, k2.cellY, k2.spanX, k2.spanY, this.u, false);
        }
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, rect2.width(), rect2.height());
        int i = rect2.top;
        int i2 = rect2.left;
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            CellAndSpan k3 = (CellAndSpan) m.cells.get((View) it3.next());
            a(k3.cellX - i2, k3.cellY - i, k3.spanX, k3.spanY, zArr, true);
        }
        a(rect, this.u, true);
        a(rect2.left, rect2.top, rect2.width(), rect2.height(), iArr, this.u, zArr, this.s);
        if (this.s[0] < 0 || this.s[1] < 0) {
            z = false;
        } else {
            int i3 = this.s[0] - rect2.left;
            int i4 = this.s[1] - rect2.top;
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                CellAndSpan k4 = (CellAndSpan) m.cells.get((View) it4.next());
                k4.cellX += i3;
                k4.cellY += i4;
            }
            z = true;
        }
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            CellAndSpan k5 = (CellAndSpan) m.cells.get((View) it5.next());
            a(k5.cellX, k5.cellY, k5.spanX, k5.spanY, this.u, true);
        }
        return z;
    }

    private boolean a(int[] iArr, int i, int i2, int i3, int i4, View view, boolean[][] zArr) {
        int iMin;
        b((View) null, zArr);
        boolean z = false;
        while (true) {
            int iMax = i3 >= 0 ? Math.max(0, i3 - (i - 1)) : 0;
            int i5 = this.f - (i - 1);
            int iMin2 = i3 >= 0 ? Math.min(i5, (i == 1 ? 1 : 0) + i3 + (i - 1)) : i5;
            int iMax2 = i4 >= 0 ? Math.max(0, i4 - (i2 - 1)) : 0;
            int i6 = this.g - (i2 - 1);
            if (i4 >= 0) {
                iMin = Math.min(i6, (i2 == 1 ? 1 : 0) + i4 + (i2 - 1));
            } else {
                iMin = i6;
            }
            boolean z2 = z;
            for (int i7 = iMax2; i7 < iMin && !z2; i7++) {
                int i8 = iMax;
                while (i8 < iMin2) {
                    int i9 = 0;
                    while (true) {
                        if (i9 >= i) {
                            if (iArr != null) {
                                iArr[0] = i8;
                                iArr[1] = i7;
                            }
                            z2 = true;
                            break;
                        }
                        int i10 = 0;
                        while (true) {
                            if (i10 >= i2) {
                                i9++;
                            } else {
                                if (zArr[i8 + i9][i7 + i10]) {
                                    break;
                                }
                                i10++;
                            }
                        }
                    }
                    i8 = i8 + i9 + 1;
                }
            }
            if (i3 == -1 && i4 == -1) {
                a((View) null, zArr);
                return z2;
            }
            i3 = -1;
            i4 = -1;
            z = z2;
        }
    }

    static boolean a(int[] iArr, int i, int i2, int i3, int i4, boolean[][] zArr) {
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                boolean z = !zArr[i6][i5];
                for (int i7 = i6; i7 < (i6 + i) - 1 && i6 < i3; i7++) {
                    for (int i8 = i5; i8 < (i5 + i2) - 1 && i5 < i4; i8++) {
                        z = z && !zArr[i7][i8];
                        if (!z) {
                            break;
                        }
                    }
                }
                if (z) {
                    iArr[0] = i6;
                    iArr[1] = i5;
                    return true;
                }
            }
        }
        return false;
    }

    private int[] a(int i, int i2, int i3, int i4, int i5, int i6, View view, boolean z, int[] iArr, int[] iArr2, boolean[][] zArr) {
        int i7;
        int i8;
        boolean z2;
        double d;
        int i9;
        boolean z3;
        int i10;
        boolean z4;
        if (this.ap.isEmpty()) {
            for (int i11 = 0; i11 < this.f * this.g; i11++) {
                this.ap.push(new Rect());
            }
        }
        b(view, zArr);
        int i12 = (int) (i - (((this.b + this.j) * (i5 - 1)) / 2.0f));
        int i13 = (int) (i2 - (((this.c + this.k) * (i6 - 1)) / 2.0f));
        if (iArr == null) {
            iArr = new int[2];
        }
        double d2 = Double.MAX_VALUE;
        Rect rect = new Rect(-1, -1, -1, -1);
        Stack stack = new Stack();
        int i14 = this.f;
        int i15 = this.g;
        if (i3 > 0 && i4 > 0 && i5 > 0 && i6 > 0 && i5 >= i3 && i6 >= i4) {
            int i16 = 0;
            while (true) {
                int i17 = i16;
                if (i17 >= i15 - (i4 - 1)) {
                    break;
                }
                int i18 = 0;
                while (i18 < i14 - (i3 - 1)) {
                    if (z) {
                        int i19 = 0;
                        while (true) {
                            int i20 = i19;
                            if (i20 >= i3) {
                                boolean z5 = i3 >= i5;
                                boolean z6 = i4 >= i6;
                                boolean z7 = true;
                                int i21 = i4;
                                int i22 = i3;
                                while (true) {
                                    if (z5 && z6) {
                                        break;
                                    }
                                    if (z7 && !z5) {
                                        boolean z8 = z5;
                                        for (int i23 = 0; i23 < i21; i23++) {
                                            if (i18 + i22 > i14 - 1 || zArr[i18 + i22][i17 + i23]) {
                                                z8 = true;
                                            }
                                        }
                                        if (z8) {
                                            i10 = i21;
                                            z4 = z8;
                                            int i24 = i22;
                                            z3 = z6;
                                            i9 = i24;
                                        } else {
                                            int i25 = i22 + 1;
                                            i10 = i21;
                                            z4 = z8;
                                            z3 = z6;
                                            i9 = i25;
                                        }
                                    } else if (z6) {
                                        boolean z9 = z6;
                                        i9 = i22;
                                        z3 = z9;
                                        boolean z10 = z5;
                                        i10 = i21;
                                        z4 = z10;
                                    } else {
                                        boolean z11 = z6;
                                        for (int i26 = 0; i26 < i22; i26++) {
                                            if (i17 + i21 > i15 - 1 || zArr[i18 + i26][i17 + i21]) {
                                                z11 = true;
                                            }
                                        }
                                        if (z11) {
                                            i9 = i22;
                                            z3 = z11;
                                            boolean z12 = z5;
                                            i10 = i21;
                                            z4 = z12;
                                        } else {
                                            i9 = i22;
                                            z3 = z11;
                                            boolean z13 = z5;
                                            i10 = i21 + 1;
                                            z4 = z13;
                                        }
                                    }
                                    boolean z14 = z4 | (i9 >= i5);
                                    boolean z15 = z3 | (i10 >= i6);
                                    z7 = !z7;
                                    i21 = i10;
                                    z5 = z14;
                                    int i27 = i9;
                                    z6 = z15;
                                    i22 = i27;
                                }
                                i8 = i21;
                                i7 = i22;
                            } else {
                                int i28 = 0;
                                while (true) {
                                    if (i28 >= i4) {
                                        i19 = i20 + 1;
                                    } else if (!zArr[i18 + i20][i17 + i28]) {
                                        i28++;
                                    }
                                }
                            }
                            d = d2;
                            i18++;
                            d2 = d;
                        }
                    } else {
                        i7 = -1;
                        i8 = -1;
                    }
                    int[] iArr3 = this.q;
                    c(i18, i17, iArr3);
                    Rect rect2 = (Rect) this.ap.pop();
                    rect2.set(i18, i17, i18 + i7, i17 + i8);
                    Iterator it = stack.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z2 = false;
                            break;
                        }
                        if (((Rect) it.next()).contains(rect2)) {
                            z2 = true;
                            break;
                        }
                    }
                    stack.push(rect2);
                    double dSqrt = Math.sqrt(Math.pow(iArr3[1] - i13, 2.0d) + Math.pow(iArr3[0] - i12, 2.0d));
                    if ((dSqrt > d2 || z2) && !rect2.contains(rect)) {
                        d = d2;
                    } else {
                        iArr[0] = i18;
                        iArr[1] = i17;
                        if (iArr2 != null) {
                            iArr2[0] = i7;
                            iArr2[1] = i8;
                        }
                        rect.set(rect2);
                        d = dSqrt;
                    }
                    i18++;
                    d2 = d;
                }
                i16 = i17 + 1;
            }
            a(view, zArr);
            if (d2 == Double.MAX_VALUE) {
                iArr[0] = -1;
                iArr[1] = -1;
            }
            a(stack);
        }
        return iArr;
    }

    private int[] a(int i, int i2, int i3, int i4, int i5, int i6, View view, int[] iArr, int[] iArr2) {
        return a(i, i2, i3, i4, i5, i6, null, true, iArr, iArr2, this.t);
    }

    private int[] a(int i, int i2, int i3, int i4, View view, boolean z, int[] iArr) {
        return a(i, i2, i3, i4, i3, i4, view, z, iArr, null, this.t);
    }

    private int[] a(int i, int i2, int i3, int i4, int[] iArr, boolean[][] zArr, boolean[][] zArr2, int[] iArr2) {
        float f;
        if (iArr2 == null) {
            iArr2 = new int[2];
        }
        float f2 = Float.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = this.f;
        int i7 = this.g;
        int i8 = 0;
        while (i8 < i7 - (i4 - 1)) {
            int i9 = 0;
            int i10 = i5;
            while (i9 < i6 - (i3 - 1)) {
                int i11 = 0;
                while (true) {
                    if (i11 >= i3) {
                        float fSqrt = (float) Math.sqrt(((i9 - i) * (i9 - i)) + ((i8 - i2) * (i8 - i2)));
                        int[] iArr3 = this.r;
                        b(i9 - i, i8 - i2, iArr3);
                        int i12 = (iArr3[1] * iArr[1]) + (iArr[0] * iArr3[0]);
                        if (Float.compare(fSqrt, f2) < 0 || (Float.compare(fSqrt, f2) == 0 && i12 > i10)) {
                            iArr2[0] = i9;
                            iArr2[1] = i8;
                            i10 = i12;
                            f = fSqrt;
                            break;
                        }
                    } else {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= i4) {
                                i11++;
                            } else if (!zArr[i9 + i11][i8 + i13] || (zArr2 != null && !zArr2[i11][i13])) {
                                i13++;
                            }
                        }
                    }
                    f = f2;
                    break;
                }
                i9++;
                f2 = f;
            }
            i8++;
            i5 = i10;
        }
        if (f2 == Float.MAX_VALUE) {
            iArr2[0] = -1;
            iArr2[1] = -1;
        }
        return iArr2;
    }

    public static int[] a(int i, int i2, int[] iArr) {
        C0017al c0017alA = cB.a().i().a();
        Rect rectA = c0017alA.a(c0017alA.f ? 0 : 1);
        int iMin = Math.min(((c0017alA.k - rectA.left) - rectA.right) / ((int) c0017alA.d), ((c0017alA.l - rectA.top) - rectA.bottom) / ((int) c0017alA.c));
        return new int[]{(int) Math.ceil(i / iMin), (int) Math.ceil(i2 / iMin)};
    }

    private void b() {
        for (int i = 0; i < this.f; i++) {
            for (int i2 = 0; i2 < this.g; i2++) {
                this.t[i][i2] = this.u[i][i2];
            }
        }
        int childCount = this.ae.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.ae.getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            bD bDVar = (bD) childAt.getTag();
            if (bDVar != null) {
                if (bDVar.j != layoutParams.c || bDVar.k != layoutParams.d || bDVar.l != layoutParams.f || bDVar.m != layoutParams.g) {
                    bDVar.p = true;
                }
                int i4 = layoutParams.c;
                layoutParams.f74a = i4;
                bDVar.j = i4;
                int i5 = layoutParams.d;
                layoutParams.b = i5;
                bDVar.k = i5;
                bDVar.l = layoutParams.f;
                bDVar.m = layoutParams.g;
            }
        }
        this.f73a.h().b(this);
    }

    private static void b(float f, float f2, int[] iArr) {
        double dAtan = Math.atan(f2 / f);
        iArr[0] = 0;
        iArr[1] = 0;
        if (Math.abs(Math.cos(dAtan)) > 0.5d) {
            iArr[0] = (int) Math.signum(f);
        }
        if (Math.abs(Math.sin(dAtan)) > 0.5d) {
            iArr[1] = (int) Math.signum(f2);
        }
    }

    private void b(int i, int i2, int i3, int i4, Rect rect) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = paddingLeft + ((this.b + this.j) * i);
        int i6 = paddingTop + ((this.c + this.k) * i2);
        rect.set(i5, i6, (this.b * i3) + ((i3 - 1) * this.j) + i5, (this.c * i4) + ((i4 - 1) * this.k) + i6);
    }

    private void b(int i, int i2, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        iArr[0] = paddingLeft + ((this.b + this.j) * i);
        iArr[1] = paddingTop + ((this.c + this.k) * i2);
    }

    static void b(View view) {
        if (view != null) {
            ((LayoutParams) view.getLayoutParams()).m = true;
            view.requestLayout();
        }
    }

    private void b(View view, boolean[][] zArr) {
        if (view == null || view.getParent() != this.ae) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        a(layoutParams.f74a, layoutParams.b, layoutParams.f, layoutParams.g, zArr, false);
    }

    private void b(BubbleTextView bubbleTextView) {
        int iC = bubbleTextView.c();
        invalidate((bubbleTextView.getLeft() + getPaddingLeft()) - iC, (bubbleTextView.getTop() + getPaddingTop()) - iC, bubbleTextView.getRight() + getPaddingLeft() + iC, iC + bubbleTextView.getBottom() + getPaddingTop());
    }

    private boolean b(ArrayList arrayList, Rect rect, int[] iArr, View view, ItemConfiguration m) {
        if (Math.abs(iArr[0]) + Math.abs(iArr[1]) > 1) {
            int i = iArr[1];
            iArr[1] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[1] = i;
            int i2 = iArr[0];
            iArr[0] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[0] = i2;
            iArr[0] = -iArr[0];
            iArr[1] = -iArr[1];
            int i3 = iArr[1];
            iArr[1] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[1] = i3;
            int i4 = iArr[0];
            iArr[0] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[0] = i4;
            iArr[0] = -iArr[0];
            iArr[1] = -iArr[1];
        } else {
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[0] = -iArr[0];
            iArr[1] = -iArr[1];
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[0] = -iArr[0];
            iArr[1] = -iArr[1];
            int i5 = iArr[1];
            iArr[1] = iArr[0];
            iArr[0] = i5;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[0] = -iArr[0];
            iArr[1] = -iArr[1];
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, m)) {
                return true;
            }
            iArr[0] = -iArr[0];
            iArr[1] = -iArr[1];
            int i6 = iArr[1];
            iArr[1] = iArr[0];
            iArr[0] = i6;
        }
        return false;
    }

    private void c() {
        for (int i = 0; i < this.f; i++) {
            for (int i2 = 0; i2 < this.g; i2++) {
                this.t[i][i2] = false;
            }
        }
    }

    private void c(int i, int i2, int[] iArr) {
        a(i, i2, 1, 1, iArr);
    }

    private void g(boolean z) {
        int childCount = this.ae.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) this.ae.getChildAt(i).getLayoutParams()).e = z;
        }
    }

    public final float a(float f, float f2, int[] iArr) {
        c(iArr[0], iArr[1], this.r);
        return (float) Math.sqrt(Math.pow(f - this.r[0], 2.0d) + Math.pow(f2 - this.r[1], 2.0d));
    }

    public final void a(float f) {
        if (this.C != f) {
            this.C = f;
            invalidate();
        }
    }

    final void a(float f, boolean z) {
        if (z && this.G != this.H) {
            this.G = this.H;
        } else if (!z && this.G != this.I) {
            this.G = this.I;
        }
        this.A = Math.round(this.z * f * 255.0f);
        this.G.setAlpha(this.A);
        invalidate();
    }

    public final void a(int i, int i2) {
        this.b = i;
        this.d = i;
        this.c = i2;
        this.e = i2;
        this.ae.a(this.b, this.c, this.j, this.k, this.f, this.g);
    }

    public final void a(int i, int i2, int i3, int i4, Rect rect) {
        int i5 = this.b;
        int i6 = this.c;
        int i7 = this.j;
        int i8 = this.k;
        int i9 = (i3 * i5) + ((i3 - 1) * i7);
        int i10 = (i4 * i6) + ((i4 - 1) * i8);
        int paddingLeft = ((i5 + i7) * i) + getPaddingLeft();
        int paddingTop = ((i6 + i8) * i2) + getPaddingTop();
        rect.set(paddingLeft, paddingTop, paddingLeft + i9, paddingTop + i10);
    }

    final void a(int i, int i2, int i3, int i4, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        iArr[0] = paddingLeft + ((this.b + this.j) * i) + (((this.b * i3) + ((i3 - 1) * this.j)) / 2);
        iArr[1] = paddingTop + ((this.c + this.k) * i2) + (((this.c * i4) + ((i4 - 1) * this.k)) / 2);
    }

    public final void a(SparseArray sparseArray) {
        dispatchRestoreInstanceState(sparseArray);
    }

    public final void a(View.OnTouchListener onTouchListener) {
        this.w = onTouchListener;
    }

    public final void a(View view) {
        d(view);
    }

    final void a(View view, Bitmap bitmap, int i, int i2, int i3, int i4, boolean z, Point point, Rect rect) {
        int width;
        int height;
        int i5 = this.ab[0];
        int i6 = this.ab[1];
        if (bitmap == null && view == null) {
            return;
        }
        if (i == i5 && i2 == i6) {
            return;
        }
        this.ab[0] = i;
        this.ab[1] = i2;
        int[] iArr = this.r;
        b(i, i2, iArr);
        int i7 = iArr[0];
        int i8 = iArr[1];
        if (view != null && point == null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int i9 = marginLayoutParams.leftMargin + i7;
            height = ((view.getHeight() - bitmap.getHeight()) / 2) + marginLayoutParams.topMargin + i8;
            width = ((((this.b * i3) + ((i3 - 1) * this.j)) - bitmap.getWidth()) / 2) + i9;
        } else if (point == null || rect == null) {
            width = ((((this.b * i3) + ((i3 - 1) * this.j)) - bitmap.getWidth()) / 2) + i7;
            height = ((((this.c * i4) + ((i4 - 1) * this.k)) - bitmap.getHeight()) / 2) + i8;
        } else {
            width = point.x + ((((this.b * i3) + ((i3 - 1) * this.j)) - rect.width()) / 2) + i7;
            height = ((int) Math.max(0.0f, (this.c - q().b()) / 2.0f)) + point.y + i8;
        }
        int i10 = this.T;
        this.S[i10].b();
        this.T = (i10 + 1) % this.Q.length;
        Rect rect2 = this.Q[this.T];
        rect2.set(width, height, bitmap.getWidth() + width, bitmap.getHeight() + height);
        if (z) {
            a(i, i2, i3, i4, rect2);
        }
        this.S[this.T].a(bitmap);
        this.S[this.T].a();
    }

    final void a(BubbleTextView bubbleTextView) {
        BubbleTextView bubbleTextView2 = this.V;
        this.V = bubbleTextView;
        if (bubbleTextView2 != null) {
            b(bubbleTextView2);
        }
        if (this.V != null) {
            b(this.V);
        }
    }

    public final void a(C0037be c0037be) {
        this.x.add(c0037be);
    }

    public final void a(boolean z) {
        this.ae.setLayerType(z ? 2 : 0, ao);
    }

    final boolean a(int i, int i2, int i3, int i4, View view, int[] iArr) {
        int[] iArrC = c(i, i2, i3, i4, iArr);
        a(iArrC[0], iArrC[1], i3, i4, view, (Rect) null, this.ai);
        return !this.ai.isEmpty();
    }

    final boolean a(int i, int i2, int i3, int i4, View view, int[] iArr, boolean z) {
        int[] iArr2 = new int[2];
        a(i, i2, i3, i4, iArr2);
        ItemConfiguration mA = a(iArr2[0], iArr2[1], i3, i4, i3, i4, iArr, view, true, new ItemConfiguration());
        g(true);
        if (mA != null && mA.isSolution) {
            a(mA, view);
            this.aa = true;
            a(mA, view, z);
            if (z) {
                b();
                a();
                this.aa = false;
            } else {
                a(mA, view, 1);
            }
            this.ae.requestLayout();
        }
        return mA.isSolution;
    }

    public final boolean a(View view, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        C0136ex c0136exQ = q();
        boolean[][] zArr = !z ? this.u : this.t;
        if (c0136exQ.indexOfChild(view) == -1) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        bD bDVar = (bD) view.getTag();
        if (this.W.containsKey(layoutParams)) {
            ((Animator) this.W.get(layoutParams)).cancel();
            this.W.remove(layoutParams);
        }
        int i5 = layoutParams.k;
        int i6 = layoutParams.l;
        if (z2) {
            zArr[layoutParams.f74a][layoutParams.b] = false;
            zArr[i][i2] = true;
        }
        layoutParams.h = true;
        if (z) {
            bDVar.j = i;
            layoutParams.f74a = i;
            bDVar.k = i2;
            layoutParams.b = i2;
        } else {
            layoutParams.c = i;
            layoutParams.d = i2;
        }
        c0136exQ.a(layoutParams);
        layoutParams.h = false;
        int i7 = layoutParams.k;
        int i8 = layoutParams.l;
        layoutParams.k = i5;
        layoutParams.l = i6;
        if (i5 == i7 && i6 == i8) {
            layoutParams.h = true;
            return true;
        }
        ValueAnimator valueAnimatorA = C0082cw.a(0.0f, 1.0f);
        valueAnimatorA.setDuration(i3);
        this.W.put(layoutParams, valueAnimatorA);
        valueAnimatorA.addUpdateListener(new I(this, layoutParams, i5, i7, i6, i8, view));
        valueAnimatorA.addListener(new J(this, layoutParams, view));
        valueAnimatorA.setStartDelay(i4);
        valueAnimatorA.start();
        return true;
    }

    public final boolean a(View view, int i, int i2, LayoutParams layoutParams, boolean z) {
        if (view instanceof BubbleTextView) {
            ((BubbleTextView) view).c(!this.af);
        }
        if ((view instanceof TextView) && a.a.a.c.d.g(getContext())) {
            ((TextView) view).setText((CharSequence) null);
        }
        view.setScaleX(e());
        view.setScaleY(e());
        if (layoutParams.f74a < 0 || layoutParams.f74a > this.f - 1 || layoutParams.b < 0 || layoutParams.b > this.g - 1) {
            return false;
        }
        if (layoutParams.f < 0) {
            layoutParams.f = this.f;
        }
        if (layoutParams.g < 0) {
            layoutParams.g = this.g;
        }
        view.setId(i2);
        this.ae.addView(view, i, layoutParams);
        if (!z) {
            return true;
        }
        c(view);
        return true;
    }

    final boolean a(int[] iArr, int i, int i2) {
        return a(iArr, i, i2, -1, -1, (View) null, this.t);
    }

    final boolean a(int[] iArr, int i, int i2, int i3, int i4) {
        return a(iArr, 1, 1, i3, i4, (View) null, this.t);
    }

    final int[] a(int i, int i2, int i3, int i4, int i5, int i6, View view, int[] iArr, int[] iArr2, int i7) {
        ItemConfiguration m;
        boolean z;
        int[] iArrC = c(i, i2, i5, i6, iArr);
        if (iArr2 == null) {
            iArr2 = new int[2];
        }
        if ((i7 == 2 || i7 == 3 || i7 == 4) && this.al[0] != -100) {
            this.ak[0] = this.al[0];
            this.ak[1] = this.al[1];
            if (i7 == 2 || i7 == 3) {
                this.al[0] = -100;
                this.al[1] = -100;
            }
        } else {
            int[] iArr3 = this.ak;
            int[] iArr4 = new int[2];
            c(i, i2, i5, i6, iArr4);
            Rect rect = new Rect();
            b(iArr4[0], iArr4[1], i5, i6, rect);
            rect.offset(i - rect.centerX(), i2 - rect.centerY());
            Rect rect2 = new Rect();
            a(iArr4[0], iArr4[1], i5, i6, view, rect2, this.ai);
            int iWidth = rect2.width();
            int iHeight = rect2.height();
            b(rect2.left, rect2.top, rect2.width(), rect2.height(), rect2);
            int iCenterX = (rect2.centerX() - i) / i5;
            int iCenterY = (rect2.centerY() - i2) / i6;
            if (iWidth == this.f || i5 == this.f) {
                iCenterX = 0;
            }
            if (iHeight == this.g || i6 == this.g) {
                iCenterY = 0;
            }
            if (iCenterX == 0 && iCenterY == 0) {
                iArr3[0] = 1;
                iArr3[1] = 0;
            } else {
                b(iCenterX, iCenterY, iArr3);
            }
            this.al[0] = this.ak[0];
            this.al[1] = this.ak[1];
        }
        ItemConfiguration mA = a(i, i2, i3, i4, i5, i6, this.ak, view, true, new ItemConfiguration());
        ItemConfiguration mA2 = a(i, i2, i3, i4, i5, i6, new ItemConfiguration());
        if (!mA.isSolution || mA.area() < mA2.area()) {
            m = mA2.isSolution ? mA2 : null;
        } else {
            m = mA;
        }
        if (i7 == 0) {
            if (m != null) {
                a(m, view, 0);
                iArrC[0] = m.dragX;
                iArrC[1] = m.dragY;
                iArr2[0] = m.dragSpanX;
                iArr2[1] = m.dragSpanY;
            } else {
                iArr2[1] = -1;
                iArr2[0] = -1;
                iArrC[1] = -1;
                iArrC[0] = -1;
            }
            return iArrC;
        }
        g(true);
        if (m != null) {
            iArrC[0] = m.dragX;
            iArrC[1] = m.dragY;
            iArr2[0] = m.dragSpanX;
            iArr2[1] = m.dragSpanY;
            if (i7 == 1 || i7 == 2 || i7 == 3) {
                a(m, view);
                this.aa = true;
                a(m, view, i7 == 2);
                if (i7 == 2 || i7 == 3) {
                    b();
                    a();
                    this.aa = false;
                    z = true;
                } else {
                    a(m, view, 1);
                    z = true;
                }
            } else {
                z = true;
            }
        } else {
            z = false;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArrC[1] = -1;
            iArrC[0] = -1;
        }
        if (i7 == 2 || !z) {
            g(false);
        }
        this.ae.requestLayout();
        return iArrC;
    }

    final int[] a(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr, int[] iArr2) {
        return a(i, i2, i3, i4, i5, i6, (View) null, iArr, iArr2);
    }

    public final void b(float f) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setAlpha(f);
        }
    }

    public final void b(int i, int i2) {
        this.f = i;
        this.g = i2;
        this.t = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.f, this.g);
        this.u = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.f, this.g);
        this.ap.clear();
        this.ae.a(this.b, this.c, this.j, this.k, this.f, this.g);
        requestLayout();
    }

    public final void b(C0037be c0037be) {
        if (this.x.contains(c0037be)) {
            this.x.remove(c0037be);
        }
        invalidate();
    }

    public final void b(boolean z) {
        this.ae.a(true);
    }

    public final boolean b(int[] iArr, int i, int i2) {
        return a(iArr, 1, 1, this.f, this.g, this.t);
    }

    final int[] b(int i, int i2, int i3, int i4, int[] iArr) {
        return a(i, i2, 1, 1, (View) null, true, iArr);
    }

    public final void c(int i, int i2) {
        this.y[0] = i;
        this.y[1] = i2;
        invalidate();
    }

    public final void c(View view) {
        a(view, this.t);
    }

    public final void c(boolean z) {
        this.n = z;
    }

    final int[] c(int i, int i2, int i3, int i4, int[] iArr) {
        return a(i, i2, i3, i4, (View) null, false, iArr);
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d() {
        this.ae.buildLayer();
    }

    public final void d(int i, int i2) {
        this.M = i;
        this.N = i2;
    }

    public final void d(View view) {
        b(view, this.t);
    }

    final void d(boolean z) {
        if (this.O != z) {
            this.O = z;
            this.P = this.O;
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.A > 0) {
            this.G.setBounds(this.K);
            this.G.draw(canvas);
        }
    }

    public final float e() {
        if (this.af) {
            return this.ag;
        }
        return 1.0f;
    }

    public final View e(int i, int i2) {
        C0136ex c0136ex = this.ae;
        int childCount = c0136ex.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = c0136ex.getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f74a <= i && i < layoutParams.f74a + layoutParams.f && layoutParams.b <= i2) {
                if (i2 < layoutParams.g + layoutParams.b) {
                    return childAt;
                }
            }
        }
        return null;
    }

    protected final void e(boolean z) {
        this.m = z;
    }

    public final void f(boolean z) {
        this.af = true;
        this.ae.b(true);
    }

    public final boolean f() {
        return this.n;
    }

    public final boolean f(int i, int i2) {
        if (i >= this.f || i2 >= this.g) {
            throw new RuntimeException("Position exceeds the bound of this CellLayout");
        }
        return this.t[i][i2];
    }

    final void g() {
        this.D = false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public float getBackgroundAlpha() {
        return this.B;
    }

    @Override // android.view.View
    public /* bridge */ /* synthetic */ Object getTag() {
        return (L) super.getTag();
    }

    final boolean h() {
        return this.O;
    }

    protected final void i() {
        if (this.m) {
            this.m = false;
            setTranslationX(0.0f);
            setRotationY(0.0f);
            a(0.0f, false);
            setPivotX(getMeasuredWidth() / 2);
            setPivotY(getMeasuredHeight() / 2);
        }
    }

    public final void j() {
        this.y[0] = -1;
        this.y[1] = -1;
        invalidate();
    }

    final int k() {
        return this.f;
    }

    final int l() {
        return this.g;
    }

    final int m() {
        return this.b;
    }

    final int n() {
        return this.c;
    }

    final int o() {
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof Workspace) {
            Workspace workspace = (Workspace) getParent();
            this.p.f = workspace.a(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.D && this.B > 0.0f) {
            Drawable drawable = this.P ? this.F : this.E;
            drawable.setAlpha((int) (this.B * this.C * 255.0f));
            drawable.setBounds(this.J);
            drawable.draw(canvas);
        }
        Paint paint = this.U;
        for (int i = 0; i < this.Q.length; i++) {
            float f = this.R[i];
            if (f > 0.0f) {
                this.an.set(this.Q[i]);
                eI.a(this.an, e());
                Bitmap bitmap = (Bitmap) this.S[i].c();
                paint.setAlpha((int) (f + 0.5f));
                canvas.drawBitmap(bitmap, (Rect) null, this.an, paint);
            }
        }
        if (this.V != null) {
            int iC = this.V.c();
            Bitmap bitmapB = this.V.b();
            if (bitmapB != null) {
                canvas.drawBitmap(bitmapB, ((((int) Math.ceil((((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - (this.f * this.b)) / 2.0f)) + getPaddingLeft()) + this.V.getLeft()) - iC, (getPaddingTop() + this.V.getTop()) - iC, (Paint) null);
            }
        }
        int i2 = C0037be.h;
        C0017al c0017alA = cB.a().i().a();
        for (int i3 = 0; i3 < this.x.size(); i3++) {
            C0037be c0037be = (C0037be) this.x.get(i3);
            b(c0037be.f192a, c0037be.b, this.s);
            View viewE = e(c0037be.f192a, c0037be.b);
            if (viewE != null) {
                int i4 = this.s[0] + (this.b / 2);
                int paddingTop = viewE.getPaddingTop() + this.s[1] + (i2 / 2) + c0017alA.v;
                Drawable drawable2 = C0037be.f;
                int iC2 = (int) (c0037be.c() * e());
                canvas.save();
                canvas.translate(i4 - (iC2 / 2), paddingTop - (iC2 / 2));
                drawable2.setBounds(0, 0, iC2, iC2);
                drawable2.draw(canvas);
                canvas.restore();
                Drawable drawable3 = C0037be.g;
                int iD = (int) (c0037be.d() * e());
                canvas.save();
                canvas.translate(i4 - (iD / 2), paddingTop - (iD / 2));
                drawable3.setBounds(0, 0, iD, iD);
                drawable3.draw(canvas);
                canvas.restore();
            }
        }
        if (this.y[0] < 0 || this.y[1] < 0) {
            return;
        }
        Drawable drawable4 = FolderIcon.f83a;
        int intrinsicWidth = drawable4.getIntrinsicWidth();
        int intrinsicHeight = drawable4.getIntrinsicHeight();
        b(this.y[0], this.y[1], this.s);
        View viewE2 = e(this.y[0], this.y[1]);
        if (viewE2 != null) {
            int i5 = this.s[0] + (this.b / 2);
            int paddingTop2 = (i2 / 2) + this.s[1] + viewE2.getPaddingTop() + c0017alA.v;
            canvas.save();
            canvas.translate(i5 - (intrinsicWidth / 2), paddingTop2 - (intrinsicWidth / 2));
            drawable4.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable4.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int action = motionEvent.getAction();
        if (action == 0) {
            L l = this.p;
            l.f93a = null;
            l.b = -1;
            l.c = -1;
            l.d = 0;
            l.e = 0;
            setTag(l);
        }
        if (this.w != null && this.w.onTouch(this, motionEvent)) {
            return true;
        }
        if (action == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            L l2 = this.p;
            Rect rect = this.o;
            int scrollX = x + getScrollX();
            int scrollY = y + getScrollY();
            int childCount = this.ae.getChildCount() - 1;
            while (true) {
                if (childCount < 0) {
                    z = false;
                    break;
                }
                View childAt = this.ae.getChildAt(childCount);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if ((childAt.getVisibility() == 0 || childAt.getAnimation() != null) && layoutParams.h) {
                    childAt.getHitRect(rect);
                    float scaleX = childAt.getScaleX();
                    rect = new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                    rect.offset(getPaddingLeft(), getPaddingTop());
                    rect.inset((int) ((rect.width() * (1.0f - scaleX)) / 2.0f), (int) (((1.0f - scaleX) * rect.height()) / 2.0f));
                    if (rect.contains(scrollX, scrollY)) {
                        l2.f93a = childAt;
                        l2.b = layoutParams.f74a;
                        l2.c = layoutParams.b;
                        l2.d = layoutParams.f;
                        l2.e = layoutParams.g;
                        z = true;
                        break;
                    }
                }
                childCount--;
                rect = rect;
            }
            this.v = z;
            if (!z) {
                int[] iArr = this.q;
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                iArr[0] = (scrollX - paddingLeft) / (this.b + this.j);
                iArr[1] = (scrollY - paddingTop) / (this.c + this.k);
                int i = this.f;
                int i2 = this.g;
                if (iArr[0] < 0) {
                    iArr[0] = 0;
                }
                if (iArr[0] >= i) {
                    iArr[0] = i - 1;
                }
                if (iArr[1] < 0) {
                    iArr[1] = 0;
                }
                if (iArr[1] >= i2) {
                    iArr[1] = i2 - 1;
                }
                l2.f93a = null;
                l2.b = iArr[0];
                l2.c = iArr[1];
                l2.d = 1;
                l2.e = 1;
            }
            setTag(l2);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft() + ((int) Math.ceil((((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - (this.f * this.b)) / 2.0f));
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(paddingLeft, paddingTop, (paddingLeft + i3) - i, (paddingTop + i4) - i2);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        cB.a().i().a();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = size - (getPaddingLeft() + getPaddingRight());
        int paddingTop = size2 - (getPaddingTop() + getPaddingBottom());
        if (this.d < 0 || this.e < 0) {
            int i5 = paddingLeft / this.f;
            int i6 = paddingTop / this.g;
            if (i5 != this.b || i6 != this.c) {
                this.b = i5;
                this.c = i6;
                this.ae.a(this.b, this.c, this.j, this.k, this.f, this.g);
            }
        }
        if (this.M > 0 && this.N > 0) {
            i4 = this.M;
            i3 = this.N;
        } else {
            if (mode == 0 || mode2 == 0) {
                throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
            }
            i3 = paddingTop;
            i4 = paddingLeft;
        }
        int i7 = this.f;
        int i8 = this.g;
        this.j = 0;
        this.k = 0;
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
            iMax = Math.max(iMax, childAt.getMeasuredWidth());
            iMax2 = Math.max(iMax2, childAt.getMeasuredHeight());
        }
        if (this.M <= 0 || this.N <= 0) {
            setMeasuredDimension(size, size2);
        } else {
            setMeasuredDimension(iMax, iMax2);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Rect rect = new Rect();
        this.E.getPadding(rect);
        this.J.set(-rect.left, -rect.top, rect.right + i, rect.bottom + i2);
        this.K.set(this.L, this.L, i - this.L, i2 - this.L);
    }

    final int p() {
        return this.k;
    }

    public final C0136ex q() {
        if (getChildCount() > 0) {
            return (C0136ex) getChildAt(0);
        }
        return null;
    }

    public final void r() {
        this.S[this.T].b();
        int[] iArr = this.ab;
        this.ab[1] = -1;
        iArr[0] = -1;
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        c();
        this.ae.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        if (this.ae.getChildCount() > 0) {
            c();
            this.ae.removeAllViewsInLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        d(view);
        this.ae.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        d(this.ae.getChildAt(i));
        this.ae.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        d(view);
        this.ae.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            d(this.ae.getChildAt(i3));
        }
        this.ae.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            d(this.ae.getChildAt(i3));
        }
        this.ae.removeViewsInLayout(i, i2);
    }

    final void s() {
        a();
        if (this.aa) {
            int childCount = this.ae.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.ae.getChildAt(i);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.c != layoutParams.f74a || layoutParams.d != layoutParams.b) {
                    layoutParams.c = layoutParams.f74a;
                    layoutParams.d = layoutParams.b;
                    a(childAt, layoutParams.f74a, layoutParams.b, 150, 0, false, false);
                }
            }
            this.aa = false;
        }
    }

    public void setBackgroundAlpha(float f) {
        if (this.B != f) {
            this.B = f;
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawingCacheEnabled(boolean z) {
        this.ae.setChildrenDrawingCacheEnabled(z);
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawnWithCacheEnabled(boolean z) {
        this.ae.setChildrenDrawnWithCacheEnabled(z);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    final void t() {
        this.am.save();
        this.ac = true;
    }

    final void u() {
        this.am.restore();
        if (this.ac) {
            this.ac = false;
        }
        int[] iArr = this.ab;
        this.ab[1] = -1;
        iArr[0] = -1;
        this.S[this.T].b();
        this.T = (this.T + 1) % this.S.length;
        s();
        d(false);
    }

    public final int v() {
        return getPaddingLeft() + getPaddingRight() + (this.f * this.b) + (Math.max(this.f - 1, 0) * this.j);
    }

    public final int w() {
        return getPaddingTop() + getPaddingBottom() + (this.g * this.c) + (Math.max(this.g - 1, 0) * this.k);
    }

    public final boolean x() {
        return this.v;
    }
}
