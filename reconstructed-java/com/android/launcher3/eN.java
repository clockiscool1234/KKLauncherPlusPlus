package com.android.launcher3;

import android.graphics.Point;

/* JADX INFO: loaded from: classes.dex */
final class eN implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WallpaperCropActivity f315a;
    private final /* synthetic */ Point b;
    private final /* synthetic */ boolean c;

    eN(WallpaperCropActivity wallpaperCropActivity, Point point, boolean z) {
        this.f315a = wallpaperCropActivity;
        this.b = point;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f315a.a(this.b.x, this.b.y);
        if (this.c) {
            this.f315a.setResult(-1);
            this.f315a.finish();
        }
    }
}
