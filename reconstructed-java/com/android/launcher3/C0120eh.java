package com.android.launcher3;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.GridLayout;

/* JADX INFO: renamed from: com.android.launcher3.eh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0120eh extends GridLayout implements dV {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f333a;
    private int b;
    private Runnable c;

    public C0120eh(Context context, int i, int i2) {
        super(context, null, 0);
        this.f333a = i;
        this.b = i2;
    }

    @Override // com.android.launcher3.dV
    public final void a() {
        removeAllViews();
        this.c = null;
        setLayerType(0, null);
    }

    public final void a(Runnable runnable) {
        this.c = runnable;
    }

    @Override // com.android.launcher3.dV
    public final int b() {
        return getChildCount();
    }

    final int c() {
        return this.f333a;
    }

    final int d() {
        return this.b;
    }

    public final void e() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setOnKeyListener(null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c = null;
    }

    @Override // android.widget.GridLayout, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.c != null) {
            this.c.run();
        }
    }

    @Override // android.widget.GridLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getSuggestedMinimumWidth(), View.MeasureSpec.getSize(i)), 1073741824), i2);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int childCount = getChildCount();
        if (childCount > 0) {
            return zOnTouchEvent || motionEvent.getY() < ((float) getChildAt(childCount + (-1)).getBottom());
        }
        return zOnTouchEvent;
    }
}
