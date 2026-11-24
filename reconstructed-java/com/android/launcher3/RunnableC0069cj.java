package com.android.launcher3;

import android.view.View;
import android.widget.Advanceable;

/* JADX INFO: renamed from: com.android.launcher3.cj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0069cj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f242a;

    RunnableC0069cj(HandlerC0068ci handlerC0068ci, View view) {
        this.f242a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((Advanceable) this.f242a).advance();
    }
}
