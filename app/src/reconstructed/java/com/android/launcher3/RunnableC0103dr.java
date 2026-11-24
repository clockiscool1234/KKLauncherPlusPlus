package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.dr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0103dr implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f293a;
    private final /* synthetic */ InterfaceC0091de b;

    RunnableC0103dr(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de) {
        this.f293a = runnableC0093dg;
        this.b = interfaceC0091de;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f293a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.C();
        }
    }
}
