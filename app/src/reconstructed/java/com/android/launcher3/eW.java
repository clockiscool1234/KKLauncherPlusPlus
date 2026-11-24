package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class eW implements View.OnLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ eS f323a;

    eW(eS eSVar) {
        this.f323a = eSVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        ((CheckableFrameLayout) view).toggle();
        if (this.f323a.i != null) {
            this.f323a.i.invalidate();
            return true;
        }
        this.f323a.i = this.f323a.startActionMode(this.f323a.h);
        int childCount = this.f323a.f.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.f323a.f.getChildAt(i).setSelected(false);
        }
        return true;
    }
}
