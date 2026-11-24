package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ad, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0009ad implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DeleteDropTarget f146a;
    private final /* synthetic */ aH b;

    RunnableC0009ad(DeleteDropTarget deleteDropTarget, aH aHVar) {
        this.f146a = deleteDropTarget;
        this.b = aHVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DeleteDropTarget.a(this.f146a, this.b);
        this.f146a.c.c();
        this.f146a.b.y();
    }
}
