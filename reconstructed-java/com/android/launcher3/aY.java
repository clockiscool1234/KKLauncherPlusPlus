package com.android.launcher3;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class aY implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f141a;

    public aY(Folder folder, int i) {
        this.f141a = i;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        C0137ey c0137ey = (C0137ey) obj;
        C0137ey c0137ey2 = (C0137ey) obj2;
        return ((c0137ey.k * this.f141a) + c0137ey.j) - ((c0137ey2.k * this.f141a) + c0137ey2.j);
    }
}
