package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class aW implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Folder f139a;

    aW(Folder folder) {
        this.f139a = folder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f139a.b.h().a(false, (Runnable) new aX(this), 150, false);
    }
}
