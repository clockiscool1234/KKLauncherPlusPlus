package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.os.Bundle;

/* JADX INFO: renamed from: com.android.launcher3.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0169k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f395a;
    private final /* synthetic */ Bundle b;
    private final /* synthetic */ C0129eq c;

    RunnableC0169k(AppsCustomizePagedView appsCustomizePagedView, Bundle bundle, C0129eq c0129eq) {
        this.f395a = appsCustomizePagedView;
        this.b = bundle;
        this.c = c0129eq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f395a.c = this.f395a.P.l().allocateAppWidgetId();
        if (this.b == null) {
            if (AppWidgetManager.getInstance(this.f395a.P).bindAppWidgetIdIfAllowed(this.f395a.c, this.c.f337a)) {
                this.f395a.b = 1;
            }
        } else if (AppWidgetManager.getInstance(this.f395a.P).bindAppWidgetIdIfAllowed(this.f395a.c, this.c.f337a, this.b)) {
            this.f395a.b = 1;
        }
    }
}
