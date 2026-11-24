package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.cf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0065cf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f238a;
    private final /* synthetic */ ArrayList b;

    RunnableC0065cf(Launcher launcher, ArrayList arrayList) {
        this.f238a = launcher;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f238a.c(this.b);
    }
}
