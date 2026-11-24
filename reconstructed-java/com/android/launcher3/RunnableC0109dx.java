package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.dx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0109dx implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0105dt f299a;
    private final /* synthetic */ InterfaceC0091de b;

    RunnableC0109dx(RunnableC0105dt runnableC0105dt, InterfaceC0091de interfaceC0091de) {
        this.f299a = runnableC0105dt;
        this.b = interfaceC0091de;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091de = this.f299a.f295a.v != null ? (InterfaceC0091de) this.f299a.f295a.v.get() : null;
        if (this.b != interfaceC0091de || interfaceC0091de == null) {
            return;
        }
        InterfaceC0091de interfaceC0091de2 = this.b;
    }
}
