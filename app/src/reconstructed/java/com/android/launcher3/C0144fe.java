package com.android.launcher3;

import android.app.WallpaperManager;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: renamed from: com.android.launcher3.fe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0144fe extends AbstractC0149fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Drawable f375a;

    public C0144fe(Drawable drawable) {
        this.f375a = drawable;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        CropView cropViewD = eSVar.d();
        cropViewD.a(new aE(eSVar, WallpaperManager.getInstance(eSVar).getBuiltInDrawable(cropViewD.getWidth(), cropViewD.getHeight(), false, 0.5f, 0.5f), 1024), (Runnable) null);
        cropViewD.a(1.0f);
        cropViewD.a(false);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean a() {
        return true;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void b(eS eSVar) {
        try {
            WallpaperManager.getInstance(eSVar).clear();
        } catch (IOException e) {
            Log.w("Setting wallpaper to default threw exception", e);
        }
        eSVar.finish();
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean b() {
        return true;
    }
}
