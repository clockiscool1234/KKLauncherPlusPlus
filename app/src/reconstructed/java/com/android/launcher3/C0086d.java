package com.android.launcher3;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.android.launcher3.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0086d extends bD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Intent f256a;
    Bitmap b;
    long c;
    ComponentName d;
    int e;

    C0086d() {
        this.e = 0;
        this.g = 1;
    }

    public C0086d(PackageManager packageManager, ResolveInfo resolveInfo, C0055bw c0055bw, HashMap map) {
        this.e = 0;
        String str = resolveInfo.activityInfo.applicationInfo.packageName;
        this.d = new ComponentName(str, resolveInfo.activityInfo.name);
        this.h = -1L;
        ComponentName componentName = this.d;
        this.f256a = new Intent("android.intent.action.MAIN");
        this.f256a.addCategory("android.intent.category.LAUNCHER");
        this.f256a.setComponent(componentName);
        this.f256a.setFlags(270532608);
        this.g = 0;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            this.e = a(packageInfo);
            this.c = packageInfo.firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("Launcher3.AppInfo", "PackageManager.getApplicationInfo failed for " + str);
        }
        c0055bw.a(this, resolveInfo, map);
    }

    public static int a(PackageInfo packageInfo) {
        int i = packageInfo.applicationInfo.flags;
        if ((i & 1) == 0) {
            return (i & 128) != 0 ? 3 : 1;
        }
        return 0;
    }

    public static void a(String str, String str2, ArrayList arrayList) {
        Log.d(str, String.valueOf(str2) + " size=" + arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0086d c0086d = (C0086d) it.next();
            Log.d(str, "   title=\"" + ((Object) c0086d.q) + "\" iconBitmap=" + c0086d.b + " firstInstallTime=" + c0086d.c);
        }
    }

    @Override // com.android.launcher3.bD
    protected final Intent a() {
        return this.f256a;
    }

    public final C0137ey b() {
        return new C0137ey(this);
    }

    @Override // com.android.launcher3.bD
    public final String toString() {
        return "ApplicationInfo(title=" + this.q.toString() + " id=" + this.f + " type=" + this.g + " container=" + this.h + " screen=" + this.i + " cellX=" + this.j + " cellY=" + this.k + " spanX=" + this.l + " spanY=" + this.m + " dropPos=" + this.r + ")";
    }
}
