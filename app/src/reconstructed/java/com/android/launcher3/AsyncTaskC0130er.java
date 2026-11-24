package com.android.launcher3;

import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.er, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0130er extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ LauncherProvider f338a;
    private final /* synthetic */ int b;

    AsyncTaskC0130er(PreloadReceiver preloadReceiver, LauncherProvider launcherProvider, int i) {
        this.f338a = launcherProvider;
        this.b = i;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        this.f338a.a(this.b);
        return null;
    }
}
