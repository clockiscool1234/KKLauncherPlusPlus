package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class cK implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cG f218a;

    cK(cG cGVar) {
        this.f218a = cGVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f218a.h();
    }
}
