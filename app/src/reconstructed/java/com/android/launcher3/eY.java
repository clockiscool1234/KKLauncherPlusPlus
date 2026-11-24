package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eY implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f325a;

    eY(eS eSVar) {
        this.f325a = eSVar;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i3 - i <= 0 || i4 - i2 <= 0) {
            return;
        }
        if (this.f325a.n >= 0 && this.f325a.n < this.f325a.f.getChildCount()) {
            this.f325a.e.onClick(this.f325a.f.getChildAt(this.f325a.n));
        }
        view.removeOnLayoutChangeListener(this);
    }
}
