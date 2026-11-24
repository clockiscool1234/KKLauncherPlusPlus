package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class fX implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final fS f369a = new fS(0.35f);
    private final DecelerateInterpolator b = new DecelerateInterpolator(3.0f);

    fX() {
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return this.b.getInterpolation(this.f369a.getInterpolation(f));
    }
}
