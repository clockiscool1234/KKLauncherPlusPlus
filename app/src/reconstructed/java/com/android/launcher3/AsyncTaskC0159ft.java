package com.android.launcher3;

import android.database.sqlite.SQLiteDiskIOException;
import android.os.AsyncTask;

/* JADX INFO: renamed from: com.android.launcher3.ft, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0159ft extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ C0161fv f386a;
    private final /* synthetic */ String b;

    AsyncTaskC0159ft(C0161fv c0161fv, String str) {
        this.f386a = c0161fv;
        this.b = str;
    }

    private Void a() {
        try {
            this.f386a.getWritableDatabase().delete("shortcut_and_widget_previews", "name LIKE ? OR name LIKE ?", new String[]{"Widget:" + this.b + "/%", "Shortcut:" + this.b + "/%"});
        } catch (SQLiteDiskIOException e) {
        }
        synchronized (C0157fr.u) {
            C0157fr.u.remove(this.b);
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        return a();
    }
}
