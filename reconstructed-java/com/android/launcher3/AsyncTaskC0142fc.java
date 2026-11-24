package com.android.launcher3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* JADX INFO: renamed from: com.android.launcher3.fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class AsyncTaskC0142fc extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f373a;
    private final /* synthetic */ Uri b;
    private final /* synthetic */ Point c;
    private final /* synthetic */ ImageView d;
    private final /* synthetic */ FrameLayout e;

    AsyncTaskC0142fc(eS eSVar, Context context, Uri uri, Point point, ImageView imageView, FrameLayout frameLayout) {
        this.f373a = context;
        this.b = uri;
        this.c = point;
        this.d = imageView;
        this.e = frameLayout;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return eS.b(this.c, this.f373a, this.b, null, null, 0, WallpaperCropActivity.a(this.f373a, this.b), false);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        if (bitmap == null) {
            Log.e("Launcher.WallpaperPickerActivity", "Error loading thumbnail for uri=" + this.b);
            return;
        }
        this.d.setImageBitmap(bitmap);
        this.d.getDrawable().setDither(true);
        this.e.setVisibility(0);
    }
}
