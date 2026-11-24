package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class aX implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ aW f140a;

    aX(aW aWVar) {
        this.f140a = aWVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f140a.f139a.b.v();
        this.f140a.f139a.b.a(true, 400, (Runnable) null);
    }
}
