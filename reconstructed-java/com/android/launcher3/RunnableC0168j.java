package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0168j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f394a;

    RunnableC0168j(AppsCustomizePagedView appsCustomizePagedView) {
        this.f394a = appsCustomizePagedView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f394a.c_();
    }
}
