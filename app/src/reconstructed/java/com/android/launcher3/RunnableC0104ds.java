package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ds, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0104ds implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f294a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ int c;

    RunnableC0104ds(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, int i) {
        this.f294a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f294a.a(this.b);
        if (interfaceC0091deA == null || this.c == -1001) {
            return;
        }
        interfaceC0091deA.c(this.c);
    }
}
