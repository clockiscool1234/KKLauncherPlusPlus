package com.android.launcher3;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class fW implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f368a;

    public fW(float f) {
        this.f368a = f;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return (1.0f - (this.f368a / (this.f368a + f))) / (1.0f - (this.f368a / (this.f368a + 1.0f)));
    }
}
