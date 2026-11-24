package com.android.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BitmapRegionDecoder f68a;

    private i(BitmapRegionDecoder bitmapRegionDecoder) {
        this.f68a = bitmapRegionDecoder;
    }

    public static i a(InputStream inputStream, boolean z) {
        try {
            BitmapRegionDecoder bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStream, false);
            if (bitmapRegionDecoderNewInstance != null) {
                return new i(bitmapRegionDecoderNewInstance);
            }
            return null;
        } catch (IOException e) {
            Log.w("BitmapRegionTileSource", "getting decoder failed", e);
            return null;
        }
    }

    public static i a(String str, boolean z) {
        try {
            BitmapRegionDecoder bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(str, true);
            if (bitmapRegionDecoderNewInstance != null) {
                return new i(bitmapRegionDecoderNewInstance);
            }
            return null;
        } catch (IOException e) {
            Log.w("BitmapRegionTileSource", "getting decoder failed for path " + str, e);
            return null;
        }
    }

    @Override // com.android.b.h
    public final int a() {
        return this.f68a.getWidth();
    }

    @Override // com.android.b.h
    public final Bitmap a(Rect rect, BitmapFactory.Options options) {
        return this.f68a.decodeRegion(rect, options);
    }

    @Override // com.android.b.h
    public final int b() {
        return this.f68a.getHeight();
    }
}
