package com.android.launcher3;

import android.net.Uri;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eJ implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WallpaperCropActivity f311a;
    private final /* synthetic */ Uri b;

    eJ(WallpaperCropActivity wallpaperCropActivity, Uri uri) {
        this.f311a = wallpaperCropActivity;
        this.b = uri;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f311a.a(this.b, (eR) null, true);
    }
}
