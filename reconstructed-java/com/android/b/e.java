package com.android.b;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class e extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Resources f65a;
    private int b;

    public e(Resources resources, int i, int i2) {
        super(1024);
        this.f65a = resources;
        this.b = i;
    }

    private InputStream h() {
        return new BufferedInputStream(this.f65a.openRawResource(this.b));
    }

    @Override // com.android.b.b
    public final Bitmap a(BitmapFactory.Options options) {
        return BitmapFactory.decodeResource(this.f65a, this.b, options);
    }

    @Override // com.android.b.b
    public final boolean a(com.android.a.b.c cVar) {
        try {
            InputStream inputStreamH = h();
            cVar.a(inputStreamH);
            com.android.a.a.a.a(inputStreamH);
            return true;
        } catch (IOException e) {
            Log.e("BitmapRegionTileSource", "Error reading resource", e);
            return false;
        }
    }

    @Override // com.android.b.b
    public final h g() {
        InputStream inputStreamH = h();
        i iVarA = i.a(inputStreamH, false);
        com.android.a.a.a.a(inputStreamH);
        if (iVarA != null) {
            return iVarA;
        }
        InputStream inputStreamH2 = h();
        g gVarA = g.a(inputStreamH2);
        com.android.a.a.a.a(inputStreamH2);
        return gVarA;
    }
}
