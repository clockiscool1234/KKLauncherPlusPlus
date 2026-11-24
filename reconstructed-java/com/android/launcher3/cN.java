package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class cN implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cG f221a;

    cN(cG cGVar) {
        this.f221a = cGVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f221a.f214a.h().an();
    }
}
