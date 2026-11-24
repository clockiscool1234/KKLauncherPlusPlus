package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bI implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f171a;

    bI(Launcher launcher) {
        this.f171a = launcher;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f171a.l.aa()) {
            return;
        }
        this.f171a.r();
    }
}
