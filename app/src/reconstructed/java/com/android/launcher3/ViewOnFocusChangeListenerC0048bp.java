package com.android.launcher3;

import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.bp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewOnFocusChangeListenerC0048bp implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ HolographicImageView f201a;

    ViewOnFocusChangeListenerC0048bp(HolographicImageView holographicImageView) {
        this.f201a = holographicImageView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (this.f201a.isFocused() != this.f201a.d) {
            this.f201a.d = this.f201a.isFocused();
            this.f201a.refreshDrawableState();
        }
    }
}
