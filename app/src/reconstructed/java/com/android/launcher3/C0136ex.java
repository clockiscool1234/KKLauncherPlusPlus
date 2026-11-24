package com.android.launcher3;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.android.launcher3.ex, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0136ex extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f342a;
    private final WallpaperManager b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;

    public C0136ex(Context context) {
        super(context);
        this.f342a = new int[2];
        this.i = false;
        this.b = WallpaperManager.getInstance(context);
    }

    private boolean c() {
        if (this.i) {
            if (getLayoutDirection() == 1) {
                return true;
            }
        }
        return false;
    }

    final int a() {
        C0017al c0017alA = cB.a().i().a();
        return Math.min(getMeasuredHeight(), this.c ? c0017alA.z : c0017alA.r);
    }

    public final void a(int i, int i2, int i3, int i4, int i5, int i6) {
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
    }

    public final void a(View view) {
        C0017al c0017alA = cB.a().i().a();
        int i = this.d;
        int i2 = this.e;
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams.i) {
            layoutParams.k = 0;
            layoutParams.l = 0;
            layoutParams.width = getMeasuredWidth();
            layoutParams.height = getMeasuredHeight();
        } else {
            layoutParams.a(i, i2, this.f, this.g, c(), this.h);
            if (!(view instanceof cE)) {
                int iMax = (int) Math.max(0.0f, (layoutParams.height - b()) / 2.0f);
                int i3 = (int) (c0017alA.j / 2.0f);
                view.setPadding(i3, iMax, i3, 0);
            }
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
    }

    public final void a(CellLayout.LayoutParams layoutParams) {
        layoutParams.a(this.d, this.e, this.f, this.g, c(), this.h);
    }

    public final void a(boolean z) {
        this.i = z;
    }

    final int b() {
        C0017al c0017alA = cB.a().i().a();
        return Math.min(getMeasuredHeight(), this.c ? c0017alA.A : c0017alA.s);
    }

    public final void b(boolean z) {
        this.c = z;
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) childAt.getLayoutParams();
                int i6 = layoutParams.k;
                int i7 = layoutParams.l;
                childAt.layout(i6, i7, layoutParams.width + i6, layoutParams.height + i7);
                if (layoutParams.m) {
                    layoutParams.m = false;
                    int[] iArr = this.f342a;
                    getLocationOnScreen(iArr);
                    this.b.sendWallpaperCommand(getWindowToken(), "android.home.drop", i6 + iArr[0] + (layoutParams.width / 2), (layoutParams.height / 2) + i7 + iArr[1], 0, null);
                }
            }
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                a(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (view != null) {
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            requestRectangleOnScreen(rect);
        }
    }

    @Override // android.view.ViewGroup
    protected final void setChildrenDrawingCacheEnabled(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            childAt.setDrawingCacheEnabled(z);
            if (!childAt.isHardwareAccelerated() && z) {
                childAt.buildDrawingCache(true);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected final void setChildrenDrawnWithCacheEnabled(boolean z) {
        super.setChildrenDrawnWithCacheEnabled(z);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
