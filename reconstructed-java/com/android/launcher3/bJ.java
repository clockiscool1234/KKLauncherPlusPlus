package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bJ implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f172a;

    bJ(Launcher launcher) {
        this.f172a = launcher;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f172a.l.aa()) {
            return;
        }
        this.f172a.f();
    }
}
