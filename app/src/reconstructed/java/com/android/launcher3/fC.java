package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class fC implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ fB f348a;

    fC(fB fBVar) {
        this.f348a = fBVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f348a.f347a.aw.a(true, 300, (Runnable) null);
    }
}
