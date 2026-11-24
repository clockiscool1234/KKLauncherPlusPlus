package com.android.launcher3;

import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.bu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewOnClickListenerC0053bu implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Hotseat f206a;

    ViewOnClickListenerC0053bu(Hotseat hotseat) {
        this.f206a = hotseat;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f206a.b != null) {
            this.f206a.b.onClickAllAppsButton(view);
        }
    }
}
