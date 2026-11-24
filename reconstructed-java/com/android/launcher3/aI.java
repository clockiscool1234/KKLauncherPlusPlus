package com.android.launcher3;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class aI {
    private C0017al b;
    private float c;
    private float d;
    private static float e = 60.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static float f127a = 0.0f;

    public aI(Context context, Resources resources, int i, int i2, int i3, int i4, int i5, int i6) {
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        ArrayList arrayList = new ArrayList();
        cB.o();
        f127a = a(e, displayMetrics);
        arrayList.add(new C0017al("Super Short Stubby", 255.0f, 300.0f, 2.0f, 3.0f, 48.0f, 13.0f, 5.0f, 48.0f));
        arrayList.add(new C0017al("Shorter Stubby", 255.0f, 400.0f, 3.0f, 3.0f, 48.0f, 13.0f, 5.0f, 48.0f));
        arrayList.add(new C0017al("Short Stubby", 275.0f, 420.0f, 3.0f, 4.0f, 48.0f, 13.0f, 5.0f, 48.0f));
        arrayList.add(new C0017al("Stubby", 255.0f, 450.0f, 3.0f, 4.0f, 48.0f, 13.0f, 5.0f, 48.0f));
        arrayList.add(new C0017al("Nexus S", 296.0f, 491.33f, 4.0f, 4.0f, 48.0f, 13.0f, 5.0f, 48.0f));
        arrayList.add(new C0017al("Nexus 4", 335.0f, 567.0f, 4.0f, 4.0f, e, 13.0f, 5.0f, 56.0f));
        arrayList.add(new C0017al("Nexus 5", 359.0f, 567.0f, 4.0f, 4.0f, e, 13.0f, 5.0f, 56.0f));
        arrayList.add(new C0017al("Large Phone", 406.0f, 694.0f, 5.0f, 5.0f, 64.0f, 14.4f, 5.0f, 56.0f));
        arrayList.add(new C0017al("Nexus 7", 575.0f, 904.0f, 5.0f, 6.0f, 72.0f, 14.4f, 7.0f, 60.0f));
        arrayList.add(new C0017al("Nexus 10", 727.0f, 1207.0f, 5.0f, 6.0f, 76.0f, 14.4f, 7.0f, 64.0f));
        arrayList.add(new C0017al("20-inch Tablet", 1527.0f, 2527.0f, 7.0f, 7.0f, 100.0f, 20.0f, 7.0f, 72.0f));
        this.c = a(i, displayMetrics);
        this.d = a(i2, displayMetrics);
        this.b = new C0017al(context, arrayList, this.c, this.d, i3, i4, i5, i6, resources);
    }

    private static float a(int i, DisplayMetrics displayMetrics) {
        return i / (displayMetrics.densityDpi / 160.0f);
    }

    public static int a(float f, DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(1, f, displayMetrics));
    }

    public static int b(float f, DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(2, f, displayMetrics));
    }

    public final C0017al a() {
        return this.b;
    }

    public final String toString() {
        return "-------- DYNAMIC GRID ------- \nWd: " + this.b.f153a + ", Hd: " + this.b.b + ", W: " + this.b.k + ", H: " + this.b.l + " [r: " + this.b.c + ", c: " + this.b.d + ", is: " + this.b.o + ", its: " + this.b.p + ", cw: " + this.b.r + ", ch: " + this.b.s + ", hc: " + this.b.e + ", his: " + this.b.B + "]";
    }
}
