package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bH implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f170a;

    bH(Launcher launcher) {
        this.f170a = launcher;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f170a.l.aa()) {
            return;
        }
        this.f170a.a(true, EnumC0176r.Widgets, true);
    }
}
