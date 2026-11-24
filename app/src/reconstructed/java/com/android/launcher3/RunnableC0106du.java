package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.du, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0106du implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0105dt f296a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;

    RunnableC0106du(RunnableC0105dt runnableC0105dt, InterfaceC0091de interfaceC0091de, ArrayList arrayList) {
        this.f296a = runnableC0105dt;
        this.b = interfaceC0091de;
        this.c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091de = this.f296a.f295a.v != null ? (InterfaceC0091de) this.f296a.f295a.v.get() : null;
        if (this.b != interfaceC0091de || interfaceC0091de == null) {
            return;
        }
        this.b.c(this.c);
    }
}
