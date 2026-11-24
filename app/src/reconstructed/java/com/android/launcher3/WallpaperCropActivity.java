package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.app.ActionBar;
import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperCropActivity extends Activity {
    private static Point b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected CropView f114a;
    private View c;

    public static int a(Context context, Uri uri) {
        return a((String) null, (Resources) null, 0, context, uri);
    }

    public static int a(Resources resources, int i) {
        return a((String) null, resources, i, (Context) null, (Uri) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0056 -> B:63:0x0022). Please report as a decompilation issue!!! */
    private static int a(String str, Resources resources, int i, Context context, Uri uri) throws Throwable {
        Object OpenRawResource = null;
        Object r2 = null;
        Object obj = null;
        Object r3 = null;
        int iB = 0;
        BufferedInputStream bufferedInputStream = null;
        com.android.a.b.c cVar = new com.android.a.b.c();
        try {
            try {
                try {
                    try {
                        if (str == null) {
                            try {
                                if (uri != null) {
                                    OpenRawResource = context.getContentResolver().openInputStream(uri);
                                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream((java.io.InputStream) OpenRawResource);
                                    try {
                                        cVar.a(bufferedInputStream2);
                                        bufferedInputStream = bufferedInputStream2;
                                        r2 = OpenRawResource;
                                    } catch (IOException e) {
                                        e = e;
                                        bufferedInputStream = bufferedInputStream2;
                                        r2 = OpenRawResource;
                                        String str2 = "Launcher3.CropActivity";
                                        Log.w("Launcher3.CropActivity", "Getting exif data failed", e);
                                        com.android.a.a.a.a(bufferedInputStream);
                                        com.android.a.a.a.a((Closeable) r2);
                                        r3 = str2;
                                        iB = 0;
                                        OpenRawResource = r3;
                                        return iB;
                                    } catch (NullPointerException e2) {
                                        e = e2;
                                        bufferedInputStream = bufferedInputStream2;
                                        Log.w("Launcher3.CropActivity", "Getting exif data failed", e);
                                        com.android.a.a.a.a(bufferedInputStream);
                                        com.android.a.a.a.a((Closeable) OpenRawResource);
                                        r3 = OpenRawResource;
                                        iB = 0;
                                        OpenRawResource = r3;
                                        return iB;
                                    } catch (Throwable th) {
                                        th = th;
                                        bufferedInputStream = bufferedInputStream2;
                                        com.android.a.a.a.a(bufferedInputStream);
                                        com.android.a.a.a.a((Closeable) OpenRawResource);
                                        throw th;
                                    }
                                } else {
                                    OpenRawResource = resources.openRawResource(i);
                                    BufferedInputStream bufferedInputStream3 = new BufferedInputStream((java.io.InputStream) OpenRawResource);
                                    try {
                                        cVar.a(bufferedInputStream3);
                                        bufferedInputStream = bufferedInputStream3;
                                        r2 = OpenRawResource;
                                    } catch (IOException e3) {
                                        e = e3;
                                        bufferedInputStream = bufferedInputStream3;
                                        r2 = OpenRawResource;
                                        String str3 = "Launcher3.CropActivity";
                                        Log.w("Launcher3.CropActivity", "Getting exif data failed", e);
                                        com.android.a.a.a.a(bufferedInputStream);
                                        com.android.a.a.a.a((Closeable) r2);
                                        r3 = str3;
                                        iB = 0;
                                        OpenRawResource = r3;
                                        return iB;
                                    } catch (NullPointerException e4) {
                                        e = e4;
                                        bufferedInputStream = bufferedInputStream3;
                                        Log.w("Launcher3.CropActivity", "Getting exif data failed", e);
                                        com.android.a.a.a.a(bufferedInputStream);
                                        com.android.a.a.a.a((Closeable) OpenRawResource);
                                        r3 = OpenRawResource;
                                        iB = 0;
                                        OpenRawResource = r3;
                                        return iB;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedInputStream = bufferedInputStream3;
                                        com.android.a.a.a.a(bufferedInputStream);
                                        com.android.a.a.a.a((Closeable) OpenRawResource);
                                        throw th;
                                    }
                                }
                            } catch (IOException e5) {
                                e = e5;
                                r2 = OpenRawResource;
                            } catch (NullPointerException e6) {
                                e = e6;
                            }
                            return iB;
                        }
                        cVar.a(str);
                        r2 = 0;
                        int i2 = com.android.a.b.c.b;
                        Integer numB = cVar.b(i2);
                        if (numB != null) {
                            iB = com.android.a.b.c.b(numB.shortValue());
                            com.android.a.a.a.a(bufferedInputStream);
                            com.android.a.a.a.a((Closeable) r2);
                            OpenRawResource = i2;
                        } else {
                            com.android.a.a.a.a(bufferedInputStream);
                            com.android.a.a.a.a((Closeable) r2);
                            r3 = i2;
                            iB = 0;
                            OpenRawResource = r3;
                        }
                    } catch (IOException e7) {
                        e = e7;
                        String str4 = "Launcher3.CropActivity";
                        Log.w("Launcher3.CropActivity", "Getting exif data failed", e);
                        com.android.a.a.a.a(bufferedInputStream);
                        com.android.a.a.a.a((Closeable) r2);
                        r3 = str4;
                    } catch (NullPointerException e8) {
                        e = e8;
                        OpenRawResource = r2;
                        Log.w("Launcher3.CropActivity", "Getting exif data failed", e);
                        com.android.a.a.a.a(bufferedInputStream);
                        com.android.a.a.a.a((Closeable) OpenRawResource);
                        r3 = OpenRawResource;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    OpenRawResource = obj;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e9) {
            e = e9;
            r2 = bufferedInputStream;
        } catch (NullPointerException e10) {
            e = e10;
            OpenRawResource = bufferedInputStream;
        } catch (Throwable th5) {
            th = th5;
            OpenRawResource = bufferedInputStream;
        }
        return iB;
    }

    protected static Bitmap.CompressFormat a(String str) {
        return str.equals("png") ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    protected static Point a(Resources resources, WindowManager windowManager) {
        int iMax;
        if (b == null) {
            Point point = new Point();
            Point point2 = new Point();
            windowManager.getDefaultDisplay().getCurrentSizeRange(point, point2);
            int iMax2 = Math.max(point2.x, point2.y);
            int iMax3 = Math.max(point.x, point.y);
            if (Build.VERSION.SDK_INT >= 17) {
                Point point3 = new Point();
                windowManager.getDefaultDisplay().getRealSize(point3);
                iMax2 = Math.max(point3.x, point3.y);
                iMax3 = Math.min(point3.x, point3.y);
            }
            if (resources.getConfiguration().smallestScreenWidthDp >= 720) {
                iMax = (int) ((((iMax2 / iMax3) * 0.30769226f) + 1.0076923f) * iMax2);
            } else {
                iMax = Math.max((int) (iMax3 * 2.0f), iMax2);
            }
            b = new Point(iMax, iMax2);
        }
        return b;
    }

    protected static RectF a(int i, int i2, int i3, int i4, boolean z) {
        RectF rectF = new RectF();
        if (i / i2 > i3 / i4) {
            rectF.top = 0.0f;
            rectF.bottom = i2;
            rectF.left = (i - ((i3 / i4) * i2)) / 2.0f;
            rectF.right = i - rectF.left;
            if (z) {
                rectF.right -= rectF.left;
                rectF.left = 0.0f;
            }
        } else {
            rectF.left = 0.0f;
            rectF.right = i;
            rectF.top = (i2 - ((i4 / i3) * i)) / 2.0f;
            rectF.bottom = i2 - rectF.top;
        }
        return rectF;
    }

    public static void a(Resources resources, SharedPreferences sharedPreferences, WindowManager windowManager, WallpaperManager wallpaperManager) {
        Point pointA = a(resources, windowManager);
        int i = sharedPreferences.getInt("wallpaper.width", pointA.x);
        int i2 = sharedPreferences.getInt("wallpaper.height", pointA.y);
        if (i == wallpaperManager.getDesiredMinimumWidth() && i2 == wallpaperManager.getDesiredMinimumHeight()) {
            return;
        }
        wallpaperManager.suggestDesiredDimensions(i, i2);
    }

    protected static String b(String str) {
        if (str == null) {
            str = "jpg";
        }
        String lowerCase = str.toLowerCase();
        return (lowerCase.equals("png") || lowerCase.equals("gif")) ? "png" : "jpg";
    }

    public static String c() {
        return WallpaperCropActivity.class.getName();
    }

    protected final void a(int i, int i2) {
        SharedPreferences sharedPreferences = getSharedPreferences(WallpaperCropActivity.class.getName(), 4);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (i == 0 || i2 == 0) {
            editorEdit.remove("wallpaper.width");
            editorEdit.remove("wallpaper.height");
        } else {
            editorEdit.putInt("wallpaper.width", i);
            editorEdit.putInt("wallpaper.height", i2);
        }
        editorEdit.commit();
        a(getResources(), sharedPreferences, getWindowManager(), WallpaperManager.getInstance(this));
    }

    protected final void a(Resources resources, int i, boolean z) {
        int iA = a(resources, i);
        Point pointC = this.f114a.c();
        Point pointA = a(getResources(), getWindowManager());
        new eQ(this, resources, i, a(pointC.x, pointC.y, pointA.x, pointA.y, false), iA, pointA.x, pointA.y, true, false, new eO(this, true)).execute(new Void[0]);
    }

    protected final void a(Uri uri, eR eRVar, boolean z) {
        float fMin;
        boolean z2 = getResources().getBoolean(R.bool.center_crop);
        boolean z3 = this.f114a.getLayoutDirection() == 0;
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        boolean z4 = point.x < point.y;
        Point pointA = a(getResources(), getWindowManager());
        RectF rectFB = this.f114a.b();
        int iA = this.f114a.a();
        float width = this.f114a.getWidth() / rectFB.width();
        Point pointC = this.f114a.c();
        Matrix matrix = new Matrix();
        matrix.setRotate(iA);
        float[] fArr = {pointC.x, pointC.y};
        matrix.mapPoints(fArr);
        fArr[0] = Math.abs(fArr[0]);
        fArr[1] = Math.abs(fArr[1]);
        if (z2) {
            fMin = 2.0f * Math.min(fArr[0] - rectFB.right, rectFB.left);
        } else {
            fMin = z3 ? fArr[0] - rectFB.right : rectFB.left;
        }
        float fMin2 = Math.min(fMin, (pointA.x / width) - rectFB.width());
        if (z2) {
            rectFB.left -= fMin2 / 2.0f;
            rectFB.right += fMin2 / 2.0f;
        } else if (z3) {
            rectFB.right += fMin2;
        } else {
            rectFB.left -= fMin2;
        }
        if (z4) {
            rectFB.bottom = rectFB.top + (pointA.y / width);
        } else {
            float fMin3 = Math.min(Math.min(fArr[1] - rectFB.bottom, rectFB.top), ((pointA.y / width) - rectFB.height()) / 2.0f);
            rectFB.top -= fMin3;
            rectFB.bottom = fMin3 + rectFB.bottom;
        }
        int iRound = Math.round(rectFB.width() * width);
        int iRound2 = Math.round(rectFB.height() * width);
        eQ eQVar = new eQ((Context) this, uri, rectFB, iA, iRound, iRound2, true, false, (Runnable) new eP(this, iRound, iRound2, true));
        if (eRVar != null) {
            eQVar.a(eRVar);
        }
        eQVar.execute(new Void[0]);
    }

    public final void a(com.android.b.b bVar, boolean z, boolean z2, Runnable runnable) {
        View viewFindViewById = findViewById(R.id.loading);
        eL eLVar = new eL(this, bVar, viewFindViewById, this, z, z2, runnable);
        viewFindViewById.postDelayed(new eM(this, eLVar, viewFindViewById), 1000L);
        eLVar.execute(new Void[0]);
    }

    protected final void a(String str, boolean z) {
        eQ eQVar = new eQ((Context) this, str, (RectF) null, a(str, (Resources) null, 0, (Context) null, (Uri) null), 0, 0, true, false, (Runnable) null);
        eQVar.a(new eN(this, eQVar.a(), true));
        eQVar.a(true);
        eQVar.execute(new Void[0]);
    }

    public boolean a() {
        return getResources().getBoolean(R.bool.allow_rotation);
    }

    protected void b() {
        setContentView(R.layout.wallpaper_cropper);
        this.f114a = (CropView) findViewById(R.id.cropView);
        Uri data = getIntent().getData();
        if (data == null) {
            Log.e("Launcher3.CropActivity", "No URI passed in intent, exiting WallpaperCropActivity");
            finish();
            return;
        }
        ActionBar actionBar = getActionBar();
        actionBar.setCustomView(R.layout.actionbar_set_wallpaper);
        actionBar.getCustomView().setOnClickListener(new eJ(this, data));
        this.c = findViewById(R.id.set_wallpaper_button);
        com.android.b.f fVar = new com.android.b.f(this, data, 1024);
        this.c.setVisibility(4);
        a((com.android.b.b) fVar, true, false, new eK(this, fVar));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b();
        if (a()) {
            return;
        }
        setRequestedOrientation(1);
    }
}
