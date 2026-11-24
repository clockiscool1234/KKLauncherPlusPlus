package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.os.Handler;
import android.util.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class cB implements InterfaceC0019an {
    private static WeakReference j;
    private static Context k;
    private static cB l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AbstractC0059c f209a;
    private final D b;
    private cO c;
    private C0055bw d;
    private C0161fv e;
    private boolean f;
    private float g;
    private boolean i;
    private aI m;
    private int h = 300;
    private final ContentObserver n = new cC(this, new Handler());

    private cB() {
        if (k == null) {
            throw new IllegalStateException("LauncherAppState inited before app context set");
        }
        Log.v("Launcher", "LauncherAppState inited");
        if (k.getResources().getBoolean(R.bool.debug_memory_enabled)) {
            dQ.a(k, "L");
        }
        this.f = k.getResources().getBoolean(R.bool.is_large_tablet);
        this.g = k.getResources().getDisplayMetrics().density;
        c();
        this.d = new C0055bw(k);
        this.f209a = AbstractC0059c.a(k.getString(R.string.app_filter_class));
        this.b = D.a(k.getString(R.string.build_info_class));
        this.c = new cO(this, this.d, this.f209a);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme("package");
        k.registerReceiver(this.c, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        intentFilter2.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter2.addAction("android.intent.action.CONFIGURATION_CHANGED");
        k.registerReceiver(this.c, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED");
        k.registerReceiver(this.c, intentFilter3);
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction("android.search.action.SEARCHABLES_CHANGED");
        k.registerReceiver(this.c, intentFilter4);
        k.getContentResolver().registerContentObserver(dF.f261a, true, this.n);
    }

    public static cB a() {
        if (l == null) {
            l = new cB();
        }
        return l;
    }

    public static void a(Context context) {
        if (k != null) {
            Log.w("Launcher", "setApplicationContext called twice! old=" + k + " new=" + context);
        }
        k = context.getApplicationContext();
    }

    static void a(LauncherProvider launcherProvider) {
        j = new WeakReference(launcherProvider);
    }

    public static Context b() {
        return k;
    }

    static LauncherProvider h() {
        return (LauncherProvider) j.get();
    }

    public static boolean o() {
        D d = a().b;
        return false;
    }

    public static boolean p() {
        D d = a().b;
        return false;
    }

    final C0017al a(Context context, int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.m == null) {
            this.m = new aI(context, context.getResources(), i, i2, i3, i4, i5, i6);
            this.m.a().a(this);
        }
        C0017al c0017alA = this.m.a();
        c0017alA.a(context, context.getResources(), i3, i4, i5, i6);
        return c0017alA;
    }

    final cO a(Launcher launcher) {
        if (this.c == null) {
            throw new IllegalStateException("setLauncher() called before init()");
        }
        this.c.a((InterfaceC0091de) launcher);
        return this.c;
    }

    @Override // com.android.launcher3.InterfaceC0019an
    public final void a(C0017al c0017al) {
        eI.a(c0017al.o);
    }

    final boolean a(ComponentName componentName) {
        return this.f209a == null || this.f209a.a();
    }

    public final void c() {
        if (this.e != null) {
            this.e.close();
        }
        this.e = new C0161fv(k);
    }

    public final void d() {
        k.unregisterReceiver(this.c);
        k.getContentResolver().unregisterContentObserver(this.n);
    }

    final C0055bw e() {
        return this.d;
    }

    final cO f() {
        return this.c;
    }

    final C0161fv g() {
        return this.e;
    }

    public final aI i() {
        return this.m;
    }

    public final boolean j() {
        return this.f;
    }

    public final float k() {
        return this.g;
    }

    public final int l() {
        return this.h;
    }

    public final void m() {
        this.i = true;
    }

    public final boolean n() {
        boolean z = this.i;
        this.i = false;
        return z;
    }
}
