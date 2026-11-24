package com.android.launcher3;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class eI {
    private static final Canvas j;
    private static boolean k;
    private static int c = -1;
    private static int d = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f310a = -1;
    public static int b = -1;
    private static final Paint e = new Paint();
    private static final Paint f = new Paint();
    private static final Paint g = new Paint();
    private static final Paint h = new Paint();
    private static final Rect i = new Rect();

    static {
        Canvas canvas = new Canvas();
        j = canvas;
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        int[] iArr = {-65536, -16711936, -16776961};
        k = Log.isLoggable("launcher_force_rotate", 2);
    }

    public static float a(View view, View view2, int[] iArr) {
        float scaleX;
        ArrayList arrayList = new ArrayList();
        float[] fArr = {iArr[0], iArr[1]};
        while (view != view2) {
            arrayList.add(view);
            view = (View) view.getParent();
        }
        arrayList.add(view2);
        float f2 = 1.0f;
        Matrix matrix = new Matrix();
        int size = arrayList.size() - 1;
        while (size >= 0) {
            View view3 = (View) arrayList.get(size);
            View view4 = size > 0 ? (View) arrayList.get(size - 1) : null;
            fArr[0] = fArr[0] + view3.getScrollX();
            fArr[1] = view3.getScrollY() + fArr[1];
            if (view4 != null) {
                fArr[0] = fArr[0] - view4.getLeft();
                fArr[1] = fArr[1] - view4.getTop();
                view4.getMatrix().invert(matrix);
                matrix.mapPoints(fArr);
                scaleX = view4.getScaleX() * f2;
            } else {
                scaleX = f2;
            }
            size--;
            f2 = scaleX;
        }
        iArr[0] = Math.round(fArr[0]);
        iArr[1] = Math.round(fArr[1]);
        return f2;
    }

    public static float a(View view, View view2, int[] iArr, boolean z) {
        ArrayList arrayList = new ArrayList();
        float[] fArr = {iArr[0], iArr[1]};
        for (View view3 = view; view3 != view2 && view3 != null; view3 = (View) view3.getParent()) {
            arrayList.add(view3);
        }
        arrayList.add(view2);
        int size = arrayList.size();
        float scaleX = 1.0f;
        for (int i2 = 0; i2 < size; i2++) {
            View view4 = (View) arrayList.get(i2);
            if (view4 != view || z) {
                fArr[0] = fArr[0] - view4.getScrollX();
                fArr[1] = fArr[1] - view4.getScrollY();
            }
            view4.getMatrix().mapPoints(fArr);
            fArr[0] = fArr[0] + view4.getLeft();
            fArr[1] = fArr[1] + view4.getTop();
            scaleX *= view4.getScaleX();
        }
        iArr[0] = Math.round(fArr[0]);
        iArr[1] = Math.round(fArr[1]);
        return scaleX;
    }

    static Bitmap a(Bitmap bitmap, Context context) {
        int i2 = f310a;
        int i3 = b;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= i2 || height <= i3) {
            return (width == i2 && height == i3) ? bitmap : a(new BitmapDrawable(context.getResources(), bitmap), context);
        }
        return Bitmap.createBitmap(bitmap, (width - i2) / 2, (height - i3) / 2, i2, i3);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008d  */
    public static Bitmap a(Drawable drawable, Context context) {
        int i2;
        int i3;
        Bitmap bitmapCreateBitmap;
        synchronized (j) {
            if (c == -1) {
                b(context);
            }
            int i4 = c;
            int i5 = d;
            if (drawable instanceof PaintDrawable) {
                PaintDrawable paintDrawable = (PaintDrawable) drawable;
                paintDrawable.setIntrinsicWidth(i4);
                paintDrawable.setIntrinsicHeight(i5);
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap().getDensity() == 0) {
                    bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
                }
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                i2 = i5;
                i3 = i4;
            } else {
                float f2 = intrinsicWidth / intrinsicHeight;
                if (intrinsicWidth > intrinsicHeight) {
                    i2 = (int) (i4 / f2);
                    i3 = i4;
                } else if (intrinsicHeight > intrinsicWidth) {
                    i3 = (int) (i5 * f2);
                    i2 = i5;
                } else {
                    i2 = i5;
                    i3 = i4;
                }
            }
            int i6 = f310a;
            int i7 = b;
            bitmapCreateBitmap = Bitmap.createBitmap(i6, i7, Bitmap.Config.ARGB_8888);
            Canvas canvas = j;
            canvas.setBitmap(bitmapCreateBitmap);
            int i8 = (i6 - i3) / 2;
            int i9 = (i7 - i2) / 2;
            i.set(drawable.getBounds());
            drawable.setBounds(i8, i9, i3 + i8, i2 + i9);
            drawable.draw(canvas);
            drawable.setBounds(i);
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmap;
    }

    public static Drawable a(Bitmap bitmap) {
        aJ aJVar = new aJ(bitmap);
        aJVar.setFilterBitmap(true);
        a(aJVar);
        return aJVar;
    }

    public static void a(int i2) {
        d = i2;
        c = i2;
        b = i2;
        f310a = i2;
    }

    public static void a(Activity activity, Intent intent, int i2) {
        try {
            activity.startActivityForResult(intent, i2);
        } catch (ActivityNotFoundException e2) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
        } catch (SecurityException e3) {
            Toast.makeText(activity, R.string.activity_not_found, 0).show();
            Log.e("Launcher.Utilities", "Launcher does not have the permission to launch " + intent + ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity.", e3);
        }
    }

    public static void a(Rect rect, float f2) {
        int iCenterX = rect.centerX();
        int iCenterY = rect.centerY();
        rect.offset(-iCenterX, -iCenterY);
        if (f2 != 1.0f) {
            rect.left = (int) ((rect.left * f2) + 0.5f);
            rect.top = (int) ((rect.top * f2) + 0.5f);
            rect.right = (int) ((rect.right * f2) + 0.5f);
            rect.bottom = (int) ((rect.bottom * f2) + 0.5f);
        }
        rect.offset(iCenterX, iCenterY);
    }

    static void a(Drawable drawable) {
        drawable.setBounds(0, 0, f310a, b);
    }

    public static boolean a(Context context) {
        return k || context.getResources().getBoolean(R.bool.allow_rotation);
    }

    static Bitmap b(Bitmap bitmap, Context context) {
        synchronized (j) {
            if (c == -1) {
                b(context);
            }
            if (bitmap.getWidth() != c || bitmap.getHeight() != d) {
                bitmap = a(new BitmapDrawable(context.getResources(), bitmap), context);
            }
        }
        return bitmap;
    }

    private static void b(Context context) {
        Resources resources = context.getResources();
        float f2 = resources.getDisplayMetrics().density;
        int dimension = (int) resources.getDimension(R.dimen.app_icon_size);
        d = dimension;
        c = dimension;
        b = dimension;
        f310a = dimension;
        e.setMaskFilter(new BlurMaskFilter(f2 * 5.0f, BlurMaskFilter.Blur.NORMAL));
        f.setColor(-15616);
        g.setColor(-29184);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.2f);
        h.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        h.setAlpha(136);
    }
}
