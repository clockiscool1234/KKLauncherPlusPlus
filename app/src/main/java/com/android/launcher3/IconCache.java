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
public class IconCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bitmap f207a;
    private final Context b;
    private final PackageManager c;
    private final HashMap d = new HashMap(50);
    private int e;

    public IconCache(Context context) {
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

    private IconCacheEntry b(ComponentName componentName, ResolveInfo resolveInfo, HashMap map) {
        IconCacheEntry entry = (IconCacheEntry) this.d.get(componentName);
        if (entry != null) {
            return entry;
        }
        entry = new IconCacheEntry();
        this.d.put(componentName, entry);
        ComponentName cacheKey = cO.a(resolveInfo);
        if (map == null || !map.containsKey(cacheKey)) {
            CharSequence label = resolveInfo.loadLabel(this.c);
            entry.title = label == null ? resolveInfo.activityInfo.name : label.toString();
            if (map != null) {
                map.put(cacheKey, entry.title);
            }
        } else {
            entry.title = ((CharSequence) map.get(cacheKey)).toString();
        }
        String customName = AppCustomizationManager.getNameOverride(this.b, componentName);
        if (customName != null) {
            entry.title = customName;
        }
        Drawable icon = AppCustomizationManager.getIconDrawable(this.b, componentName);
        if (icon == null) {
            icon = IconPackSupport.loadIcon(this.b, componentName);
        }
        if (icon == null) {
            icon = a(resolveInfo);
        }
        entry.icon = eI.a(icon, this.b);
        return entry;
    }

    public final Bitmap a(ComponentName componentName, ResolveInfo resolveInfo, HashMap map) {
        synchronized (this.d) {
            if (resolveInfo == null || componentName == null) {
                return null;
            }
            return b(componentName, resolveInfo, map).icon;
        }
    }

    public final Bitmap a(Intent intent) {
        Bitmap bitmap;
        synchronized (this.d) {
            ResolveInfo resolveInfoResolveActivity = this.c.resolveActivity(intent, 0);
            ComponentName component = intent.getComponent();
            bitmap = (resolveInfoResolveActivity == null || component == null) ? this.f207a : b(component, resolveInfoResolveActivity, null).icon;
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

    public final void a(al c0017al) {
        synchronized (this.d) {
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                IconCacheEntry entry = (IconCacheEntry) ((Map.Entry) it.next()).getValue();
                if (entry.icon.getWidth() < c0017al.o || entry.icon.getHeight() < c0017al.o) {
                    it.remove();
                }
            }
        }
    }

    public final void a(d c0086d, ResolveInfo resolveInfo, HashMap map) {
        synchronized (this.d) {
            IconCacheEntry c0056bxB = b(c0086d.d, resolveInfo, map);
            c0086d.q = c0056bxB.title;
            c0086d.b = c0056bxB.icon;
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
