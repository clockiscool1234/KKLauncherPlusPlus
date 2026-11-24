package com.android.launcher3;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;

/* JADX INFO: renamed from: com.android.launcher3.dd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0090dd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ContentResolver f282a;
    private final /* synthetic */ Uri b;
    private final /* synthetic */ bD c;

    RunnableC0090dd(ContentResolver contentResolver, Uri uri, bD bDVar) {
        this.f282a = contentResolver;
        this.b = uri;
        this.c = bDVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f282a.delete(this.b, null, null);
        synchronized (cO.c) {
            switch (this.c.g) {
                case 0:
                case 1:
                    cO.e.remove(this.c);
                    break;
                case 2:
                    cO.g.remove(Long.valueOf(this.c.f));
                    for (bD bDVar : cO.d.values()) {
                        if (bDVar.h == this.c.f) {
                            Log.e("Launcher.Model", "deleting a folder (" + this.c + ") which still contains items (" + bDVar + ")");
                        }
                    }
                    cO.e.remove(this.c);
                    break;
                case 4:
                    cO.f.remove((cF) this.c);
                    break;
            }
            cO.d.remove(Long.valueOf(this.c.f));
            cO.h.remove(this.c);
        }
    }
}
