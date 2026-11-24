package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eV implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f322a;

    eV(eS eSVar) {
        this.f322a = eSVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f322a.i != null) {
            if (view.isLongClickable()) {
                this.f322a.j.onLongClick(view);
            }
        } else {
            AbstractC0149fj abstractC0149fj = (AbstractC0149fj) view.getTag();
            if (abstractC0149fj.a() && view.getVisibility() == 0) {
                eS.a(this.f322a, view);
            }
            abstractC0149fj.a(this.f322a);
        }
    }
}
