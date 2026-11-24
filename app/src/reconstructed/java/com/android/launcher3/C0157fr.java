package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: renamed from: com.android.launcher3.fr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0157fr {
    private static HashSet u = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f384a;
    private int b;
    private String c;
    private Context d;
    private PackageManager e;
    private C0117ee f;
    private String n;
    private int p;
    private C0055bw q;
    private C0161fv r;
    private HashMap s;
    private ArrayList t;
    private B g = new B();
    private C0126en h = new C0126en();
    private F i = new F();
    private F j = new F();
    private C0131es k = new C0131es();
    private C0131es l = new C0131es();
    private C0126en m = new C0126en();
    private C o = new C();

    public C0157fr(Context context) {
        cB cBVarA = cB.a();
        C0017al c0017alA = cBVarA.i().a();
        this.d = context;
        this.e = this.d.getPackageManager();
        this.p = c0017alA.o;
        this.q = cBVarA.e();
        this.r = cBVarA.g();
        this.s = new HashMap();
        this.t = new ArrayList();
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.android.launcher3.prefs", 0);
        String string = sharedPreferences.getString("android.incremental.version", null);
        String str = Build.VERSION.INCREMENTAL;
        if (str.equals(string)) {
            return;
        }
        try {
            this.r.getWritableDatabase().delete("shortcut_and_widget_previews", null, null);
        } catch (SQLiteDiskIOException e) {
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("android.incremental.version", str);
        editorEdit.commit();
    }

    private Bitmap a(String str, Bitmap bitmap) {
        if (this.n == null) {
            this.n = "name = ? AND size = ?";
        }
        try {
            Cursor cursorQuery = this.r.getReadableDatabase().query("shortcut_and_widget_previews", new String[]{"preview_bitmap"}, this.n, new String[]{str, this.c}, null, null, null, null);
            if (cursorQuery.getCount() <= 0) {
                cursorQuery.close();
                return null;
            }
            cursorQuery.moveToFirst();
            byte[] blob = cursorQuery.getBlob(0);
            cursorQuery.close();
            BitmapFactory.Options options = (BitmapFactory.Options) this.o.b();
            options.inBitmap = bitmap;
            options.inSampleSize = 1;
            try {
                return BitmapFactory.decodeByteArray(blob, 0, blob.length, options);
            } catch (IllegalArgumentException e) {
                new AsyncTaskC0160fu(this.r, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return null;
            }
        } catch (SQLiteDiskIOException e2) {
            b();
            return null;
        }
    }

    public static void a(Drawable drawable, Bitmap bitmap, int i, int i2, int i3, int i4) {
        if (bitmap != null) {
            Canvas canvas = new Canvas(bitmap);
            canvas.scale(1.0f, 1.0f);
            Rect rectCopyBounds = drawable.copyBounds();
            drawable.setBounds(i, i2, i + i3, i2 + i4);
            drawable.draw(canvas);
            drawable.setBounds(rectCopyBounds);
            canvas.setBitmap(null);
        }
    }

    static /* synthetic */ void a(C0157fr c0157fr, Object obj, Bitmap bitmap) {
        String strB = b(obj);
        SQLiteDatabase writableDatabase = c0157fr.r.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", strB);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        contentValues.put("preview_bitmap", byteArrayOutputStream.toByteArray());
        contentValues.put("size", c0157fr.c);
        try {
            writableDatabase.insert("shortcut_and_widget_previews", null, contentValues);
        } catch (SQLiteDiskIOException e) {
            c0157fr.b();
        }
    }

    public static void a(C0161fv c0161fv, String str) {
        synchronized (u) {
            u.add(str);
        }
        new AsyncTaskC0159ft(c0161fv, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    private static String b(Object obj) {
        StringBuilder sb = new StringBuilder();
        if (obj instanceof AppWidgetProviderInfo) {
            sb.append("Widget:");
            sb.append(((AppWidgetProviderInfo) obj).provider.flattenToString());
            String string = sb.toString();
            sb.setLength(0);
            return string;
        }
        sb.append("Shortcut:");
        ResolveInfo resolveInfo = (ResolveInfo) obj;
        sb.append(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name).flattenToString());
        String string2 = sb.toString();
        sb.setLength(0);
        return string2;
    }

    private void b() {
        cB cBVarA = cB.a();
        cBVarA.c();
        this.r = cBVarA.g();
    }

    public final int a(int i) {
        return Math.min(this.f384a, this.f.a(i));
    }

    public final Bitmap a(ComponentName componentName, int i, int i2, int i3, int i4, int i5, int i6, Bitmap bitmap, int[] iArr) {
        Drawable drawable;
        int intrinsicHeight;
        int intrinsicWidth;
        Bitmap bitmap2;
        String packageName = componentName.getPackageName();
        if (i5 < 0) {
            i5 = Integer.MAX_VALUE;
        }
        if (i != 0) {
            Drawable drawable2 = this.e.getDrawable(packageName, i, null);
            if (drawable2 == null) {
                Log.w("WidgetPreviewLoader", "Can't load widget preview drawable 0x" + Integer.toHexString(i) + " for provider: " + componentName);
            }
            drawable = drawable2;
        } else {
            drawable = null;
        }
        boolean z = drawable != null;
        if (z) {
            intrinsicWidth = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
            bitmap2 = null;
        } else {
            if (i3 <= 0) {
                i3 = 1;
            }
            if (i4 <= 0) {
                i4 = 1;
            }
            BitmapDrawable bitmapDrawable = (BitmapDrawable) this.d.getResources().getDrawable(R.drawable.widget_tile);
            int intrinsicWidth2 = bitmapDrawable.getIntrinsicWidth();
            int intrinsicHeight2 = bitmapDrawable.getIntrinsicHeight();
            int i7 = intrinsicWidth2 * i3;
            int i8 = intrinsicHeight2 * i4;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i7, i8, Bitmap.Config.ARGB_8888);
            Canvas canvas = (Canvas) this.j.b();
            canvas.setBitmap(bitmapCreateBitmap);
            bitmapDrawable.setBounds(0, 0, i7, i8);
            bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
            bitmapDrawable.draw(canvas);
            canvas.setBitmap(null);
            float fMin = Math.min(Math.min(i7, i8) / ((((int) (this.p * 0.25f)) * 2) + this.p), 1.0f);
            try {
                int i9 = (int) ((intrinsicWidth2 - (this.p * fMin)) / 2.0f);
                int i10 = (int) ((intrinsicHeight2 - (this.p * fMin)) / 2.0f);
                Drawable drawableA = i2 > 0 ? this.q.a(packageName, i2) : null;
                if (drawableA != null) {
                    a(drawableA, bitmapCreateBitmap, i9, i10, (int) (this.p * fMin), (int) (this.p * fMin));
                    intrinsicHeight = i8;
                    intrinsicWidth = i7;
                    bitmap2 = bitmapCreateBitmap;
                } else {
                    intrinsicHeight = i8;
                    intrinsicWidth = i7;
                    bitmap2 = bitmapCreateBitmap;
                }
            } catch (Resources.NotFoundException e) {
            }
        }
        if (iArr != null) {
            iArr[0] = intrinsicWidth;
        }
        float f = intrinsicWidth > i5 ? i5 / intrinsicWidth : 1.0f;
        if (f != 1.0f) {
            intrinsicWidth = (int) (intrinsicWidth * f);
            intrinsicHeight = (int) (f * intrinsicHeight);
        }
        Bitmap bitmapCreateBitmap2 = bitmap == null ? Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888) : bitmap;
        int width = (bitmapCreateBitmap2.getWidth() - intrinsicWidth) / 2;
        if (z) {
            a(drawable, bitmapCreateBitmap2, width, 0, intrinsicWidth, intrinsicHeight);
        } else {
            Canvas canvas2 = (Canvas) this.j.b();
            Rect rect = (Rect) this.k.b();
            Rect rect2 = (Rect) this.l.b();
            canvas2.setBitmap(bitmapCreateBitmap2);
            rect.set(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
            rect2.set(width, 0, intrinsicWidth + width, intrinsicHeight);
            Paint paint = (Paint) this.m.b();
            if (paint == null) {
                paint = new Paint();
                paint.setFilterBitmap(true);
                this.m.a(paint);
            }
            canvas2.drawBitmap(bitmap2, rect, rect2, paint);
            canvas2.setBitmap(null);
        }
        return bitmapCreateBitmap2;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0080 A[EDGE_INSN: B:118:0x0080->B:43:0x0080 BREAK  A[LOOP:0: B:34:0x0060->B:59:0x00cc], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0078 A[Catch: all -> 0x00ce, TryCatch #4 {, blocks: (B:35:0x0062, B:37:0x0068, B:39:0x0070, B:44:0x0082, B:45:0x0097, B:41:0x0078, B:58:0x00bd), top: B:115:0x0062 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00bd A[Catch: all -> 0x00ce, TRY_ENTER, TRY_LEAVE, TryCatch #4 {, blocks: (B:35:0x0062, B:37:0x0068, B:39:0x0070, B:44:0x0082, B:45:0x0097, B:41:0x0078, B:58:0x00bd), top: B:115:0x0062 }] */
    public final Bitmap a(Object obj) {
        boolean z;
        Bitmap bitmapA;
        String strB = b(obj);
        String packageName = obj instanceof AppWidgetProviderInfo ? ((AppWidgetProviderInfo) obj).provider.getPackageName() : ((ResolveInfo) obj).activityInfo.packageName;
        synchronized (u) {
            z = !u.contains(packageName);
        }
        if (!z) {
            return null;
        }
        synchronized (this.s) {
            if (this.s.containsKey(strB) && ((WeakReference) this.s.get(strB)).get() != null) {
                return (Bitmap) ((WeakReference) this.s.get(strB)).get();
            }
            Bitmap bitmapCreateBitmap = null;
            synchronized (this.t) {
                while (true) {
                    if (bitmapCreateBitmap != null) {
                        if (bitmapCreateBitmap.isMutable() && bitmapCreateBitmap.getWidth() == this.f384a && bitmapCreateBitmap.getHeight() == this.b) {
                            break;
                        }
                        if (this.t.size() <= 0) {
                            break;
                        }
                        bitmapCreateBitmap = (Bitmap) ((SoftReference) this.t.remove(0)).get();
                    } else {
                        if (this.t.size() <= 0) {
                            break;
                            break;
                        }
                        bitmapCreateBitmap = (Bitmap) ((SoftReference) this.t.remove(0)).get();
                    }
                    throw th;
                }
                if (bitmapCreateBitmap != null) {
                    Canvas canvas = (Canvas) this.j.b();
                    canvas.setBitmap(bitmapCreateBitmap);
                    canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                    canvas.setBitmap(null);
                }
            }
            if (bitmapCreateBitmap == null) {
                bitmapCreateBitmap = Bitmap.createBitmap(this.f384a, this.b, Bitmap.Config.ARGB_8888);
            }
            Bitmap bitmapA2 = a(strB, bitmapCreateBitmap);
            if (bitmapA2 != null) {
                synchronized (this.s) {
                    this.s.put(strB, new WeakReference(bitmapA2));
                }
                return bitmapA2;
            }
            if (bitmapCreateBitmap != null && (bitmapCreateBitmap.getWidth() != this.f384a || bitmapCreateBitmap.getHeight() != this.b)) {
                throw new RuntimeException("Improperly sized bitmap passed as argument");
            }
            if (obj instanceof AppWidgetProviderInfo) {
                AppWidgetProviderInfo appWidgetProviderInfo = (AppWidgetProviderInfo) obj;
                int[] iArrA = Launcher.a(this.d, appWidgetProviderInfo);
                bitmapA = a(appWidgetProviderInfo.provider, appWidgetProviderInfo.previewImage, appWidgetProviderInfo.icon, iArrA[0], iArrA[1], a(iArrA[0]), Math.min(this.b, this.f.b(iArrA[1])), bitmapCreateBitmap, null);
            } else {
                ResolveInfo resolveInfo = (ResolveInfo) obj;
                int i = this.f384a;
                int i2 = this.b;
                Bitmap bitmapCreateBitmap2 = (Bitmap) this.g.b();
                Canvas canvas2 = (Canvas) this.i.b();
                if (bitmapCreateBitmap2 != null && bitmapCreateBitmap2.getWidth() == i && bitmapCreateBitmap2.getHeight() == i2) {
                    canvas2.setBitmap(bitmapCreateBitmap2);
                    canvas2.drawColor(0, PorterDuff.Mode.CLEAR);
                    canvas2.setBitmap(null);
                } else {
                    bitmapCreateBitmap2 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                    this.g.a(bitmapCreateBitmap2);
                }
                Drawable drawableA = this.q.a(resolveInfo);
                int dimensionPixelOffset = this.d.getResources().getDimensionPixelOffset(R.dimen.shortcut_preview_padding_top);
                int dimensionPixelOffset2 = this.d.getResources().getDimensionPixelOffset(R.dimen.shortcut_preview_padding_left);
                int dimensionPixelOffset3 = (i - dimensionPixelOffset2) - this.d.getResources().getDimensionPixelOffset(R.dimen.shortcut_preview_padding_right);
                a(drawableA, bitmapCreateBitmap2, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset3, dimensionPixelOffset3);
                if (bitmapCreateBitmap != null && (bitmapCreateBitmap.getWidth() != i || bitmapCreateBitmap.getHeight() != i2)) {
                    throw new RuntimeException("Improperly sized bitmap passed as argument");
                }
                Bitmap bitmapCreateBitmap3 = bitmapCreateBitmap == null ? Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888) : bitmapCreateBitmap;
                canvas2.setBitmap(bitmapCreateBitmap3);
                Paint paint = (Paint) this.h.b();
                if (paint == null) {
                    paint = new Paint();
                    ColorMatrix colorMatrix = new ColorMatrix();
                    colorMatrix.setSaturation(0.0f);
                    paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
                    paint.setAlpha(15);
                    this.h.a(paint);
                }
                canvas2.drawBitmap(bitmapCreateBitmap2, 0.0f, 0.0f, paint);
                canvas2.setBitmap(null);
                a(drawableA, bitmapCreateBitmap3, 0, 0, this.p, this.p);
                bitmapA = bitmapCreateBitmap3;
            }
            if (bitmapA != bitmapCreateBitmap) {
                throw new RuntimeException("generatePreview is not recycling the bitmap " + obj);
            }
            synchronized (this.s) {
                this.s.put(strB, new WeakReference(bitmapA));
            }
            new AsyncTaskC0158fs(this, obj, bitmapA).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return bitmapA;
        }
    }

    public final void a(int i, int i2, C0117ee c0117ee) {
        this.f384a = i;
        this.b = i2;
        this.c = String.valueOf(i) + "x" + i2;
        this.f = c0117ee;
    }

    public final void a(Object obj, Bitmap bitmap) {
        String strB = b(obj);
        synchronized (this.s) {
            if (this.s.containsKey(strB)) {
                Bitmap bitmap2 = (Bitmap) ((WeakReference) this.s.get(strB)).get();
                if (bitmap2 != bitmap) {
                    throw new RuntimeException("Bitmap passed in doesn't match up");
                }
                this.s.remove(strB);
                if (bitmap.isMutable()) {
                    synchronized (this.t) {
                        this.t.add(new SoftReference(bitmap2));
                    }
                }
            }
        }
    }
}
