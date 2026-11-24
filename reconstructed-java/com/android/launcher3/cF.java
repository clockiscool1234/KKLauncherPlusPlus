package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.ContentValues;

/* JADX INFO: loaded from: classes.dex */
final class cF extends bD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f213a;
    ComponentName b;
    int c = -1;
    int d = -1;
    AppWidgetHostView e = null;
    private boolean s;

    cF(int i, ComponentName componentName) {
        this.f213a = -1;
        this.g = 4;
        this.f213a = i;
        this.b = componentName;
        this.l = -1;
        this.m = -1;
    }

    @Override // com.android.launcher3.bD
    final void a(ContentValues contentValues) {
        super.a(contentValues);
        contentValues.put("appWidgetId", Integer.valueOf(this.f213a));
        contentValues.put("appWidgetProvider", this.b.flattenToString());
    }

    final void a(Launcher launcher) {
        if (this.s) {
            return;
        }
        b(launcher);
    }

    final void b(Launcher launcher) {
        C0112e.a(this.e, launcher, this.l, this.m);
        this.s = true;
    }

    @Override // com.android.launcher3.bD
    final void b_() {
        super.b_();
        this.e = null;
    }

    @Override // com.android.launcher3.bD
    public final String toString() {
        return "AppWidget(id=" + Integer.toString(this.f213a) + ")";
    }
}
