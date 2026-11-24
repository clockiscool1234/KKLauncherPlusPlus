package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.widget.ImageView;

/* JADX INFO: renamed from: com.android.launcher3.bt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0052bt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Canvas f205a = new Canvas();
    private boolean b;
    private int c;
    private int d;

    public C0052bt(Context context) {
        Resources resources = context.getResources();
        this.c = resources.getColor(android.R.color.holo_blue_light);
        this.d = resources.getColor(android.R.color.holo_green_light);
    }

    private static Bitmap a(ImageView imageView, Canvas canvas, int i) {
        Drawable drawable = imageView.getDrawable();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        canvas.save();
        drawable.draw(canvas);
        canvas.restore();
        canvas.drawColor(i, PorterDuff.Mode.SRC_IN);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    final void a(ImageView imageView) {
        if (this.b || imageView == null) {
            return;
        }
        this.b = true;
        Canvas canvas = this.f205a;
        Drawable drawable = imageView.getDrawable();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        canvas.save();
        drawable.draw(canvas);
        canvas.restore();
        canvas.setBitmap(null);
        Bitmap bitmapA = a(imageView, this.f205a, this.c);
        Bitmap bitmapA2 = a(imageView, this.f205a, this.d);
        new aJ(bitmapCreateBitmap);
        aJ aJVar = new aJ(bitmapA);
        aJ aJVar2 = new aJ(bitmapA2);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, aJVar);
        stateListDrawable.addState(new int[]{android.R.attr.state_focused}, aJVar);
        stateListDrawable.addState(new int[]{R.attr.stateHotwordOn}, aJVar2);
        stateListDrawable.addState(new int[0], imageView.getDrawable());
        imageView.setImageDrawable(stateListDrawable);
    }

    final void b(ImageView imageView) {
        this.b = false;
        if (imageView != null) {
            imageView.invalidate();
        }
    }
}
