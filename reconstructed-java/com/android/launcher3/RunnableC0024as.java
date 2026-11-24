package com.android.launcher3;

import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.as, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0024as implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f158a;
    private final /* synthetic */ Runnable b;

    RunnableC0024as(DragLayer dragLayer, View view, Runnable runnable) {
        this.f158a = view;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f158a.setVisibility(0);
        if (this.b != null) {
            this.b.run();
        }
    }
}
