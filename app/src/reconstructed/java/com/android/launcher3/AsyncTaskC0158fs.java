package com.android.launcher3;

import android.graphics.Bitmap;
import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.fs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0158fs extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0157fr f385a;
    private final /* synthetic */ Object b;
    private final /* synthetic */ Bitmap c;

    AsyncTaskC0158fs(C0157fr c0157fr, Object obj, Bitmap bitmap) {
        this.f385a = c0157fr;
        this.b = obj;
        this.c = bitmap;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        C0157fr.a(this.f385a, this.b, this.c);
        return null;
    }
}
