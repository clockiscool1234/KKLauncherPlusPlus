package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class eO implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WallpaperCropActivity f316a;
    private final /* synthetic */ boolean b;

    eO(WallpaperCropActivity wallpaperCropActivity, boolean z) {
        this.f316a = wallpaperCropActivity;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f316a.a(0, 0);
        if (this.b) {
            this.f316a.setResult(-1);
            this.f316a.finish();
        }
    }
}
