package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.dh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0094dh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f284a;

    RunnableC0094dh(RunnableC0093dg runnableC0093dg) {
        this.f284a = runnableC0093dg;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f284a) {
            this.f284a.e = true;
            this.f284a.notify();
        }
    }
}
