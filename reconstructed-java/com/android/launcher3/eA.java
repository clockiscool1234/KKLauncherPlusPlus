package com.android.launcher3;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public final class eA implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f303a = 1.3f;

    public final void a() {
        this.f303a = 0.0f;
    }

    public final void a(int i) {
        this.f303a = i > 0 ? 1.3f / i : 1.3f;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (((f2 * (this.f303a + 1.0f)) + this.f303a) * f2 * f2) + 1.0f;
    }
}
