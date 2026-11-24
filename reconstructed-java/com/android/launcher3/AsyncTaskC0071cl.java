package com.android.launcher3;

import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.cl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0071cl extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f244a;

    AsyncTaskC0071cl(Launcher launcher) {
        this.f244a = launcher;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) throws Throwable {
        C0078cs c0078cs = new C0078cs((byte) 0);
        Launcher.a(this.f244a, c0078cs);
        return c0078cs;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        Launcher.X = (C0078cs) obj;
        this.f244a.R();
    }
}
