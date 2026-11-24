package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
final class T implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ S f109a;

    T(S s) {
        this.f109a = s;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f109a.f107a.getParent() == null || !this.f109a.f107a.hasWindowFocus() || this.f109a.b || !this.f109a.f107a.performLongClick()) {
            return;
        }
        this.f109a.f107a.setPressed(false);
        this.f109a.b = true;
    }
}
