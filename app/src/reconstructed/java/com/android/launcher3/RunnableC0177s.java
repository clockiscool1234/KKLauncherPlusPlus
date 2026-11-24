package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0177s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizeTabHost f403a;

    RunnableC0177s(AppsCustomizeTabHost appsCustomizeTabHost) {
        this.f403a = appsCustomizeTabHost;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f403a.b.requestLayout();
        this.f403a.c.setAlpha(1.0f);
    }
}
