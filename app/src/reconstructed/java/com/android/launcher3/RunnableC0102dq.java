package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.dq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0102dq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f292a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ cF c;

    RunnableC0102dq(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, cF cFVar) {
        this.f292a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = cFVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f292a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.b(this.c);
        }
    }
}
