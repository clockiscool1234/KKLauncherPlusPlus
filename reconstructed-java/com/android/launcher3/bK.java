package com.android.launcher3;

import android.os.AsyncTask;

/* JADX INFO: loaded from: classes.dex */
final class bK extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f173a;
    private final /* synthetic */ int b;

    bK(Launcher launcher, int i) {
        this.f173a = launcher;
        this.b = i;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        this.f173a.t.deleteAppWidgetId(this.b);
        return null;
    }
}
