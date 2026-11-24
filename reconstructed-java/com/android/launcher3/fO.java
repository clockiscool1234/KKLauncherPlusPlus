package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class fO implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Workspace f360a;

    fO(Workspace workspace) {
        this.f360a = workspace;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f360a.an();
    }
}
