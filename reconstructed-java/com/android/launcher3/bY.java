package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class bY implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f186a;
    private final /* synthetic */ ArrayList b;
    private final /* synthetic */ int c;
    private final /* synthetic */ int d;
    private final /* synthetic */ boolean e;

    bY(Launcher launcher, ArrayList arrayList, int i, int i2, boolean z) {
        this.f186a = launcher;
        this.b = arrayList;
        this.c = i;
        this.d = i2;
        this.e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f186a.a(this.b, this.c, this.d, this.e);
    }
}
