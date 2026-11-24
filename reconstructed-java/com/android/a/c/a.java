package com.android.a.c;

import android.util.Log;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements j {
    private static WeakHashMap i = new WeakHashMap();
    private static ThreadLocal j = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f47a;
    protected int b;
    protected int c;
    protected int d;
    private int e;
    private int f;
    private boolean g;
    private c h;

    protected a() {
        this(null, 0, 0);
    }

    protected a(c cVar, int i2, int i3) {
        this.f47a = -1;
        this.c = -1;
        this.d = -1;
        this.h = null;
        this.h = null;
        this.f47a = 0;
        this.b = 0;
        synchronized (i) {
            i.put(this, null);
        }
    }

    public static void k() {
        synchronized (i) {
            for (a aVar : i.keySet()) {
                aVar.b = 0;
                aVar.h = null;
            }
        }
    }

    public final void a(int i2, int i3) {
        this.c = i2;
        this.d = i3;
        this.e = i2 > 0 ? com.android.a.a.a.a(i2) : 0;
        this.f = i3 > 0 ? com.android.a.a.a.a(i3) : 0;
        if (this.e > 4096 || this.f > 4096) {
            Log.w("BasicTexture", String.format("texture is too large: %d x %d", Integer.valueOf(this.e), Integer.valueOf(this.f)), new Exception());
        }
    }

    protected final void a(c cVar) {
        this.h = cVar;
    }

    public final void a(c cVar, int i2, int i3, int i4, int i5) {
        cVar.a(this, i2, i3, i4, i5);
    }

    protected final void a(boolean z) {
        this.g = true;
    }

    public boolean a() {
        return false;
    }

    public final int b() {
        return this.f47a;
    }

    protected abstract boolean b(c cVar);

    public int c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    protected void finalize() {
        j.set(a.class);
        j();
        j.set(null);
    }

    public final boolean g() {
        return this.g;
    }

    protected abstract int h();

    public final boolean i() {
        return this.b == 1;
    }

    public void j() {
        c cVar = this.h;
        if (cVar != null && this.f47a != -1) {
            cVar.a(this);
            this.f47a = -1;
        }
        this.b = 0;
        this.h = null;
    }
}
