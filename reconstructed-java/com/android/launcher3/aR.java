package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class aR implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Folder f134a;

    aR(Folder folder) {
        this.f134a = folder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f134a.r() <= 1) {
            this.f134a.B();
        }
    }
}
