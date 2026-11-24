package com.android.launcher3;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
final class cI implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ViewGroup f216a;
    private final /* synthetic */ View b;

    cI(cG cGVar, ViewGroup viewGroup, View view) {
        this.f216a = viewGroup;
        this.b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f216a.removeView(this.b);
    }
}
