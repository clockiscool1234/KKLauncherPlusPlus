package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.do, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
final class Cdo implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f290a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;
    private final /* synthetic */ int d;
    private final /* synthetic */ int e;

    Cdo(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, ArrayList arrayList, int i, int i2) {
        this.f290a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = arrayList;
        this.d = i;
        this.e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f290a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.a(this.c, this.d, this.d + this.e, false);
        }
    }
}
