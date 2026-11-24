package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class eU implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eT f321a;

    eU(eT eTVar) {
        this.f321a = eTVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f321a.f320a.g.setVisibility(4);
    }
}
