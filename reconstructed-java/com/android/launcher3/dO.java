package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class dO implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ MemoryDumpActivity f269a;

    dO(MemoryDumpActivity memoryDumpActivity) {
        this.f269a = memoryDumpActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f269a.finish();
    }
}
