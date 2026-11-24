package com.android.launcher3;

import android.app.WallpaperInfo;
import android.content.Intent;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class dN extends AbstractC0149fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Drawable f268a;
    private WallpaperInfo c;

    public dN(Drawable drawable, WallpaperInfo wallpaperInfo) {
        this.f268a = drawable;
        this.c = wallpaperInfo;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        Intent intent = new Intent("android.service.wallpaper.CHANGE_LIVE_WALLPAPER");
        intent.putExtra("android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT", this.c.getComponent());
        eSVar.f();
        eSVar.a(intent, 7);
    }
}
