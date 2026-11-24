package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class fY implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DecelerateInterpolator f370a = new DecelerateInterpolator(0.75f);
    private final fW b = new fW(0.13f);

    fY() {
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return this.f370a.getInterpolation(this.b.getInterpolation(f));
    }
}
