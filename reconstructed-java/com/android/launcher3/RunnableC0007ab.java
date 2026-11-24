package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0007ab implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Runnable f144a;

    RunnableC0007ab(C0006aa c0006aa, Runnable runnable) {
        this.f144a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f144a.run();
    }
}
