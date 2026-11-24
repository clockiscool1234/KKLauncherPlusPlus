package com.android.launcher3;

import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0011af extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ cD f148a;
    private final /* synthetic */ cF b;

    AsyncTaskC0011af(DeleteDropTarget deleteDropTarget, cD cDVar, cF cFVar) {
        this.f148a = cDVar;
        this.b = cFVar;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        this.f148a.deleteAppWidgetId(this.b.f213a);
        return null;
    }
}
