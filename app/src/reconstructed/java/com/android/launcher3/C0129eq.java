package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: renamed from: com.android.launcher3.eq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0129eq extends C0127eo {
    int b;
    int c;
    int d;
    int e;
    AppWidgetProviderInfo s;
    AppWidgetHostView t;
    Bundle u;
    private int v;
    private int w;
    private String x;
    private Parcelable y;

    public C0129eq(AppWidgetProviderInfo appWidgetProviderInfo, String str, Parcelable parcelable) {
        this.u = null;
        this.g = 4;
        this.s = appWidgetProviderInfo;
        this.f337a = appWidgetProviderInfo.provider;
        this.b = appWidgetProviderInfo.minWidth;
        this.c = appWidgetProviderInfo.minHeight;
        this.v = appWidgetProviderInfo.minResizeWidth;
        this.w = appWidgetProviderInfo.minResizeHeight;
        this.d = appWidgetProviderInfo.previewImage;
        this.e = appWidgetProviderInfo.icon;
    }

    public C0129eq(C0129eq c0129eq) {
        this.u = null;
        this.b = c0129eq.b;
        this.c = c0129eq.c;
        this.v = c0129eq.v;
        this.w = c0129eq.w;
        this.d = c0129eq.d;
        this.e = c0129eq.e;
        this.s = c0129eq.s;
        this.t = c0129eq.t;
        this.x = c0129eq.x;
        this.y = c0129eq.y;
        this.f337a = c0129eq.f337a;
        this.g = c0129eq.g;
        this.l = c0129eq.l;
        this.m = c0129eq.m;
        this.n = c0129eq.n;
        this.o = c0129eq.o;
        this.u = c0129eq.u != null ? (Bundle) c0129eq.u.clone() : null;
    }

    @Override // com.android.launcher3.bD
    public final String toString() {
        return "Widget: " + this.f337a.toShortString();
    }
}
