package com.android.launcher3;

import android.animation.AnimatorSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bS implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f180a;
    private final /* synthetic */ AnimatorSet b;
    private final /* synthetic */ AppsCustomizeTabHost c;
    private final /* synthetic */ float d;
    private final /* synthetic */ View e;
    private final /* synthetic */ boolean f;

    bS(Launcher launcher, AnimatorSet animatorSet, AppsCustomizeTabHost appsCustomizeTabHost, float f, View view, boolean z) {
        this.f180a = launcher;
        this.b = animatorSet;
        this.c = appsCustomizeTabHost;
        this.d = f;
        this.e = view;
        this.f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f180a.b != this.b) {
            return;
        }
        Launcher launcher = this.f180a;
        AppsCustomizeTabHost appsCustomizeTabHost = this.c;
        float f = this.d;
        Launcher.b(appsCustomizeTabHost);
        this.f180a.b(this.e, this.f, false);
        this.f180a.b(this.c, this.f, false);
        C0082cw.a(this.f180a.b, this.c);
    }
}
