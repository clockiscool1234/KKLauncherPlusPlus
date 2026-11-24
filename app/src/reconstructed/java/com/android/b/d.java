package com.android.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f64a;

    public d(String str, int i) {
        super(1024);
        this.f64a = str;
    }

    @Override // com.android.b.b
    public final Bitmap a(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.f64a, options);
    }

    @Override // com.android.b.b
    public final boolean a(com.android.a.b.c cVar) {
        try {
            cVar.a(this.f64a);
            return true;
        } catch (IOException e) {
            Log.w("BitmapRegionTileSource", "getting decoder failed", e);
            return false;
        } catch (NullPointerException e2) {
            Log.w("BitmapRegionTileSource", "reading exif failed", e2);
            return false;
        }
    }

    @Override // com.android.b.b
    public final h g() {
        i iVarA = i.a(this.f64a, true);
        return iVarA == null ? g.a(this.f64a) : iVarA;
    }
}
