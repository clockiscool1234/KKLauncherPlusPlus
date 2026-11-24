package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0139f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0112e f345a;

    RunnableC0139f(C0112e c0112e) {
        this.f345a = c0112e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f345a.a(true);
    }
}
