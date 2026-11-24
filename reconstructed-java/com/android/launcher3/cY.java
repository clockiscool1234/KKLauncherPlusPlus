package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class cY implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f231a;
    private final /* synthetic */ bD b;
    private final /* synthetic */ StackTraceElement[] c;

    cY(long j, bD bDVar, StackTraceElement[] stackTraceElementArr) {
        this.f231a = j;
        this.b = bDVar;
        this.c = stackTraceElementArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (cO.c) {
            cO.a(this.f231a, this.b, this.c);
        }
    }
}
