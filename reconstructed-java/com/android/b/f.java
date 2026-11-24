package com.android.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class f extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f66a;
    private Uri b;

    public f(Context context, Uri uri, int i) {
        super(1024);
        this.f66a = context;
        this.b = uri;
    }

    private InputStream h() {
        return new BufferedInputStream(this.f66a.getContentResolver().openInputStream(this.b));
    }

    @Override // com.android.b.b
    public final Bitmap a(BitmapFactory.Options options) {
        try {
            InputStream inputStreamH = h();
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamH, null, options);
            com.android.a.a.a.a(inputStreamH);
            return bitmapDecodeStream;
        } catch (FileNotFoundException e) {
            Log.e("BitmapRegionTileSource", "Failed to load URI " + this.b, e);
            return null;
        }
    }

    @Override // com.android.b.b
    public final boolean a(com.android.a.b.c cVar) {
        boolean z = false;
        InputStream inputStreamH = null;
        try {
            try {
                try {
                    inputStreamH = h();
                    cVar.a(inputStreamH);
                    com.android.a.a.a.a(inputStreamH);
                    com.android.a.a.a.a(inputStreamH);
                    z = true;
                } catch (IOException e) {
                    Log.e("BitmapRegionTileSource", "Failed to load URI " + this.b, e);
                    com.android.a.a.a.a(inputStreamH);
                }
            } catch (FileNotFoundException e2) {
                Log.e("BitmapRegionTileSource", "Failed to load URI " + this.b, e2);
                com.android.a.a.a.a(inputStreamH);
            } catch (NullPointerException e3) {
                Log.e("BitmapRegionTileSource", "Failed to read EXIF for URI " + this.b, e3);
                com.android.a.a.a.a(inputStreamH);
            }
            return z;
        } catch (Throwable th) {
            com.android.a.a.a.a(inputStreamH);
            throw th;
        }
    }

    @Override // com.android.b.b
    public final h g() {
        try {
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
        } catch (FileNotFoundException e) {
            Log.e("BitmapRegionTileSource", "Failed to load URI " + this.b, e);
            return null;
        } catch (IOException e2) {
            Log.e("BitmapRegionTileSource", "Failure while reading URI " + this.b, e2);
            return null;
        }
    }
}
