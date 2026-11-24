package com.android.launcher3;

import android.animation.AnimatorSet;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
final class bZ implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AnimatorSet f187a;
    private final /* synthetic */ Collection b;

    bZ(Launcher launcher, AnimatorSet animatorSet, Collection collection) {
        this.f187a = animatorSet;
        this.b = collection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f187a.playTogether(this.b);
        this.f187a.start();
    }
}
