package com.android.launcher3;

import android.view.animation.Interpolator;

/* JADX INFO: renamed from: com.android.launcher3.ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class InterpolatorC0116ed implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
