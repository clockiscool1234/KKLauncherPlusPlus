package com.android.launcher3;

import android.os.AsyncTask;

/* JADX INFO: loaded from: classes.dex */
final class fM extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f358a;

    fM(Workspace workspace) {
        this.f358a = workspace;
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object... objArr) {
        LauncherWallpaperPickerActivity.a(this.f358a.aw.getResources(), this.f358a.aw.getSharedPreferences(WallpaperCropActivity.c(), 4), this.f358a.aw.getWindowManager(), this.f358a.aa);
        return null;
    }
}
