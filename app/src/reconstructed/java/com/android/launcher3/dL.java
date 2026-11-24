package com.android.launcher3;

import android.app.WallpaperInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class dL extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f266a;
    private int b = 0;
    private /* synthetic */ dK c;

    public dL(dK dKVar, Context context) {
        this.c = dKVar;
        this.f266a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(List... listArr) {
        PackageManager packageManager = this.f266a.getPackageManager();
        List<ResolveInfo> list = listArr[0];
        Collections.sort(list, new dM(this, packageManager));
        for (ResolveInfo resolveInfo : list) {
            try {
                WallpaperInfo wallpaperInfo = new WallpaperInfo(this.f266a, resolveInfo);
                Drawable drawableLoadThumbnail = wallpaperInfo.loadThumbnail(packageManager);
                new Intent("android.service.wallpaper.WallpaperService").setClassName(wallpaperInfo.getPackageName(), wallpaperInfo.getServiceName());
                publishProgress(new dN(drawableLoadThumbnail, wallpaperInfo));
            } catch (IOException e) {
                Log.w("LiveWallpaperListAdapter", "Skipping wallpaper " + resolveInfo.serviceInfo, e);
            } catch (XmlPullParserException e2) {
                Log.w("LiveWallpaperListAdapter", "Skipping wallpaper " + resolveInfo.serviceInfo, e2);
            }
        }
        publishProgress(null);
        return null;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onProgressUpdate(Object... objArr) {
        for (dN dNVar : (dN[]) objArr) {
            if (dNVar == null) {
                this.c.notifyDataSetChanged();
                return;
            }
            if (dNVar.f268a != null) {
                dNVar.f268a.setDither(true);
            }
            if (this.b < this.c.c.size()) {
                this.c.c.set(this.b, dNVar);
            } else {
                this.c.c.add(dNVar);
            }
            this.b++;
        }
    }
}
