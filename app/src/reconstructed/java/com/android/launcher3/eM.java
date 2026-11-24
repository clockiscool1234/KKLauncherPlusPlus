package com.android.launcher3;

import android.os.AsyncTask;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eM implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AsyncTask f314a;
    private final /* synthetic */ View b;

    eM(WallpaperCropActivity wallpaperCropActivity, AsyncTask asyncTask, View view) {
        this.f314a = asyncTask;
        this.b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f314a.getStatus() != AsyncTask.Status.FINISHED) {
            this.b.setVisibility(0);
        }
    }
}
