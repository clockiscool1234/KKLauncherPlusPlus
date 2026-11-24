package com.android.launcher3;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class cP implements Comparator {
    cP() {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        C0086d c0086d = (C0086d) obj;
        C0086d c0086d2 = (C0086d) obj2;
        if (c0086d.c < c0086d2.c) {
            return 1;
        }
        return c0086d.c > c0086d2.c ? -1 : 0;
    }
}
