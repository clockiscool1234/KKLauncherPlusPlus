package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.di, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0095di implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f285a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ boolean c;

    RunnableC0095di(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, boolean z, long j) {
        this.f285a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f285a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.d(this.c);
        }
        this.f285a.c = false;
    }
}
