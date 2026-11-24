package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0171m implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f397a;

    RunnableC0171m(AppsCustomizePagedView appsCustomizePagedView) {
        this.f397a = appsCustomizePagedView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f397a.P.q().b()) {
            this.f397a.s();
            this.f397a.P.x();
        }
    }
}
