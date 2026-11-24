package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class cM implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cL f220a;

    cM(cL cLVar) {
        this.f220a = cLVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f220a.f219a.g();
    }
}
