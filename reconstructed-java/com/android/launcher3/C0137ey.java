package com.android.launcher3;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.util.Log;

/* JADX INFO: renamed from: com.android.launcher3.ey, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0137ey extends bD {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Intent f343a;
    boolean b;
    boolean c;
    Intent.ShortcutIconResource d;
    int e;
    private Bitmap s;

    C0137ey() {
        this.e = 0;
        this.g = 1;
    }

    public C0137ey(C0086d c0086d) {
        super(c0086d);
        this.e = 0;
        this.q = c0086d.q.toString();
        this.f343a = new Intent(c0086d.f256a);
        this.b = false;
        this.e = c0086d.e;
        long j = c0086d.c;
    }

    public static PackageInfo a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("ShortcutInfo", "PackageManager.getPackageInfo failed for " + str);
            return null;
        }
    }

    @Override // com.android.launcher3.bD
    protected final Intent a() {
        return this.f343a;
    }

    public final Bitmap a(C0055bw c0055bw) {
        if (this.s == null) {
            b(c0055bw);
        }
        return this.s;
    }

    @Override // com.android.launcher3.bD
    final void a(ContentValues contentValues) {
        super.a(contentValues);
        contentValues.put("title", this.q != null ? this.q.toString() : null);
        contentValues.put("intent", this.f343a != null ? this.f343a.toUri(0) : null);
        if (this.b) {
            contentValues.put("iconType", (Integer) 1);
            a(contentValues, this.s);
            return;
        }
        if (!this.c) {
            a(contentValues, this.s);
        }
        contentValues.put("iconType", (Integer) 0);
        if (this.d != null) {
            contentValues.put("iconPackage", this.d.packageName);
            contentValues.put("iconResource", this.d.resourceName);
        }
    }

    final void a(PackageInfo packageInfo) {
        this.e = C0086d.a(packageInfo);
        long j = packageInfo.firstInstallTime;
    }

    public final void b(Bitmap bitmap) {
        this.s = bitmap;
    }

    public final void b(C0055bw c0055bw) {
        this.s = c0055bw.a(this.f343a);
        this.c = c0055bw.a(this.s);
    }

    @Override // com.android.launcher3.bD
    public final String toString() {
        return "ShortcutInfo(title=" + this.q.toString() + "intent=" + this.f343a + "id=" + this.f + " type=" + this.g + " container=" + this.h + " screen=" + this.i + " cellX=" + this.j + " cellY=" + this.k + " spanX=" + this.l + " spanY=" + this.m + " dropPos=" + this.r + ")";
    }
}
