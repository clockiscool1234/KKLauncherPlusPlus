package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.android.launcher3.ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0118ef extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f331a;
    int b;
    private int c;
    private int d;

    public C0118ef() {
        super(-1, -1);
        this.c = 1;
        this.d = 1;
    }

    public C0118ef(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 1;
        this.d = 1;
    }

    public C0118ef(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.c = 1;
        this.d = 1;
    }

    public final void a(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = this.c;
        int i8 = this.d;
        this.width = ((((i7 - 1) * i3) + (i7 * i)) - this.leftMargin) - this.rightMargin;
        this.height = (((i8 * i2) + ((i8 - 1) * i4)) - this.topMargin) - this.bottomMargin;
        if (cB.a().j()) {
            this.f331a = ((i + i3) * 0) + i5 + this.leftMargin;
            this.b = ((i2 + i4) * 0) + i6 + this.topMargin;
        } else {
            this.f331a = ((i + i3) * 0) + this.leftMargin;
            this.b = ((i2 + i4) * 0) + this.topMargin;
        }
    }

    public final String toString() {
        return "(0, 0, " + this.c + ", " + this.d + ")";
    }
}
