package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class E extends TextView implements aF, InterfaceC0022aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f80a;
    protected Launcher b;
    protected SearchDropTargetBar c;
    protected boolean d;
    protected int e;
    private int f;

    public E(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public E(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = 0;
        Resources resources = getResources();
        this.f80a = resources.getInteger(R.integer.config_dropTargetBgTransitionDuration);
        this.f = resources.getDimensionPixelSize(R.dimen.drop_target_drag_padding);
    }

    final Rect a(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int paddingRight;
        DragLayer dragLayerG = this.b.g();
        Rect rect = new Rect();
        dragLayerG.b(this, rect);
        if (getLayoutDirection() == 1) {
            paddingRight = rect.right - getPaddingRight();
            paddingLeft = paddingRight - i3;
        } else {
            paddingLeft = getPaddingLeft() + rect.left;
            paddingRight = paddingLeft + i3;
        }
        int measuredHeight = rect.top + ((getMeasuredHeight() - i4) / 2);
        rect.set(paddingLeft, measuredHeight, paddingRight, measuredHeight + i4);
        rect.offset((-(i - i3)) / 2, (-(i2 - i4)) / 2);
        return rect;
    }

    protected final Drawable a() {
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        for (int i = 0; i < compoundDrawablesRelative.length; i++) {
            if (compoundDrawablesRelative[i] != null) {
                return compoundDrawablesRelative[i];
            }
        }
        return null;
    }

    @Override // com.android.launcher3.aF
    public final void a(Rect rect) {
        super.getHitRect(rect);
        rect.bottom += this.f;
        int[] iArr = new int[2];
        this.b.g().b(this, iArr);
        rect.offsetTo(iArr[0], iArr[1]);
    }

    final void a(Launcher launcher) {
        this.b = launcher;
    }

    public final void a(SearchDropTargetBar searchDropTargetBar) {
        this.c = searchDropTargetBar;
    }

    public void a(aH aHVar, PointF pointF) {
    }

    public void a(InterfaceC0031az interfaceC0031az, Object obj) {
    }

    public boolean a(aH aHVar) {
        return false;
    }

    public void b(aH aHVar) {
    }

    @Override // com.android.launcher3.aF
    public final boolean b() {
        return this.d;
    }

    public void c() {
    }

    public void c(aH aHVar) {
        aHVar.f.b(this.e);
    }

    @Override // com.android.launcher3.aF
    public final void d(aH aHVar) {
    }

    public void e(aH aHVar) {
        aHVar.f.b(0);
    }
}
