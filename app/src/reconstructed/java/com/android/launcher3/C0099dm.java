package com.android.launcher3;

import java.util.Comparator;

/* JADX INFO: renamed from: com.android.launcher3.dm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0099dm implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ C0017al f288a;

    C0099dm(RunnableC0093dg runnableC0093dg, C0017al c0017al) {
        this.f288a = c0017al;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        bD bDVar = (bD) obj;
        bD bDVar2 = (bD) obj2;
        int i = (int) this.f288a.d;
        int i2 = ((int) this.f288a.c) * i;
        int i3 = i2 * 6;
        return (int) (((((bDVar.h * ((long) i3)) + (bDVar.i * ((long) i2))) + ((long) (bDVar.k * i))) + ((long) bDVar.j)) - ((((((long) i2) * bDVar2.i) + (bDVar2.h * ((long) i3))) + ((long) (i * bDVar2.k))) + ((long) bDVar2.j)));
    }
}
