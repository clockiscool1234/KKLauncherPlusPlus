package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.Selection;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class Folder extends LinearLayout implements View.OnClickListener, View.OnFocusChangeListener, View.OnLongClickListener, TextView.OnEditorActionListener, aF, InterfaceC0031az, InterfaceC0044bl {
    private static String K;
    private static String L;
    private int A;
    private Rect B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private float G;
    private float H;
    private boolean I;
    private InputMethodManager J;
    private int M;
    private int N;
    private boolean O;
    private a.a.a.e.a P;
    private Runnable Q;
    private boolean R;
    private boolean S;
    private ActionMode.Callback T;
    private dU U;
    private dU V;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected C0021ap f81a;
    protected Launcher b;
    protected C0043bk c;
    protected CellLayout d;
    FolderEditText e;
    private int f;
    private ScrollView g;
    private final LayoutInflater h;
    private final C0055bw i;
    private int j;
    private boolean k;
    private FolderIcon l;
    private int m;
    private int n;
    private int o;
    private ArrayList p;
    private boolean q;
    private C0137ey r;
    private View s;
    private boolean t;
    private boolean u;
    private int[] v;
    private int[] w;
    private int[] x;
    private RunnableC0005a y;
    private RunnableC0005a z;

    public Folder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = -1;
        this.k = false;
        this.p = new ArrayList();
        this.q = false;
        this.u = false;
        this.v = new int[2];
        this.w = new int[2];
        this.x = new int[2];
        this.y = new RunnableC0005a();
        this.z = new RunnableC0005a();
        this.B = new Rect();
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.I = false;
        this.M = 0;
        this.N = 1;
        this.T = new aO(this);
        this.U = new aP(this);
        this.V = new aQ(this);
        cB cBVarA = cB.a();
        C0017al c0017alA = cBVarA.i().a();
        setAlwaysDrawnWithCacheEnabled(false);
        this.h = LayoutInflater.from(context);
        this.i = cBVarA.e();
        Resources resources = getResources();
        this.m = (int) c0017alA.d;
        if (cB.o()) {
            this.o = Integer.MAX_VALUE;
            this.n = Integer.MAX_VALUE;
        } else {
            this.n = (int) c0017alA.c;
            this.o = this.m * this.n;
        }
        this.J = (InputMethodManager) getContext().getSystemService("input_method");
        this.f = resources.getInteger(R.integer.config_folderAnimDuration);
        if (K == null) {
            K = resources.getString(R.string.folder_name);
        }
        if (L == null) {
            L = resources.getString(R.string.folder_hint_text);
        }
        this.b = (Launcher) context;
        setFocusableInTouchMode(true);
    }

    private int A() {
        return getPaddingTop() + getPaddingBottom() + y() + this.A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        aV aVVar = new aV(this);
        View viewC = c(0);
        if (viewC != null) {
            this.l.a(viewC, aVVar);
        } else {
            aVVar.run();
        }
        this.O = true;
    }

    private void C() {
        View viewC = c(r() - 1);
        c(r() - 1);
        if (viewC != null) {
            this.e.setNextFocusDownId(viewC.getId());
            this.e.setNextFocusRightId(viewC.getId());
            this.e.setNextFocusLeftId(viewC.getId());
            this.e.setNextFocusUpId(viewC.getId());
        }
    }

    static Folder a(Context context) {
        return (Folder) LayoutInflater.from(context).inflate(R.layout.user_folder, (ViewGroup) null);
    }

    private void a(int i) {
        int i2;
        int i3;
        ArrayList arrayListU = u();
        int iK = this.d.k();
        int iL = this.d.l();
        loop0: while (true) {
            i2 = iK;
            int i4 = iL;
            boolean z = false;
            i3 = i4;
            while (!z) {
                if (i2 * i3 < i) {
                    if ((i2 <= i3 || i3 == this.n) && i2 < this.m) {
                        iK = i2 + 1;
                        iL = i3;
                    } else if (i3 < this.n) {
                        iL = i3 + 1;
                        iK = i2;
                    } else {
                        iL = i3;
                        iK = i2;
                    }
                    if (iL == 0) {
                        iL++;
                    }
                } else if ((i3 - 1) * i2 >= i && i3 >= i2) {
                    iL = Math.max(0, i3 - 1);
                    iK = i2;
                } else if ((i2 - 1) * i3 >= i) {
                    iK = Math.max(0, i2 - 1);
                    iL = i3;
                } else {
                    iL = i3;
                    iK = i2;
                }
                if (iK == i2 && iL == i3) {
                    i2 = iK;
                    int i5 = iL;
                    z = true;
                    i3 = i5;
                }
            }
            break loop0;
        }
        this.d.b(i2, i3);
        int[] iArr = new int[2];
        ArrayList arrayListU2 = arrayListU == null ? u() : arrayListU;
        this.d.removeAllViews();
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 >= arrayListU2.size()) {
                this.q = true;
                return;
            }
            View view = (View) arrayListU2.get(i7);
            this.d.b(iArr, 1, 1);
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
            layoutParams.f74a = iArr[0];
            layoutParams.b = iArr[1];
            bD bDVar = (bD) view.getTag();
            if (bDVar.j != iArr[0] || bDVar.k != iArr[1]) {
                bDVar.j = iArr[0];
                bDVar.k = iArr[1];
                cO.a(this.b, bDVar, this.c.f, 0L, bDVar.j, bDVar.k);
            }
            this.d.a(view, -1, (int) bDVar.f, layoutParams, true);
            i6 = i7 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i);
            onInitializeAccessibilityEvent(accessibilityEventObtain);
            accessibilityEventObtain.getText().add(str);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    static /* synthetic */ void a(Folder folder, int[] iArr, int[] iArr2) {
        float f;
        float f2;
        int i = 0;
        float f3 = 30.0f;
        if (iArr2[1] > iArr[1] || (iArr2[1] == iArr[1] && iArr2[0] > iArr[0])) {
            int i2 = iArr[0] >= folder.d.k() + (-1) ? iArr[1] + 1 : iArr[1];
            while (true) {
                int i3 = i2;
                if (i3 > iArr2[1]) {
                    return;
                }
                int i4 = i3 == iArr[1] ? iArr[0] + 1 : 0;
                int iK = i3 < iArr2[1] ? folder.d.k() - 1 : iArr2[0];
                for (int i5 = i4; i5 <= iK; i5++) {
                    if (folder.d.a(folder.d.e(i5, i3), iArr[0], iArr[1], 230, i, true, true)) {
                        iArr[0] = i5;
                        iArr[1] = i3;
                        i = (int) (i + f3);
                        f2 = (float) (((double) f3) * 0.9d);
                    } else {
                        f2 = f3;
                    }
                    f3 = f2;
                }
                i2 = i3 + 1;
            }
        } else {
            int i6 = iArr[0] == 0 ? iArr[1] - 1 : iArr[1];
            while (true) {
                int i7 = i6;
                if (i7 < iArr2[1]) {
                    return;
                }
                int iK2 = i7 == iArr[1] ? iArr[0] - 1 : folder.d.k() - 1;
                int i8 = i7 > iArr2[1] ? 0 : iArr2[0];
                for (int i9 = iK2; i9 >= i8; i9--) {
                    if (folder.d.a(folder.d.e(i9, i7), iArr[0], iArr[1], 230, i, true, true)) {
                        iArr[0] = i9;
                        iArr[1] = i7;
                        i = (int) (i + f3);
                        f = (float) (((double) f3) * 0.9d);
                    } else {
                        f = f3;
                    }
                    f3 = f;
                }
                i6 = i7 - 1;
            }
        }
    }

    private void a(ArrayList arrayList) {
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            C0137ey c0137ey = (C0137ey) arrayList.get(i);
            i++;
            i2 = c0137ey.j > i2 ? c0137ey.j : i2;
        }
        Collections.sort(arrayList, new aY(this, i2 + 1));
        int iK = this.d.k();
        for (int i3 = 0; i3 < size; i3++) {
            C0137ey c0137ey2 = (C0137ey) arrayList.get(i3);
            c0137ey2.j = i3 % iK;
            c0137ey2.k = i3 / iK;
        }
    }

    private void b(int i) {
        a(i);
        if (((DragLayer.LayoutParams) getLayoutParams()) == null) {
            DragLayer.LayoutParams layoutParams = new DragLayer.LayoutParams(0, 0);
            layoutParams.c = true;
            setLayoutParams(layoutParams);
        }
        x();
    }

    private View c(int i) {
        return this.d.q().getChildAt(i);
    }

    static /* synthetic */ void d(Folder folder) {
        View viewE = folder.d.e(0, 0);
        if (viewE != null) {
            viewE.requestFocus();
        }
    }

    static /* synthetic */ void e(Folder folder) {
        DragLayer dragLayer = (DragLayer) folder.getParent();
        if (dragLayer != null) {
            dragLayer.removeView(folder);
        }
        folder.f81a.b((aF) folder);
        folder.clearFocus();
        folder.l.requestFocus();
        if (folder.k) {
            folder.b(folder.r());
            folder.k = false;
        }
        if (folder.r() <= 1) {
            if (!folder.C && !folder.E) {
                folder.B();
            } else if (folder.C) {
                folder.D = true;
            }
        }
        folder.E = false;
    }

    private boolean f(C0137ey c0137ey) {
        int[] iArr = new int[2];
        if (!this.d.a(iArr, c0137ey.l, c0137ey.m)) {
            return false;
        }
        c0137ey.j = iArr[0];
        c0137ey.k = iArr[1];
        return true;
    }

    private View g(C0137ey c0137ey) {
        BubbleTextView bubbleTextView = (BubbleTextView) this.h.inflate(R.layout.application, (ViewGroup) this, false);
        bubbleTextView.setCompoundDrawables(null, eI.a(c0137ey.a(this.i)), null, null);
        bubbleTextView.setText(c0137ey.q);
        bubbleTextView.setTag(c0137ey);
        bubbleTextView.setTextColor(getResources().getColor(R.color.folder_items_text_color));
        bubbleTextView.b(false);
        bubbleTextView.a(getResources().getColor(R.color.folder_items_glow_color));
        bubbleTextView.setOnClickListener(this);
        bubbleTextView.setOnLongClickListener(this);
        if (this.d.e(c0137ey.j, c0137ey.k) != null || c0137ey.j < 0 || c0137ey.k < 0 || c0137ey.j >= this.d.k() || c0137ey.k >= this.d.l()) {
            Log.e("Launcher.Folder", "Folder order not properly persisted during bind");
            if (!f(c0137ey)) {
                return null;
            }
        }
        CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(c0137ey.j, c0137ey.k, c0137ey.l, c0137ey.m);
        bubbleTextView.setOnKeyListener(new ViewOnKeyListenerC0045bm());
        this.d.a((View) bubbleTextView, -1, (int) c0137ey.f, layoutParams, true);
        return bubbleTextView;
    }

    private View h(C0137ey c0137ey) {
        for (int i = 0; i < this.d.l(); i++) {
            for (int i2 = 0; i2 < this.d.k(); i2++) {
                View viewE = this.d.e(i2, i);
                if (viewE.getTag() == c0137ey) {
                    return viewE;
                }
            }
        }
        return null;
    }

    private void v() {
        ArrayList arrayListU = u();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayListU.size()) {
                return;
            }
            bD bDVar = (bD) ((View) arrayListU.get(i2)).getTag();
            cO.b(this.b, bDVar, this.c.f, 0L, bDVar.j, bDVar.k);
            i = i2 + 1;
        }
    }

    private void w() {
        ArrayList arrayListU = u();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < arrayListU.size(); i++) {
            arrayList.add((bD) ((View) arrayListU.get(i)).getTag());
        }
        cO.a(this.b, arrayList, this.c.f, 0);
    }

    private void x() {
        DragLayer.LayoutParams layoutParams = (DragLayer.LayoutParams) getLayoutParams();
        DragLayer dragLayer = (DragLayer) this.b.findViewById(R.id.drag_layer);
        int paddingLeft = getPaddingLeft() + getPaddingRight() + this.d.v();
        int iA = A();
        float fA = dragLayer.a(this.l, this.B);
        C0017al c0017alA = cB.a().i().a();
        int iWidth = ((int) (this.B.left + ((this.B.width() * fA) / 2.0f))) - (paddingLeft / 2);
        int iHeight = ((int) (((fA * this.B.height()) / 2.0f) + this.B.top)) - (iA / 2);
        int iD = this.b.h().D();
        this.b.h().b(iD);
        C0136ex c0136exQ = ((CellLayout) this.b.h().getChildAt(iD)).q();
        Rect rect = new Rect();
        dragLayer.a(c0136exQ, rect);
        this.b.h().r(iD);
        int iMin = Math.min(Math.max(rect.left, iWidth), (rect.left + rect.width()) - paddingLeft);
        int iMin2 = Math.min(Math.max(rect.top, iHeight), (rect.top + rect.height()) - iA);
        if (((c0017alA.g || c0017alA.h) ? false : true) && c0017alA.m - paddingLeft < c0017alA.o) {
            iMin = (c0017alA.m - paddingLeft) / 2;
        } else if (paddingLeft >= rect.width()) {
            iMin = rect.left + ((rect.width() - paddingLeft) / 2);
        }
        if (iA >= rect.height()) {
            iMin2 = rect.top + ((rect.height() - iA) / 2);
        }
        int i = (paddingLeft / 2) + (iWidth - iMin);
        int i2 = (iA / 2) + (iHeight - iMin2);
        setPivotX(i);
        setPivotY(i2);
        this.G = (int) (((i * 1.0f) / paddingLeft) * this.l.getMeasuredWidth());
        this.H = (int) (this.l.getMeasuredHeight() * ((i2 * 1.0f) / iA));
        layoutParams.width = paddingLeft;
        layoutParams.height = iA;
        layoutParams.f78a = iMin;
        layoutParams.b = iMin2;
    }

    private int y() {
        C0017al c0017alA = cB.a().i().a();
        Rect rectA = c0017alA.a(c0017alA.f ? 0 : 1);
        return Math.max(Math.min(((c0017alA.n - rectA.top) - rectA.bottom) - this.A, this.d.w()), 5);
    }

    private int z() {
        return Math.max(this.d.v(), 5);
    }

    @Override // com.android.launcher3.aF
    public final void a(Rect rect) {
        getHitRect(rect);
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final void a(View view, aH aHVar, boolean z, boolean z2) {
        if (this.R) {
            Log.d("Launcher.Folder", "Deferred handling drop because waiting for uninstall.");
            this.Q = new aU(this, view, aHVar, z, z2);
            return;
        }
        boolean z3 = z2 && (!(this.Q != null) || this.S);
        if (!z3) {
            b(r());
            this.l.a(aHVar);
        } else if (this.D && !this.F && view != this) {
            B();
        }
        if (view != this && this.z.b()) {
            this.z.a();
            if (!z3) {
                this.E = true;
            }
            l();
        }
        if (view != this.b.h()) {
            this.b.h().a(true, (Runnable) null);
        }
        this.D = false;
        this.C = false;
        this.F = false;
        this.r = null;
        this.s = null;
        this.u = false;
        w();
    }

    final void a(FolderIcon folderIcon) {
        this.l = folderIcon;
    }

    @Override // com.android.launcher3.aF
    public final void a(aH aHVar, PointF pointF) {
    }

    public final void a(C0021ap c0021ap) {
        this.f81a = c0021ap;
    }

    final void a(C0043bk c0043bk) {
        this.c = c0043bk;
        ArrayList arrayList = c0043bk.b;
        ArrayList<C0137ey> arrayList2 = new ArrayList();
        b(arrayList.size());
        a(arrayList);
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            C0137ey c0137ey = (C0137ey) arrayList.get(i2);
            if (g(c0137ey) == null) {
                arrayList2.add(c0137ey);
            } else {
                i++;
            }
        }
        b(i);
        for (C0137ey c0137ey2 : arrayList2) {
            this.c.b(c0137ey2);
            cO.b(this.b, c0137ey2);
        }
        this.q = true;
        C();
        this.c.a(this);
        if (K.contentEquals(this.c.q)) {
            this.e.setText("");
        } else {
            this.e.setText(this.c.q);
        }
        v();
        this.l.post(new aR(this));
    }

    public final void a(C0137ey c0137ey) {
        b(r() + 1);
        f(c0137ey);
        this.r = c0137ey;
        this.x[0] = c0137ey.j;
        this.x[1] = c0137ey.k;
        this.t = true;
        this.C = true;
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void a(CharSequence charSequence) {
    }

    public final void a(boolean z) {
        this.e.setHint(L);
        String string = this.e.getText().toString();
        C0043bk c0043bk = this.c;
        c0043bk.q = string;
        for (int i = 0; i < c0043bk.c.size(); i++) {
            ((InterfaceC0044bl) c0043bk.c.get(i)).a(string);
        }
        cO.a((Context) this.b, (bD) this.c);
        a(32, String.format(getContext().getString(R.string.folder_renamed), string));
        requestFocus();
        Selection.setSelection(this.e.getText(), 0, 0);
        this.I = false;
    }

    public final boolean a() {
        return this.I;
    }

    @Override // com.android.launcher3.aF
    public final boolean a(aH aHVar) {
        int i = ((bD) aHVar.g).g;
        return (i == 0 || i == 1) && !o();
    }

    @Override // com.android.launcher3.aF
    public final void b(aH aHVar) {
        View viewG;
        aW aWVar = (aHVar.h == this.b.h() || (aHVar.h instanceof Folder)) ? null : new aW(this);
        C0137ey c0137ey = this.r;
        if (this.t) {
            c0137ey.j = this.x[0];
            c0137ey.k = this.x[1];
            viewG = g(c0137ey);
        } else {
            viewG = this.s;
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) viewG.getLayoutParams();
            int i = this.x[0];
            layoutParams.f74a = i;
            c0137ey.j = i;
            int i2 = this.x[1];
            layoutParams.b = i2;
            c0137ey.j = i2;
            this.d.a(viewG, -1, (int) c0137ey.f, layoutParams, true);
        }
        if (aHVar.f.g()) {
            float scaleX = getScaleX();
            float scaleY = getScaleY();
            setScaleX(1.0f);
            setScaleY(1.0f);
            this.b.g().a(aHVar.f, viewG, aWVar, null);
            setScaleX(scaleX);
            setScaleY(scaleY);
        } else {
            aHVar.k = false;
            viewG.setVisibility(0);
        }
        this.q = true;
        a(r());
        if (this.t) {
            cO.a(this.b, c0137ey, this.c.f, 0L, c0137ey.j, c0137ey.k);
            if (aHVar.h != this) {
                w();
            }
            this.t = false;
        }
        this.u = true;
        this.c.a(c0137ey);
        this.u = false;
    }

    public final void b(C0137ey c0137ey) {
        h(c0137ey).setVisibility(4);
    }

    public final void b(boolean z) {
        this.R = false;
        this.S = z;
        if (this.Q != null) {
            this.Q.run();
        }
    }

    @Override // com.android.launcher3.aF
    public final boolean b() {
        return true;
    }

    public final void c() {
        this.J.hideSoftInputFromWindow(getWindowToken(), 0);
        a(true);
    }

    @Override // com.android.launcher3.aF
    public final void c(aH aHVar) {
        this.w[0] = -1;
        this.w[1] = -1;
        this.z.a();
    }

    public final void c(C0137ey c0137ey) {
        h(c0137ey).setVisibility(0);
    }

    public final View d() {
        return this.e;
    }

    @Override // com.android.launcher3.aF
    public final void d(aH aHVar) {
        aA aAVar = aHVar.f;
        int scrollY = this.g.getScrollY();
        float[] fArr = {(aHVar.f126a - aHVar.c) + (aAVar.d().width() / 2), (aAVar.d().height() / 2) + (aHVar.b - aHVar.d)};
        fArr[0] = fArr[0] - getPaddingLeft();
        fArr[1] = fArr[1] - getPaddingTop();
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 2, aHVar.f126a, aHVar.b, 0);
        if (!this.P.a()) {
            this.P.a(true);
        }
        boolean zOnTouch = this.P.onTouch(this, motionEventObtain);
        motionEventObtain.recycle();
        if (zOnTouch) {
            this.y.a();
            return;
        }
        this.v = this.d.c((int) fArr[0], ((int) fArr[1]) + scrollY, 1, 1, this.v);
        if (getLayoutDirection() == 1) {
            this.v[0] = (this.d.k() - this.v[0]) - 1;
        }
        if (this.v[0] == this.w[0] && this.v[1] == this.w[1]) {
            return;
        }
        this.y.a();
        this.y.a(this.U);
        this.y.a(250L);
        this.w[0] = this.v[0];
        this.w[1] = this.v[1];
        int i = this.N;
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void d(C0137ey c0137ey) {
        this.q = true;
        if (this.u) {
            return;
        }
        if (!f(c0137ey)) {
            b(r() + 1);
            f(c0137ey);
        }
        g(c0137ey);
        cO.a(this.b, c0137ey, this.c.f, 0L, c0137ey.j, c0137ey.k);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    final C0043bk e() {
        return this.c;
    }

    @Override // com.android.launcher3.aF
    public final void e(aH aHVar) {
        this.P.a(false);
        if (!aHVar.e) {
            this.z.a(this.V);
            this.z.a(400L);
        }
        this.y.a();
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void e(C0137ey c0137ey) {
        this.q = true;
        if (c0137ey == this.r) {
            return;
        }
        this.d.removeView(h(c0137ey));
        if (this.j == 1) {
            this.k = true;
        } else {
            b(r());
        }
        if (r() <= 1) {
            B();
        }
    }

    public final void f() {
        if (getParent() instanceof DragLayer) {
            setScaleX(0.8f);
            setScaleY(0.8f);
            setAlpha(0.0f);
            this.j = 0;
        }
        if (getParent() instanceof DragLayer) {
            x();
            ObjectAnimator objectAnimatorA = C0082cw.a(this, PropertyValuesHolder.ofFloat("alpha", 1.0f), PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f));
            objectAnimatorA.addListener(new aS(this));
            objectAnimatorA.setDuration(this.f);
            setLayerType(2, null);
            objectAnimatorA.start();
            if (this.f81a.b()) {
                this.f81a.f();
            }
        }
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final void g() {
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final boolean h() {
        return false;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final boolean i() {
        return true;
    }

    @Override // com.android.launcher3.InterfaceC0031az
    public final float j() {
        return 1.0f;
    }

    public final void k() {
        if (getParent() instanceof DragLayer) {
            ObjectAnimator objectAnimatorA = C0082cw.a(this, PropertyValuesHolder.ofFloat("alpha", 0.0f), PropertyValuesHolder.ofFloat("scaleX", 0.9f), PropertyValuesHolder.ofFloat("scaleY", 0.9f));
            objectAnimatorA.addListener(new aT(this));
            objectAnimatorA.setDuration(this.f);
            setLayerType(2, null);
            objectAnimatorA.start();
        }
    }

    public final void l() {
        this.b.v();
        this.r = null;
        this.s = null;
        this.u = false;
        this.k = true;
        this.t = false;
    }

    public final void m() {
        this.R = true;
    }

    public final void n() {
        if (this.C) {
            this.F = true;
        }
    }

    public final boolean o() {
        return r() >= this.o;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getTag() instanceof C0137ey) {
            this.b.onClick(view);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        c();
        return true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.g = (ScrollView) findViewById(R.id.scroll_view);
        this.d = (CellLayout) findViewById(R.id.folder_content);
        C0017al c0017alA = cB.a().i().a();
        this.d.a(c0017alA.x, c0017alA.y);
        this.d.b(0, 0);
        this.d.q().setMotionEventSplittingEnabled(false);
        this.d.b(true);
        this.e = (FolderEditText) findViewById(R.id.folder_name);
        this.e.a(this);
        this.e.setOnFocusChangeListener(this);
        this.e.measure(0, 0);
        this.A = this.e.getMeasuredHeight();
        this.e.setCustomSelectionActionModeCallback(this.T);
        this.e.setOnEditorActionListener(this);
        this.e.setSelectAllOnFocus(true);
        this.e.setInputType(this.e.getInputType() | 524288 | 8192);
        this.P = new aZ(this.g);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (view == this.e && z) {
            this.e.setHint("");
            this.I = true;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (!this.b.d()) {
            return true;
        }
        Object tag = view.getTag();
        if (tag instanceof C0137ey) {
            C0137ey c0137ey = (C0137ey) tag;
            if (!view.isInTouchMode()) {
                return false;
            }
            this.b.n().dismissFolderCling(null);
            this.b.h().a(view);
            this.b.h().a(view, this);
            this.r = c0137ey;
            this.x[0] = c0137ey.j;
            this.x[1] = c0137ey.k;
            this.s = view;
            this.d.removeView(this.s);
            this.c.b(this.r);
            this.C = true;
            this.F = false;
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int paddingLeft = getPaddingLeft() + getPaddingRight() + this.d.v();
        int iA = A();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(z(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(y(), 1073741824);
        if (cB.o()) {
            this.d.d(z(), this.d.w());
        } else {
            this.d.d(z(), y());
        }
        this.g.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.e.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(this.A, 1073741824));
        setMeasuredDimension(paddingLeft, iA);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    final float p() {
        return this.G;
    }

    final float q() {
        return this.H;
    }

    public final int r() {
        return this.d.q().getChildCount();
    }

    final boolean s() {
        return this.O;
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void t() {
        C();
    }

    public final ArrayList u() {
        if (this.q) {
            this.p.clear();
            for (int i = 0; i < this.d.l(); i++) {
                for (int i2 = 0; i2 < this.d.k(); i2++) {
                    View viewE = this.d.e(i2, i);
                    if (viewE != null) {
                        this.p.add(viewE);
                    }
                }
            }
            this.q = false;
        }
        return this.p;
    }
}
