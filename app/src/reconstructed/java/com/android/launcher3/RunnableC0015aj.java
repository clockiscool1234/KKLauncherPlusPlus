package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.aj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0015aj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ DeleteDropTarget f151a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ aH c;

    RunnableC0015aj(DeleteDropTarget deleteDropTarget, boolean z, aH aHVar) {
        this.f151a = deleteDropTarget;
        this.b = z;
        this.c = aHVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.b) {
            this.f151a.b.y();
            DeleteDropTarget.a(this.f151a, this.c);
        }
        this.f151a.b.q();
        C0021ap.a(this.c);
    }
}
