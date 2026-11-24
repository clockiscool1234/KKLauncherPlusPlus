package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0172n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f398a;

    RunnableC0172n(AppsCustomizePagedView appsCustomizePagedView) {
        this.f398a = appsCustomizePagedView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f398a.P.y();
        this.f398a.P.e(false);
    }
}
