package com.android.launcher3;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class cD extends AppWidgetHost {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Launcher f211a;

    public cD(Launcher launcher, int i) {
        super(launcher, 1024);
        this.f211a = launcher;
    }

    @Override // android.appwidget.AppWidgetHost
    protected final AppWidgetHostView onCreateView(Context context, int i, AppWidgetProviderInfo appWidgetProviderInfo) {
        return new cE(context);
    }

    @Override // android.appwidget.AppWidgetHost
    protected final void onProvidersChanged() {
        this.f211a.d(cO.a((Context) this.f211a));
    }

    @Override // android.appwidget.AppWidgetHost
    public final void stopListening() {
        super.stopListening();
        clearViews();
    }
}
