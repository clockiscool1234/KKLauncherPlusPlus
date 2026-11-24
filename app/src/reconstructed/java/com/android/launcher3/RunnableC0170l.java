package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;

/* JADX INFO: renamed from: com.android.launcher3.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0170l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f396a;
    private final /* synthetic */ AppWidgetProviderInfo b;
    private final /* synthetic */ C0129eq c;

    RunnableC0170l(AppsCustomizePagedView appsCustomizePagedView, AppWidgetProviderInfo appWidgetProviderInfo, C0129eq c0129eq) {
        this.f396a = appsCustomizePagedView;
        this.b = appWidgetProviderInfo;
        this.c = c0129eq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f396a.b != 1) {
            return;
        }
        AppWidgetHostView appWidgetHostViewCreateView = this.f396a.P.l().createView(this.f396a.getContext(), this.f396a.c, this.b);
        this.c.t = appWidgetHostViewCreateView;
        this.f396a.b = 2;
        appWidgetHostViewCreateView.setVisibility(4);
        int[] iArrA = this.f396a.P.h().a(this.c.l, this.c.m, (bD) this.c, false);
        DragLayer.LayoutParams layoutParams = new DragLayer.LayoutParams(iArrA[0], iArrA[1]);
        layoutParams.b = 0;
        layoutParams.f78a = 0;
        layoutParams.c = true;
        appWidgetHostViewCreateView.setLayoutParams(layoutParams);
        this.f396a.P.g().addView(appWidgetHostViewCreateView);
    }
}
