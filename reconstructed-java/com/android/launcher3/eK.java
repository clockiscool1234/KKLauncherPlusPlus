package com.android.launcher3;

import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
final class eK implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WallpaperCropActivity f312a;
    private final /* synthetic */ com.android.b.f b;

    eK(WallpaperCropActivity wallpaperCropActivity, com.android.b.f fVar) {
        this.f312a = wallpaperCropActivity;
        this.b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.b() == com.android.b.c.LOADED) {
            this.f312a.c.setVisibility(0);
        } else {
            Toast.makeText(this.f312a, this.f312a.getString(R.string.wallpaper_load_fail), 1).show();
            this.f312a.finish();
        }
    }
}
