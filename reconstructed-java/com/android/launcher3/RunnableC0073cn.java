package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.cn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0073cn implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f246a;
    private final /* synthetic */ int b;

    RunnableC0073cn(Launcher launcher, int i) {
        this.f246a = launcher;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f246a.a(this.b != 0, 300, (Runnable) null);
    }
}
