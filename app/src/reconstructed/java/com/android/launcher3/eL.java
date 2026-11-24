package com.android.launcher3;

import android.content.Context;
import android.os.AsyncTask;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eL extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ WallpaperCropActivity f313a;
    private final /* synthetic */ com.android.b.b b;
    private final /* synthetic */ View c;
    private final /* synthetic */ Context d;
    private final /* synthetic */ boolean e;
    private final /* synthetic */ boolean f;
    private final /* synthetic */ Runnable g;

    eL(WallpaperCropActivity wallpaperCropActivity, com.android.b.b bVar, View view, Context context, boolean z, boolean z2, Runnable runnable) {
        this.f313a = wallpaperCropActivity;
        this.b = bVar;
        this.c = view;
        this.d = context;
        this.e = z;
        this.f = z2;
        this.g = runnable;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        if (isCancelled()) {
            return null;
        }
        this.b.a();
        return null;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        if (!isCancelled()) {
            this.c.setVisibility(4);
            if (this.b.b() == com.android.b.c.LOADED) {
                this.f313a.f114a.a(new com.android.b.RegionDecoder(this.d, this.b), (Runnable) null);
                this.f313a.f114a.a(this.e);
                if (this.f) {
                    this.f313a.f114a.d();
                }
            }
        }
        if (this.g != null) {
            this.g.run();
        }
    }
}
