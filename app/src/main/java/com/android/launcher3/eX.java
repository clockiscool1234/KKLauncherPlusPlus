package com.android.launcher3;

import android.database.DataSetObserver;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
final class eX extends DataSetObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f324a;
    private final /* synthetic */ LinearLayout b;
    private final /* synthetic */ dK c;

    eX(eS eSVar, LinearLayout linearLayout, dK dKVar) {
        this.f324a = eSVar;
        this.b = linearLayout;
        this.c = dKVar;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.b.removeAllViews();
        eS.a(this.f324a, this.b, this.c, false);
        eS.h(this.f324a);
        eS.i(this.f324a);
    }
}
