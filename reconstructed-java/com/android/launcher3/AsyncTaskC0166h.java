package com.android.launcher3;

import android.os.AsyncTask;
import android.os.Process;

/* JADX INFO: renamed from: com.android.launcher3.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0166h extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f393a;
    private int b = 0;

    AsyncTaskC0166h(int i, A a2) {
        this.f393a = i;
    }

    final void a() {
        Process.setThreadPriority(this.b);
    }

    final void a(int i) {
        this.b = i;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        C0184z[] c0184zArr = (C0184z[]) objArr;
        if (c0184zArr.length != 1) {
            return null;
        }
        c0184zArr[0].d.a(this, c0184zArr[0]);
        return c0184zArr[0];
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        C0184z c0184z = (C0184z) obj;
        c0184z.e.a(this, c0184z);
    }
}
