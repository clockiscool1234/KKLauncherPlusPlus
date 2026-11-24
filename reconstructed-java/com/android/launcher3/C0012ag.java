package com.android.launcher3;

import android.animation.TimeInterpolator;

/* JADX INFO: renamed from: com.android.launcher3.ag, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0012ag implements TimeInterpolator {
    C0012ag(DeleteDropTarget deleteDropTarget) {
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return f * f * f * f * f * f * f * f;
    }
}
