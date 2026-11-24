package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ek, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0123ek implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PagedViewWidget f335a;

    RunnableC0123ek(PagedViewWidget pagedViewWidget) {
        this.f335a = pagedViewWidget;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (PagedViewWidget.c != null) {
            return;
        }
        if (this.f335a.f103a != null) {
            this.f335a.f103a.a(this.f335a);
            PagedViewWidget.c = this.f335a;
        }
        this.f335a.b = true;
    }
}
