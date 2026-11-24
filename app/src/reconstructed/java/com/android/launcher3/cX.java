package com.android.launcher3;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class cX implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ArrayList f230a;
    private final /* synthetic */ ArrayList b;

    cX(cO cOVar, ArrayList arrayList, ArrayList arrayList2) {
        this.f230a = arrayList;
        this.b = arrayList2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f230a.iterator();
        while (it.hasNext()) {
            ((bD) it.next()).b_();
        }
        Iterator it2 = this.b.iterator();
        while (it2.hasNext()) {
            ((bD) it2.next()).b_();
        }
    }
}
