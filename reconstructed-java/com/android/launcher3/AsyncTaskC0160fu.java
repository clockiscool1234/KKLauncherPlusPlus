package com.android.launcher3;

import android.database.sqlite.SQLiteDiskIOException;
import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.fu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0160fu extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ C0161fv f387a;
    private final /* synthetic */ String b;

    AsyncTaskC0160fu(C0161fv c0161fv, String str) {
        this.f387a = c0161fv;
        this.b = str;
    }

    private Void a() {
        try {
            this.f387a.getWritableDatabase().delete("shortcut_and_widget_previews", "name = ? ", new String[]{this.b});
            return null;
        } catch (SQLiteDiskIOException e) {
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        return a();
    }
}
