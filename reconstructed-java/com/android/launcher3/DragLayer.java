package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DragLayer extends FrameLayout implements ViewGroup.OnHierarchyChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private C0021ap f77a;
    private int[] b;
    private int c;
    private int d;
    private Launcher e;
    private final ArrayList f;
    private C0112e g;
    private ValueAnimator h;
    private ValueAnimator i;
    private TimeInterpolator j;
    private aA k;
    private int l;
    private View m;
    private boolean n;
    private Rect o;
    private InterfaceC0029ax p;
    private final Rect q;
    private int r;
    private boolean s;
    private Drawable t;
    private Drawable u;

    public class LayoutParams extends FrameLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f78a;
        public int b;
        public boolean c;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.c = false;
        }

        public int getHeight() {
            return this.height;
        }

        public int getWidth() {
            return this.width;
        }

        public int getX() {
            return this.f78a;
        }

        public int getY() {
            return this.b;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setWidth(int i) {
            this.width = i;
        }

        public void setX(int i) {
            this.f78a = i;
        }

        public void setY(int i) {
            this.b = i;
        }
    }

    public DragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new int[2];
        this.f = new ArrayList();
        this.h = null;
        this.i = null;
        this.j = new DecelerateInterpolator(1.5f);
        this.k = null;
        this.l = 0;
        this.m = null;
        this.n = false;
        this.o = new Rect();
        this.q = new Rect();
        setMotionEventSplittingEnabled(false);
        setChildrenDrawingOrderEnabled(true);
        setOnHierarchyChangeListener(this);
        this.t = getResources().getDrawable(R.drawable.page_hover_left_holo);
        this.u = getResources().getDrawable(R.drawable.page_hover_right_holo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(View view, Rect rect, Rect rect2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (view instanceof InterfaceC0058bz) {
            ((InterfaceC0058bz) view).a_(rect);
        } else {
            layoutParams.topMargin += rect.top - rect2.top;
            layoutParams.leftMargin += rect.left - rect2.left;
            layoutParams.rightMargin += rect.right - rect2.right;
            layoutParams.bottomMargin += rect.bottom - rect2.bottom;
        }
        view.setLayoutParams(layoutParams);
    }

    private void a(boolean z) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            int i = z ? R.string.folder_tap_to_rename : R.string.folder_tap_to_close;
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(8);
            onInitializeAccessibilityEvent(accessibilityEventObtain);
            accessibilityEventObtain.getText().add(getContext().getString(i));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    private boolean a(MotionEvent motionEvent, boolean z) {
        Rect rect = new Rect();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        for (C0112e c0112e : this.f) {
            c0112e.getHitRect(rect);
            if (rect.contains(x, y) && c0112e.a(x - c0112e.getLeft(), y - c0112e.getTop())) {
                this.g = c0112e;
                this.c = x;
                this.d = y;
                requestDisallowInterceptTouchEvent(true);
                return true;
            }
        }
        Folder folderK = this.e.h().k();
        if (folderK != null && !this.e.n().a() && z) {
            if (folderK.a()) {
                a(folderK.d(), this.o);
                if (!(this.o.contains((int) motionEvent.getX(), (int) motionEvent.getY()))) {
                    folderK.c();
                    return true;
                }
            }
            a(folderK, rect);
            if (!a(folderK, motionEvent)) {
                this.e.v();
                return true;
            }
        }
        return false;
    }

    private boolean a(Folder folder, MotionEvent motionEvent) {
        a(folder, this.o);
        return this.o.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    static /* synthetic */ void d(DragLayer dragLayer) {
        dragLayer.i = new ValueAnimator();
        dragLayer.i.setDuration(150L);
        dragLayer.i.setFloatValues(0.0f, 1.0f);
        dragLayer.i.removeAllUpdateListeners();
        dragLayer.i.addUpdateListener(new C0027av(dragLayer));
        dragLayer.i.addListener(new C0028aw(dragLayer));
        dragLayer.i.start();
    }

    private void f() {
        this.r = -1;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i) instanceof aA) {
                this.r = i;
            }
        }
    }

    public final float a(View view, Rect rect) {
        this.b[0] = 0;
        this.b[1] = 0;
        float fA = eI.a(view, this, this.b, false);
        rect.set(this.b[0], this.b[1], (int) (this.b[0] + (view.getMeasuredWidth() * fA)), (int) (this.b[1] + (view.getMeasuredHeight() * fA)));
        return fA;
    }

    public final float a(View view, int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        return eI.a(view, this, iArr, false);
    }

    public final float a(View view, int[] iArr, boolean z) {
        return eI.a(view, this, iArr, z);
    }

    public final void a() {
        if (this.f.size() > 0) {
            for (C0112e c0112e : this.f) {
                c0112e.a();
                removeView(c0112e);
            }
            this.f.clear();
        }
    }

    public final void a(Launcher launcher, C0021ap c0021ap) {
        this.e = launcher;
        this.f77a = c0021ap;
    }

    public final void a(aA aAVar, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4, float f5, Runnable runnable, int i5, int i6, View view) {
        a(aAVar, new Rect(i, i2, aAVar.getMeasuredWidth() + i, aAVar.getMeasuredHeight() + i2), new Rect(i3, i4, aAVar.getMeasuredWidth() + i3, aAVar.getMeasuredHeight() + i4), f, 1.0f, 1.0f, f4, f5, i6, (Interpolator) null, (Interpolator) null, runnable, i5, view);
    }

    public final void a(aA aAVar, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, int i, TimeInterpolator timeInterpolator, Runnable runnable, int i2, View view) {
        if (this.h != null) {
            this.h.cancel();
        }
        if (this.i != null) {
            this.i.cancel();
        }
        this.k = aAVar;
        this.k.h();
        this.k.i();
        if (view != null) {
            this.l = view.getScrollX();
        }
        this.m = view;
        this.h = new ValueAnimator();
        this.h.setInterpolator(timeInterpolator);
        this.h.setDuration(i);
        this.h.setFloatValues(0.0f, 1.0f);
        this.h.addUpdateListener(animatorUpdateListener);
        this.h.addListener(new C0026au(this, runnable, i2));
        this.h.start();
    }

    public final void a(aA aAVar, Rect rect, Rect rect2, float f, float f2, float f3, float f4, float f5, int i, Interpolator interpolator, Interpolator interpolator2, Runnable runnable, int i2, View view) {
        float fSqrt = (float) Math.sqrt(Math.pow(rect2.left - rect.left, 2.0d) + Math.pow(rect2.top - rect.top, 2.0d));
        Resources resources = getResources();
        float integer = resources.getInteger(R.integer.config_dropAnimMaxDist);
        if (i < 0) {
            int integer2 = resources.getInteger(R.integer.config_dropAnimMaxDuration);
            if (fSqrt < integer) {
                integer2 = (int) (integer2 * this.j.getInterpolation(fSqrt / integer));
            }
            i = Math.max(integer2, resources.getInteger(R.integer.config_dropAnimMinDuration));
        }
        a(aAVar, new C0025at(this, aAVar, interpolator2, interpolator, f2, aAVar.getScaleX(), f3, f4, f5, f, aAVar.getAlpha(), rect, rect2), i, (interpolator2 == null || interpolator == null) ? this.j : null, runnable, i2, view);
    }

    public final void a(aA aAVar, View view, int i, Runnable runnable, View view2) {
        int iRound;
        int iRound2;
        float fA;
        C0136ex c0136ex = (C0136ex) view.getParent();
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        c0136ex.a(view);
        Rect rect = new Rect();
        b(aAVar, rect);
        float scaleX = view.getScaleX();
        int[] iArr = {layoutParams.k + ((int) ((view.getMeasuredWidth() * (1.0f - scaleX)) / 2.0f)), layoutParams.l + ((int) ((view.getMeasuredHeight() * (1.0f - scaleX)) / 2.0f))};
        float fB = b((View) view.getParent(), iArr) * scaleX;
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (view instanceof TextView) {
            fA = fB / aAVar.a();
            iRound = (int) ((Math.round(((TextView) view).getPaddingTop() * fA) + i3) - ((aAVar.getMeasuredHeight() * (1.0f - fA)) / 2.0f));
            iRound2 = i2 - ((aAVar.getMeasuredWidth() - Math.round(fB * view.getMeasuredWidth())) / 2);
        } else if (view instanceof FolderIcon) {
            iRound = (int) (((int) ((Math.round((view.getPaddingTop() - aAVar.b()) * fB) + i3) - ((2.0f * fB) / 2.0f))) - (((1.0f - fB) * aAVar.getMeasuredHeight()) / 2.0f));
            iRound2 = i2 - ((aAVar.getMeasuredWidth() - Math.round(view.getMeasuredWidth() * fB)) / 2);
            fA = fB;
        } else {
            iRound = i3 - (Math.round((aAVar.getHeight() - view.getMeasuredHeight()) * fB) / 2);
            iRound2 = i2 - (Math.round((aAVar.getMeasuredWidth() - view.getMeasuredWidth()) * fB) / 2);
            fA = fB;
        }
        int i4 = rect.left;
        int i5 = rect.top;
        view.setVisibility(4);
        a(aAVar, i4, i5, iRound2, iRound, 1.0f, 1.0f, 1.0f, fA, fA, new RunnableC0024as(this, view, runnable), 0, i, view2);
    }

    public final void a(aA aAVar, View view, Runnable runnable, View view2) {
        a(aAVar, view, -1, runnable, view2);
    }

    public final void a(aA aAVar, int[] iArr, float f, float f2, float f3, int i, Runnable runnable, int i2) {
        Rect rect = new Rect();
        b(aAVar, rect);
        a(aAVar, rect.left, rect.top, iArr[0], iArr[1], 0.0f, 1.0f, 1.0f, 0.1f, 0.1f, runnable, 0, i2, (View) null);
    }

    public final void a(InterfaceC0029ax interfaceC0029ax) {
        this.p = interfaceC0029ax;
    }

    public final void a(cE cEVar, CellLayout cellLayout) {
        C0112e c0112e = new C0112e(getContext(), cEVar, cellLayout, this);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.c = true;
        addView(c0112e, layoutParams);
        this.f.add(c0112e);
        c0112e.a(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList arrayList) {
        Folder folderK = this.e.h().k();
        if (folderK != null) {
            arrayList.add(folderK);
        } else {
            super.addChildrenForAccessibility(arrayList);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        a(view, this.q, new Rect());
    }

    public final float b(View view, int[] iArr) {
        return eI.a(view, this, iArr, false);
    }

    public final void b() {
        if (this.h != null) {
            this.h.cancel();
        }
        if (this.k != null) {
            this.f77a.a(this.k);
        }
        this.k = null;
        invalidate();
    }

    public final void b(View view, Rect rect) {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        view.getLocationInWindow(iArr);
        int i3 = iArr[0] - i;
        int i4 = iArr[1] - i2;
        rect.set(i3, i4, view.getMeasuredWidth() + i3, view.getMeasuredHeight() + i4);
    }

    public final float c(View view, int[] iArr) {
        return eI.a(view, this, iArr);
    }

    public final View c() {
        return this.k;
    }

    final void d() {
        this.s = true;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (!this.s || cB.a().j()) {
            return;
        }
        Workspace workspaceH = this.e.h();
        int measuredWidth = getMeasuredWidth();
        Rect rect = new Rect();
        a(workspaceH.getChildAt(0), rect);
        int iD = workspaceH.D();
        boolean z = getLayoutDirection() == 1;
        CellLayout cellLayout = (CellLayout) workspaceH.getChildAt(z ? iD + 1 : iD - 1);
        CellLayout cellLayout2 = (CellLayout) workspaceH.getChildAt(z ? iD - 1 : iD + 1);
        if (cellLayout != null && cellLayout.h()) {
            this.t.setBounds(0, rect.top, this.t.getIntrinsicWidth(), rect.bottom);
            this.t.draw(canvas);
        } else {
            if (cellLayout2 == null || !cellLayout2.h()) {
                return;
            }
            this.u.setBounds(measuredWidth - this.u.getIntrinsicWidth(), rect.top, measuredWidth, rect.bottom);
            this.u.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f77a.a() || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return this.f77a.a(view, i);
    }

    final void e() {
        this.s = false;
        invalidate();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(getChildAt(i), rect, this.q);
        }
        this.q.set(rect);
        return true;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.r == -1) {
            return i2;
        }
        if (i2 == this.r) {
            return getChildCount() - 1;
        }
        return i2 >= this.r ? i2 - 1 : i2;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        f();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        f();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        if (this.e == null || this.e.h() == null) {
            return false;
        }
        Folder folderK = this.e.h().k();
        if (folderK == null) {
            return false;
        }
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            switch (motionEvent.getAction()) {
                case 7:
                    boolean zA = a(folderK, motionEvent);
                    if (!zA && !this.n) {
                        a(folderK.a());
                        this.n = true;
                        return true;
                    }
                    if (!zA) {
                        return true;
                    }
                    this.n = false;
                    break;
                    break;
                case 9:
                    if (!a(folderK, motionEvent)) {
                        a(folderK.a());
                        this.n = true;
                        return true;
                    }
                    this.n = false;
                    break;
                    break;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            if (a(motionEvent, true)) {
                return true;
            }
        } else if (action == 1 || action == 3) {
            if (this.p != null) {
                this.p.a();
            }
            this.p = null;
        }
        a();
        return this.f77a.a(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                if (layoutParams2.c) {
                    childAt.layout(layoutParams2.f78a, layoutParams2.b, layoutParams2.f78a + layoutParams2.width, layoutParams2.height + layoutParams2.b);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        Folder folderK = this.e.h().k();
        if (folderK == null || view == folderK) {
            return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0) {
            if (a(motionEvent, false)) {
                return true;
            }
        } else if (action == 1 || action == 3) {
            if (this.p != null) {
                this.p.a();
            }
            this.p = null;
        }
        if (this.g != null) {
            switch (action) {
                case 1:
                case 3:
                    this.g.b(x - this.c, y - this.d);
                    this.g.b();
                    this.g = null;
                    z = true;
                    break;
                case 2:
                    this.g.b(x - this.c, y - this.d);
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
        }
        if (z) {
            return true;
        }
        return this.f77a.b(motionEvent);
    }
}
