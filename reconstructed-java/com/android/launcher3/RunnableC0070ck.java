package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ck, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0070ck implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f243a;

    RunnableC0070ck(Launcher launcher) {
        this.f243a = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f243a.d(this.f243a.ay);
        this.f243a.ay = null;
    }
}
