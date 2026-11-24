package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;

/* JADX INFO: renamed from: com.android.launcher3.ez, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0138ez extends dX {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f344a = (float) (0.016d / Math.log(0.75d));
    private int O;
    private Interpolator P;
    private float b;
    private float c;

    public AbstractC0138ez(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0138ez(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.H = false;
        this.I = this.O != 1;
    }

    private void a(int i, int i2, boolean z) {
        int i3;
        int iMax = Math.max(0, Math.min(i, getChildCount() - 1));
        int iMax2 = Math.max(1, Math.abs(iMax - this.i));
        int iM = m(iMax) - this.z;
        int i4 = (iMax2 + 1) * 100;
        if (!this.m.a()) {
            this.m.f();
        }
        if (z) {
            ((eA) this.P).a(iMax2);
        } else {
            ((eA) this.P).a();
        }
        int iAbs = Math.abs(0);
        if (iAbs > 0) {
            i3 = (int) (((i4 / (iAbs / this.b)) * this.c) + i4);
        } else {
            i3 = i4 + 100;
        }
        a_(iMax, iM, i3);
    }

    @Override // com.android.launcher3.dX
    protected final void U() {
        if (this.O == 1) {
            super.U();
        } else {
            a(T(), 0);
        }
    }

    @Override // com.android.launcher3.dX
    protected final void a() {
        super.a();
        this.O = 1;
        if (this.O == 0) {
            this.b = 2500.0f;
            this.c = 0.4f;
            this.P = new eA();
            a(this.P);
        }
    }

    @Override // com.android.launcher3.dX
    protected final void a(int i, int i2) {
        if (this.O == 1) {
            super.a(i, i2);
        } else {
            a(i, 0, true);
        }
    }

    @Override // com.android.launcher3.dX, android.view.View
    public void computeScroll() {
        if (this.O == 1) {
            super.computeScroll();
            return;
        }
        if (K() || this.p != 1) {
            return;
        }
        float fNanoTime = System.nanoTime() / 1.0E9f;
        float fExp = (float) Math.exp((fNanoTime - this.f) / f344a);
        float f = this.g - this.z;
        scrollTo(Math.round((fExp * f) + this.z), getScrollY());
        this.f = fNanoTime;
        if (f > 1.0f || f < -1.0f) {
            invalidate();
        }
    }

    @Override // com.android.launcher3.dX
    protected final void o(int i) {
        if (this.O == 1) {
            super.o(i);
        } else {
            a(i, 0, false);
        }
    }
}
