package com.android.launcher3;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class eQ extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f318a;
    private Context b;
    private String c;
    private byte[] d;
    private int e;
    private RectF f;
    private int g;
    private int h;
    private int i;
    private String j;
    private boolean k;
    private boolean l;
    private Bitmap m;
    private Runnable n;
    private Resources o;
    private eR p;
    private boolean q;

    public eQ(Context context, Resources resources, int i, RectF rectF, int i2, int i3, int i4, boolean z, boolean z2, Runnable runnable) {
        this.f318a = null;
        this.e = 0;
        this.f = null;
        this.j = "jpg";
        this.b = context;
        this.e = i;
        this.o = resources;
        a(rectF, i2, i3, i4, z, z2, runnable);
    }

    public eQ(Context context, Uri uri, RectF rectF, int i, int i2, int i3, boolean z, boolean z2, Runnable runnable) {
        this.f318a = null;
        this.e = 0;
        this.f = null;
        this.j = "jpg";
        this.b = context;
        this.f318a = uri;
        a(rectF, i, i2, i3, z, z2, runnable);
    }

    public eQ(Context context, String str, RectF rectF, int i, int i2, int i3, boolean z, boolean z2, Runnable runnable) {
        this.f318a = null;
        this.e = 0;
        this.f = null;
        this.j = "jpg";
        this.b = context;
        this.c = str;
        a(null, i, 0, 0, true, false, null);
    }

    public eQ(byte[] bArr, RectF rectF, int i, int i2, int i3, boolean z, boolean z2, Runnable runnable) {
        this.f318a = null;
        this.e = 0;
        this.f = null;
        this.j = "jpg";
        this.d = bArr;
        a(null, i, i2, i3, false, true, null);
    }

    private void a(RectF rectF, int i, int i2, int i3, boolean z, boolean z2, Runnable runnable) {
        this.f = rectF;
        this.i = i;
        this.g = i2;
        this.h = i3;
        this.k = z;
        this.l = z2;
        this.n = runnable;
    }

    private InputStream d() {
        InputStream bufferedInputStream;
        if (this.f318a == null && this.e == 0 && this.c == null && this.d == null) {
            Log.w("Launcher3.CropActivity", "cannot read original file, no input URI, resource ID, or image byte array given");
        } else {
            try {
                if (this.f318a != null) {
                    bufferedInputStream = new BufferedInputStream(this.b.getContentResolver().openInputStream(this.f318a));
                } else if (this.c != null) {
                    bufferedInputStream = this.b.openFileInput(this.c);
                } else {
                    bufferedInputStream = this.d != null ? new BufferedInputStream(new ByteArrayInputStream(this.d)) : new BufferedInputStream(this.o.openRawResource(this.e));
                }
                return bufferedInputStream;
            } catch (FileNotFoundException e) {
                Log.w("Launcher3.CropActivity", "cannot read file: " + this.f318a.toString(), e);
            }
        }
        return null;
    }

    public final Point a() {
        InputStream inputStreamD = d();
        if (inputStreamD == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStreamD, null, options);
        com.android.a.a.a.a(inputStreamD);
        if (options.outWidth == 0 || options.outHeight == 0) {
            return null;
        }
        return new Point(options.outWidth, options.outHeight);
    }

    public final void a(RectF rectF) {
        this.f = rectF;
    }

    public final void a(eR eRVar) {
        this.p = eRVar;
    }

    public final void a(Runnable runnable) {
        this.n = runnable;
    }

    public final void a(boolean z) {
        this.q = true;
    }

    public final Bitmap b() {
        return this.m;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0387  */
    public final boolean c() {
        boolean z;
        boolean z2 = false;
        WallpaperManager wallpaperManager = this.k ? WallpaperManager.getInstance(this.b.getApplicationContext()) : null;
        if (this.k && this.q) {
            try {
                InputStream inputStreamD = d();
                if (inputStreamD != null) {
                    wallpaperManager.setStream(inputStreamD);
                    com.android.a.a.a.a(inputStreamD);
                }
            } catch (IOException e) {
                Log.w("Launcher3.CropActivity", "cannot write stream to wallpaper", e);
                z2 = true;
            }
            return !z2;
        }
        Rect rect = new Rect();
        Matrix matrix = new Matrix();
        Matrix matrix2 = new Matrix();
        Point pointA = a();
        if (this.i > 0) {
            matrix.setRotate(this.i);
            matrix2.setRotate(-this.i);
            this.f.roundOut(rect);
            this.f = new RectF(rect);
            if (pointA == null) {
                Log.w("Launcher3.CropActivity", "cannot get bounds for image");
                return false;
            }
            float[] fArr = {pointA.x, pointA.y};
            matrix.mapPoints(fArr);
            fArr[0] = Math.abs(fArr[0]);
            fArr[1] = Math.abs(fArr[1]);
            this.f.offset((-fArr[0]) / 2.0f, (-fArr[1]) / 2.0f);
            matrix2.mapRect(this.f);
            this.f.offset(pointA.x / 2, pointA.y / 2);
        }
        this.f.roundOut(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            Log.w("Launcher3.CropActivity", "crop has bad values for full size image");
            return false;
        }
        int iMax = Math.max(1, Math.min(rect.width() / this.g, rect.height() / this.h));
        BitmapRegionDecoder bitmapRegionDecoderNewInstance = null;
        try {
            try {
                InputStream inputStreamD2 = d();
                if (inputStreamD2 == null) {
                    Log.w("Launcher3.CropActivity", "cannot get input stream for uri=" + this.f318a.toString());
                    com.android.a.a.a.a(inputStreamD2);
                    return false;
                }
                bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamD2, false);
                com.android.a.a.a.a(inputStreamD2);
                com.android.a.a.a.a(inputStreamD2);
                Bitmap bitmapCreateBitmap = null;
                if (bitmapRegionDecoderNewInstance != null) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    if (iMax > 1) {
                        options.inSampleSize = iMax;
                    }
                    bitmapCreateBitmap = bitmapRegionDecoderNewInstance.decodeRegion(rect, options);
                    bitmapRegionDecoderNewInstance.recycle();
                }
                if (bitmapCreateBitmap == null) {
                    InputStream inputStreamD3 = d();
                    Bitmap bitmapDecodeStream = null;
                    if (inputStreamD3 != null) {
                        BitmapFactory.Options options2 = new BitmapFactory.Options();
                        if (iMax > 1) {
                            options2.inSampleSize = iMax;
                        }
                        bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamD3, null, options2);
                        com.android.a.a.a.a(inputStreamD3);
                    }
                    if (bitmapDecodeStream != null) {
                        int width = pointA.x / bitmapDecodeStream.getWidth();
                        this.f.left /= width;
                        this.f.top /= width;
                        this.f.bottom /= width;
                        this.f.right /= width;
                        this.f.roundOut(rect);
                        if (rect.width() > bitmapDecodeStream.getWidth()) {
                            rect.right = rect.left + bitmapDecodeStream.getWidth();
                        }
                        if (rect.right > bitmapDecodeStream.getWidth()) {
                            int iMax2 = rect.left - Math.max(0, rect.right - rect.width());
                            rect.left -= iMax2;
                            rect.right -= iMax2;
                        }
                        if (rect.height() > bitmapDecodeStream.getHeight()) {
                            rect.bottom = rect.top + bitmapDecodeStream.getHeight();
                        }
                        if (rect.bottom > bitmapDecodeStream.getHeight()) {
                            int iMax3 = rect.top - Math.max(0, rect.bottom - rect.height());
                            rect.top -= iMax3;
                            rect.bottom -= iMax3;
                        }
                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeStream, rect.left, rect.top, rect.width(), rect.height());
                    }
                }
                if (bitmapCreateBitmap == null) {
                    Log.w("Launcher3.CropActivity", "cannot decode file: " + this.f318a.toString());
                    return false;
                }
                if ((this.g > 0 && this.h > 0) || this.i > 0) {
                    float[] fArr2 = {bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight()};
                    matrix.mapPoints(fArr2);
                    fArr2[0] = Math.abs(fArr2[0]);
                    fArr2[1] = Math.abs(fArr2[1]);
                    if (this.g <= 0 || this.h <= 0) {
                        this.g = Math.round(fArr2[0]);
                        this.h = Math.round(fArr2[1]);
                    }
                    RectF rectF = new RectF(0.0f, 0.0f, fArr2[0], fArr2[1]);
                    RectF rectF2 = new RectF(0.0f, 0.0f, this.g, this.h);
                    Matrix matrix3 = new Matrix();
                    if (this.i == 0) {
                        matrix3.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                    } else {
                        Matrix matrix4 = new Matrix();
                        matrix4.setTranslate((-bitmapCreateBitmap.getWidth()) / 2.0f, (-bitmapCreateBitmap.getHeight()) / 2.0f);
                        Matrix matrix5 = new Matrix();
                        matrix5.setRotate(this.i);
                        Matrix matrix6 = new Matrix();
                        matrix6.setTranslate(fArr2[0] / 2.0f, fArr2[1] / 2.0f);
                        Matrix matrix7 = new Matrix();
                        matrix7.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                        Matrix matrix8 = new Matrix();
                        matrix8.setConcat(matrix5, matrix4);
                        Matrix matrix9 = new Matrix();
                        matrix9.setConcat(matrix7, matrix6);
                        matrix3.setConcat(matrix9, matrix8);
                    }
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap((int) rectF2.width(), (int) rectF2.height(), Bitmap.Config.ARGB_8888);
                    if (bitmapCreateBitmap2 != null) {
                        Canvas canvas = new Canvas(bitmapCreateBitmap2);
                        Paint paint = new Paint();
                        paint.setFilterBitmap(true);
                        canvas.drawBitmap(bitmapCreateBitmap, matrix3, paint);
                        bitmapCreateBitmap = bitmapCreateBitmap2;
                    }
                }
                if (this.l) {
                    this.m = bitmapCreateBitmap;
                }
                Bitmap.CompressFormat compressFormatA = WallpaperCropActivity.a(WallpaperCropActivity.b(this.j));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
                if (!bitmapCreateBitmap.compress(compressFormatA, 90, byteArrayOutputStream)) {
                    Log.w("Launcher3.CropActivity", "cannot compress bitmap");
                    z = true;
                } else if (!this.k || wallpaperManager == null) {
                    z = false;
                } else {
                    try {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        wallpaperManager.setStream(new ByteArrayInputStream(byteArray));
                        if (this.p != null) {
                            this.p.a(byteArray);
                            z = false;
                        } else {
                            z = false;
                        }
                    } catch (IOException e2) {
                        Log.w("Launcher3.CropActivity", "cannot write stream to wallpaper", e2);
                        z = true;
                    }
                }
                return !z;
            } catch (IOException e3) {
                Log.w("Launcher3.CropActivity", "cannot open region decoder for file: " + this.f318a.toString(), e3);
                com.android.a.a.a.a((Closeable) null);
            }
        } catch (Throwable th) {
            com.android.a.a.a.a((Closeable) null);
            throw th;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return Boolean.valueOf(c());
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        if (this.n != null) {
            this.n.run();
        }
    }
}
