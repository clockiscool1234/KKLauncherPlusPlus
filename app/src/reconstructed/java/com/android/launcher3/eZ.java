package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eZ implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f326a;

    eZ(eS eSVar) {
        this.f326a = eSVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f326a.b != null) {
            ((AbstractC0149fj) this.f326a.b.getTag()).b(this.f326a);
        }
    }
}
