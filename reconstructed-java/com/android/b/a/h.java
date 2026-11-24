package com.android.b.a;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
final class h implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ f f59a;

    h(f fVar) {
        this.f59a = fVar;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f59a.f = false;
        this.f59a.e.requestRender();
    }
}
