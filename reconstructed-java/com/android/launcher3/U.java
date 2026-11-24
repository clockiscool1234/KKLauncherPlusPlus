package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class U implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Cling f110a;

    U(Cling cling) {
        this.f110a = cling;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f110a.setFocusable(true);
        this.f110a.requestFocus();
    }
}
