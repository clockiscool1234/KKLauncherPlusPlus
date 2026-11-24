package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class eP implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WallpaperCropActivity f317a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;
    private final /* synthetic */ boolean d;

    eP(WallpaperCropActivity wallpaperCropActivity, int i, int i2, boolean z) {
        this.f317a = wallpaperCropActivity;
        this.b = i;
        this.c = i2;
        this.d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f317a.a(this.b, this.c);
        if (this.d) {
            this.f317a.setResult(-1);
            this.f317a.finish();
        }
    }
}
