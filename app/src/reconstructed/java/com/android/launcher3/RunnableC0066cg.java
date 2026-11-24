package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.cg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0066cg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f239a;
    private final /* synthetic */ ArrayList b;
    private final /* synthetic */ ArrayList c;

    RunnableC0066cg(Launcher launcher, ArrayList arrayList, ArrayList arrayList2) {
        this.f239a = launcher;
        this.b = arrayList;
        this.c = arrayList2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f239a.a(this.b, this.c);
    }
}
