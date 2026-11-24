package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.android.launcher3.bw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0055bw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bitmap f207a;
    private final Context b;
    private final PackageManager c;
    private final HashMap d = new HashMap(50);
    private int e;

    public C0055bw(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.b = context;
        this.c = context.getPackageManager();
        this.e = activityManager.getLauncherLargeIconDensity();
        Drawable drawableA = a();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(drawableA.getIntrinsicWidth(), 1), Math.max(drawableA.getIntrinsicHeight(), 1), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawableA.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        drawableA.draw(canvas);
        canvas.setBitmap(null);
        this.f207a = bitmapCreateBitmap;
    }

    private C0056bx b(ComponentName componentName, ResolveInfo resolveInfo, HashMap map) {
        C0056bx c0056bx = (C0056bx) this.d.get(componentName);
        if (c0056bx != null) {
            return c0056bx;
        }
        C0056bx c0056bx2 = new C0056bx((byte) 0);
        this.d.put(componentName, c0056bx2);
        ComponentName componentNameA = cO.a(resolveInfo);
        if (map == null || !map.containsKey(componentNameA)) {
            c0056bx2.b = resolveInfo.loadLabel(this.c).toString();
            if (map != null) {
                map.put(componentNameA, c0056bx2.b);
            }
        } else {
            c0056bx2.b = ((CharSequence) map.get(componentNameA)).toString();
        }
        if (c0056bx2.b == null) {
            c0056bx2.b = resolveInfo.activityInfo.name;
        }
        c0056bx2.f208a = eI.a(a(resolveInfo), this.b);
        return c0056bx2;
    }

    public final Bitmap a(ComponentName componentName, ResolveInfo resolveInfo, HashMap map) {
        synchronized (this.d) {
            if (resolveInfo == null || componentName == null) {
                return null;
            }
            return b(componentName, resolveInfo, map).f208a;
        }
    }

    public final Bitmap a(Intent intent) {
        Bitmap bitmap;
        synchronized (this.d) {
            ResolveInfo resolveInfoResolveActivity = this.c.resolveActivity(intent, 0);
            ComponentName component = intent.getComponent();
            bitmap = (resolveInfoResolveActivity == null || component == null) ? this.f207a : b(component, resolveInfoResolveActivity, null).f208a;
        }
        return bitmap;
    }

    public final Drawable a() {
        return a(Resources.getSystem(), android.R.mipmap.sym_def_app_icon);
    }

    public final Drawable a(ActivityInfo activityInfo) {
        Resources resourcesForApplication;
        int iconResource;
        try {
            resourcesForApplication = this.c.getResourcesForApplication(activityInfo.applicationInfo);
        } catch (PackageManager.NameNotFoundException e) {
            resourcesForApplication = null;
        }
        return (resourcesForApplication == null || (iconResource = activityInfo.getIconResource()) == 0) ? a() : a(resourcesForApplication, iconResource);
    }

    public final Drawable a(ResolveInfo resolveInfo) {
        return a(resolveInfo.activityInfo);
    }

    public final Drawable a(Resources resources, int i) {
        Drawable drawableForDensity;
        try {
            drawableForDensity = resources.getDrawableForDensity(i, this.e);
        } catch (Resources.NotFoundException e) {
            drawableForDensity = null;
        }
        return drawableForDensity != null ? drawableForDensity : a();
    }

    public final Drawable a(String str, int i) {
        Resources resourcesForApplication;
        try {
            resourcesForApplication = this.c.getResourcesForApplication(str);
        } catch (PackageManager.NameNotFoundException e) {
            resourcesForApplication = null;
        }
        return (resourcesForApplication == null || i == 0) ? a() : a(resourcesForApplication, i);
    }

    public final void a(ComponentName componentName) {
        synchronized (this.d) {
            this.d.remove(componentName);
        }
    }

    public final void a(C0017al c0017al) {
        synchronized (this.d) {
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                C0056bx c0056bx = (C0056bx) ((Map.Entry) it.next()).getValue();
                if (c0056bx.f208a.getWidth() < c0017al.o || c0056bx.f208a.getHeight() < c0017al.o) {
                    it.remove();
                }
            }
        }
    }

    public final void a(C0086d c0086d, ResolveInfo resolveInfo, HashMap map) {
        synchronized (this.d) {
            C0056bx c0056bxB = b(c0086d.d, resolveInfo, map);
            c0086d.q = c0056bxB.b;
            c0086d.b = c0056bxB.f208a;
        }
    }

    public final boolean a(Bitmap bitmap) {
        return this.f207a == bitmap;
    }

    public final void b() {
        synchronized (this.d) {
            this.d.clear();
        }
    }
}
