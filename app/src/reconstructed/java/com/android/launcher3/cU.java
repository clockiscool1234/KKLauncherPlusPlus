package com.android.launcher3;

import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class cU implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Collator f227a;

    cU(Collator collator) {
        this.f227a = collator;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        C0086d c0086d = (C0086d) obj;
        C0086d c0086d2 = (C0086d) obj2;
        int iCompare = this.f227a.compare(c0086d.q.toString().trim(), c0086d2.q.toString().trim());
        return iCompare == 0 ? c0086d.d.compareTo(c0086d2.d) : iCompare;
    }
}
