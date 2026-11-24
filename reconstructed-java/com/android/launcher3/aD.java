package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class aD implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ aA f123a;

    aD(aA aAVar) {
        this.f123a = aAVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f123a.f120a.start();
    }
}
