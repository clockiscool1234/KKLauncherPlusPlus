package com.android.launcher3;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class fS implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private fW f364a = new fW(0.35f);

    public fS(float f) {
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return 1.0f - this.f364a.getInterpolation(1.0f - f);
    }
}
