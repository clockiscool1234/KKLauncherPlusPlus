package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class cW implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cV f229a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;
    private final /* synthetic */ ArrayList d;
    private final /* synthetic */ ArrayList e;

    cW(cV cVVar, InterfaceC0091de interfaceC0091de, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        this.f229a = cVVar;
        this.b = interfaceC0091de;
        this.c = arrayList;
        this.d = arrayList2;
        this.e = arrayList3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091de = this.f229a.f228a.v != null ? (InterfaceC0091de) this.f229a.f228a.v.get() : null;
        if (this.b != interfaceC0091de || interfaceC0091de == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!this.c.isEmpty()) {
            long j = ((bD) this.c.get(this.c.size() - 1)).i;
            for (bD bDVar : this.c) {
                if (bDVar.i == j) {
                    arrayList.add(bDVar);
                } else {
                    arrayList2.add(bDVar);
                }
            }
        }
        this.b.a(this.d, arrayList2, arrayList, this.e);
    }
}
