package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class aU implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Folder f137a;
    private final /* synthetic */ View b;
    private final /* synthetic */ aH c;
    private final /* synthetic */ boolean d;
    private final /* synthetic */ boolean e;

    aU(Folder folder, View view, aH aHVar, boolean z, boolean z2) {
        this.f137a = folder;
        this.b = view;
        this.c = aHVar;
        this.d = z;
        this.e = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f137a.a(this.b, this.c, this.d, this.e);
        this.f137a.Q = null;
    }
}
