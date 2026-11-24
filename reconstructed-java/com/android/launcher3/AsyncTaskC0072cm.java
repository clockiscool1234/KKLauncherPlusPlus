package com.android.launcher3;

import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.cm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0072cm extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f245a;
    private final /* synthetic */ C0078cs b;

    AsyncTaskC0072cm(Launcher launcher, C0078cs c0078cs) {
        this.f245a = launcher;
        this.b = c0078cs;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) throws Throwable {
        Launcher.b(this.f245a, this.b);
        return null;
    }
}
