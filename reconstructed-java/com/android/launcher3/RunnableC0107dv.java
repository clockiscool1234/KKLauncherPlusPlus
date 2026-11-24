package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.dv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0107dv implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0105dt f297a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;
    private final /* synthetic */ ArrayList d;

    RunnableC0107dv(RunnableC0105dt runnableC0105dt, InterfaceC0091de interfaceC0091de, ArrayList arrayList, ArrayList arrayList2) {
        this.f297a = runnableC0105dt;
        this.b = interfaceC0091de;
        this.c = arrayList;
        this.d = arrayList2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091de = this.f297a.f295a.v != null ? (InterfaceC0091de) this.f297a.f295a.v.get() : null;
        if (this.b != interfaceC0091de || interfaceC0091de == null) {
            return;
        }
        this.b.a(this.c, this.d);
    }
}
