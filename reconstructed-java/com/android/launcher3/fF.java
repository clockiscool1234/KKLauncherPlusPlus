package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class fF implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f351a;
    private final /* synthetic */ View b;
    private final /* synthetic */ aH c;
    private final /* synthetic */ boolean d;
    private final /* synthetic */ boolean e;

    fF(Workspace workspace, View view, aH aHVar, boolean z, boolean z2) {
        this.f351a = workspace;
        this.b = view;
        this.c = aHVar;
        this.d = z;
        this.e = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f351a.a(this.b, this.c, this.d, this.e);
        this.f351a.bB = null;
    }
}
