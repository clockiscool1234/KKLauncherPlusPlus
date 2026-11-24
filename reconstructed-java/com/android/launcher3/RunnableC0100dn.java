package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.dn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0100dn implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f289a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;

    RunnableC0100dn(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, ArrayList arrayList) {
        this.f289a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f289a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.a(this.c);
        }
    }
}
