package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;

/* JADX INFO: loaded from: classes.dex */
final class bG implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f169a;
    private final /* synthetic */ int b;
    private final /* synthetic */ AppWidgetHostView c;
    private final /* synthetic */ int d;

    bG(Launcher launcher, int i, AppWidgetHostView appWidgetHostView, int i2) {
        this.f169a = launcher;
        this.b = i;
        this.c = appWidgetHostView;
        this.d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f169a.a(this.b, this.f169a.u.h, this.f169a.u.i, this.c, (AppWidgetProviderInfo) null);
        this.f169a.a(this.d != 0, 300, (Runnable) null);
    }
}
