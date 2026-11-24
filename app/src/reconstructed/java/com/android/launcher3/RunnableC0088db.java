package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.db, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0088db implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cO f280a;

    RunnableC0088db(cO cOVar) {
        this.f280a = cOVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this) {
            notifyAll();
            this.f280a.q = false;
        }
    }
}
