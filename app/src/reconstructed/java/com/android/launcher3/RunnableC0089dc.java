package com.android.launcher3;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.util.Log;

/* JADX INFO: renamed from: com.android.launcher3.dc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0089dc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ContentResolver f281a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ ContentValues c;
    private final /* synthetic */ bD d;

    RunnableC0089dc(ContentResolver contentResolver, boolean z, ContentValues contentValues, bD bDVar) {
        this.f281a = contentResolver;
        this.b = z;
        this.c = contentValues;
        this.d = bDVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f281a.insert(this.b ? dF.f261a : dF.c, this.c);
        synchronized (cO.c) {
            cO.a(this.d.f, this.d, (StackTraceElement[]) null);
            cO.d.put(Long.valueOf(this.d.f), this.d);
            switch (this.d.g) {
                case 2:
                    cO.g.put(Long.valueOf(this.d.f), (C0043bk) this.d);
                case 0:
                case 1:
                    if (this.d.h == -100 || this.d.h == -101) {
                        cO.e.add(this.d);
                    } else if (!cO.g.containsKey(Long.valueOf(this.d.h))) {
                        Log.e("Launcher.Model", "adding item: " + this.d + " to a folder that  doesn't exist");
                    }
                    break;
                case 4:
                    cO.f.add((cF) this.d);
                    break;
            }
        }
    }
}
