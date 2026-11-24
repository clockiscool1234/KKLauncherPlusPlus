package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.android.launcher3.eg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0119eg extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f332a;
    private int b;
    private int c;
    private int d;

    public C0119eg(Context context) {
        super(context);
    }

    public final void a(int i, int i2) {
        this.c = i;
        this.d = i2;
        requestLayout();
    }

    public final void b(int i, int i2) {
        this.f332a = i;
        this.b = i2;
        requestLayout();
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
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0118ef c0118ef = (C0118ef) childAt.getLayoutParams();
                int i6 = c0118ef.f331a + 0;
                int i7 = c0118ef.b;
                childAt.layout(i6, i7, c0118ef.width + i6, c0118ef.height + i7);
            }
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0118ef c0118ef = (C0118ef) childAt.getLayoutParams();
            getContext();
            c0118ef.a(this.f332a, this.b, this.c, this.d, getPaddingLeft(), getPaddingTop());
            childAt.measure(View.MeasureSpec.makeMeasureSpec(c0118ef.width, 1073741824), View.MeasureSpec.makeMeasureSpec(c0118ef.height, 1073741824));
        }
        setMeasuredDimension(size, size2);
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
            if (!childAt.isHardwareAccelerated()) {
                childAt.buildDrawingCache(true);
            }
        }
    }
}
