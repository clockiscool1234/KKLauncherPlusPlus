package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ch, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0067ch implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f240a;

    RunnableC0067ch(Launcher launcher) {
        this.f240a = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f240a.setRequestedOrientation(-1);
    }
}
