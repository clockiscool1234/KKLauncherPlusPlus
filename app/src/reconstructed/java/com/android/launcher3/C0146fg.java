package com.android.launcher3;

import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: com.android.launcher3.fg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0146fg extends AbstractC0149fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Resources f376a;
    private int c;
    private Drawable d;

    public C0146fg(Resources resources, int i, Drawable drawable) {
        this.f376a = resources;
        this.c = i;
        this.d = drawable;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        com.android.b.e eVar = new com.android.b.e(this.f376a, this.c, 1024);
        eVar.a();
        com.android.b.RegionDecoder regionDecoder = new com.android.b.RegionDecoder(eSVar, eVar);
        CropView cropViewD = eSVar.d();
        cropViewD.a(regionDecoder, (Runnable) null);
        Point pointA = WallpaperCropActivity.a(eSVar.getResources(), eSVar.getWindowManager());
        cropViewD.a(pointA.x / WallpaperCropActivity.a(regionDecoder.b(), regionDecoder.c(), pointA.x, pointA.y, false).width());
        cropViewD.a(false);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean a() {
        return true;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void b(eS eSVar) {
        eSVar.a(this.f376a, this.c, true);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean b() {
        return true;
    }
}
