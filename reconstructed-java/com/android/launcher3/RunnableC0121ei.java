package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ei, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0121ei implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PagedViewIcon f334a;

    RunnableC0121ei(PagedViewIcon pagedViewIcon) {
        this.f334a = pagedViewIcon;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f334a.refreshDrawableState();
    }
}
