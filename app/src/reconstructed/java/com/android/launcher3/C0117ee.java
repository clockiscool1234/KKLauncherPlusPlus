package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.android.launcher3.ee, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0117ee extends ViewGroup implements dV {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f330a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private C0119eg k;

    public C0117ee(Context context) {
        this(context, null);
    }

    private C0117ee(Context context, AttributeSet attributeSet) {
        this(context, null, 0);
    }

    private C0117ee(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        setAlwaysDrawnWithCacheEnabled(false);
        C0017al c0017alA = cB.a().i().a();
        int i2 = c0017alA.r;
        this.e = i2;
        this.c = i2;
        int i3 = c0017alA.s;
        this.f = i3;
        this.d = i3;
        this.f330a = (int) c0017alA.d;
        this.b = (int) c0017alA.c;
        this.j = -1;
        this.i = -1;
        this.h = -1;
        this.g = -1;
        this.k = new C0119eg(context);
        this.k.b(this.e, this.f);
        this.k.a(this.i, this.j);
        addView(this.k);
    }

    public final int a(int i) {
        return this.e * i;
    }

    @Override // com.android.launcher3.dV
    public final void a() {
        this.k.removeAllViews();
        setLayerType(0, null);
    }

    public final int[] a(int i, int i2) {
        return new int[]{getPaddingLeft() + (this.e * i) + (this.i * i) + (this.e / 2), getPaddingTop() + (this.f * i2) + (this.j * i2) + (this.f / 2)};
    }

    @Override // com.android.launcher3.dV
    public final int b() {
        return this.k.getChildCount();
    }

    public final int b(int i) {
        return this.f * i;
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    @Override // android.view.ViewGroup
    protected final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0118ef;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0118ef(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0118ef(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int paddingTop;
        int paddingLeft;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        int i3 = this.f330a - 1;
        int i4 = this.b - 1;
        if (this.g < 0 || this.h < 0) {
            int paddingLeft2 = (size - getPaddingLeft()) - getPaddingRight();
            int paddingTop2 = (size2 - getPaddingTop()) - getPaddingBottom();
            int i5 = paddingLeft2 - (this.f330a * this.c);
            int i6 = paddingTop2 - (this.b * this.d);
            this.i = i3 > 0 ? i5 / i3 : 0;
            this.j = i4 > 0 ? i6 / i4 : 0;
            this.k.a(this.i, this.j);
        } else {
            this.i = this.g;
            this.j = this.h;
        }
        if (mode == Integer.MIN_VALUE) {
            paddingLeft = ((this.f330a - 1) * this.i) + getPaddingLeft() + getPaddingRight() + (this.f330a * this.e);
            paddingTop = getPaddingTop() + getPaddingBottom() + (this.b * this.f) + ((this.b - 1) * this.j);
            setMeasuredDimension(paddingLeft, paddingTop);
        } else {
            paddingTop = size2;
            paddingLeft = size;
        }
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            getChildAt(i7).measure(View.MeasureSpec.makeMeasureSpec((paddingLeft - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((paddingTop - getPaddingTop()) - getPaddingBottom(), 1073741824));
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int childCount = this.k.getChildCount();
        if (childCount <= 0) {
            return zOnTouchEvent;
        }
        int bottom = this.k.getChildAt(childCount - 1).getBottom();
        if (((int) Math.ceil(this.k.getChildCount() / this.f330a)) < this.b) {
            bottom += this.f / 2;
        }
        return zOnTouchEvent || motionEvent.getY() < ((float) bottom);
    }

    @Override // android.view.ViewGroup
    protected final void setChildrenDrawingCacheEnabled(boolean z) {
        this.k.setChildrenDrawingCacheEnabled(z);
    }
}
