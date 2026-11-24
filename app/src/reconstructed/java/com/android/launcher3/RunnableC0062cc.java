package com.android.launcher3;

import java.util.HashMap;

/* JADX INFO: renamed from: com.android.launcher3.cc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0062cc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f235a;
    private final /* synthetic */ HashMap b;

    RunnableC0062cc(Launcher launcher, HashMap map) {
        this.f235a = launcher;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f235a.a(this.b);
    }
}
