package com.android.launcher3;

import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.br, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewOnFocusChangeListenerC0050br implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ HolographicLinearLayout f203a;

    ViewOnFocusChangeListenerC0050br(HolographicLinearLayout holographicLinearLayout) {
        this.f203a = holographicLinearLayout;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (this.f203a.isFocused() != this.f203a.f) {
            this.f203a.f = this.f203a.isFocused();
            this.f203a.refreshDrawableState();
        }
    }
}
