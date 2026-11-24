package com.android.launcher3;

import android.content.ContentResolver;

/* JADX INFO: loaded from: classes.dex */
final class cR implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ContentResolver f224a;
    private final /* synthetic */ C0043bk b;

    cR(ContentResolver contentResolver, C0043bk c0043bk) {
        this.f224a = contentResolver;
        this.b = c0043bk;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f224a.delete(dF.a(this.b.f, false), null, null);
        synchronized (cO.c) {
            cO.d.remove(Long.valueOf(this.b.f));
            cO.g.remove(Long.valueOf(this.b.f));
            cO.h.remove(this.b);
            cO.e.remove(this.b);
        }
        this.f224a.delete(dF.c, "container=" + this.b.f, null);
        synchronized (cO.c) {
            for (bD bDVar : this.b.b) {
                cO.d.remove(Long.valueOf(bDVar.f));
                cO.h.remove(bDVar);
            }
        }
    }
}
