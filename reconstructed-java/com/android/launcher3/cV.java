package com.android.launcher3;

import android.content.Context;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
final class cV implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cO f228a;
    private final /* synthetic */ Context b;
    private final /* synthetic */ ArrayList c;
    private final /* synthetic */ ArrayList d;
    private final /* synthetic */ InterfaceC0091de e;

    cV(cO cOVar, Context context, ArrayList arrayList, ArrayList arrayList2, InterfaceC0091de interfaceC0091de) {
        this.f228a = cOVar;
        this.b = context;
        this.c = arrayList;
        this.d = arrayList2;
        this.e = interfaceC0091de;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Pair pairA;
        C0137ey c0137eyB;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        TreeMap treeMapD = cO.d(this.b);
        Iterator it = treeMapD.keySet().iterator();
        while (it.hasNext()) {
            arrayList3.add(Long.valueOf(((Long) treeMapD.get((Integer) it.next())).longValue()));
        }
        synchronized (cO.c) {
            for (bD bDVar : this.c) {
                if (!cO.a(this.b, bDVar.q.toString(), bDVar.a())) {
                    int i = arrayList3.isEmpty() ? 0 : 1;
                    Pair pairA2 = cO.a(this.b, i, arrayList3);
                    if (pairA2 == null) {
                        LauncherProvider launcherProviderH = cB.h();
                        for (int iMax = Math.max(1, (i + 1) - arrayList3.size()); iMax > 0; iMax--) {
                            long jC = launcherProviderH.c();
                            arrayList3.add(Long.valueOf(jC));
                            arrayList2.add(Long.valueOf(jC));
                        }
                        pairA = cO.a(this.b, i, arrayList3);
                    } else {
                        pairA = pairA2;
                    }
                    if (pairA == null) {
                        throw new RuntimeException("Coordinates should not be null");
                    }
                    if (bDVar instanceof C0137ey) {
                        c0137eyB = (C0137ey) bDVar;
                    } else {
                        if (!(bDVar instanceof C0086d)) {
                            throw new RuntimeException("Unexpected info type");
                        }
                        c0137eyB = ((C0086d) bDVar).b();
                    }
                    cO.a(this.b, (bD) c0137eyB, -100L, ((Long) pairA.first).longValue(), ((int[]) pairA.second)[0], ((int[]) pairA.second)[1], false);
                    arrayList.add(c0137eyB);
                }
            }
        }
        this.f228a.a(this.b, arrayList3);
        if (arrayList.isEmpty() && this.d.isEmpty()) {
            return;
        }
        this.f228a.a(new cW(this, this.e, arrayList, arrayList2, this.d));
    }
}
