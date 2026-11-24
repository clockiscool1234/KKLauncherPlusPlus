package com.android.launcher3;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
final class aL implements ViewTreeObserver.OnDrawListener {
    aL() {
        System.currentTimeMillis();
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        aK.g++;
    }
}
