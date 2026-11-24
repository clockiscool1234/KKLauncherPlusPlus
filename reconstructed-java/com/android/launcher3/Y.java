package com.android.launcher3;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
final class Y implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ CropView f118a;

    Y(CropView cropView) {
        this.f118a = cropView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.f118a.d();
        this.f118a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
