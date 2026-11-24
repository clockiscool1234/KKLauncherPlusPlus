package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.view.animation.AnimationUtils;

/* JADX INFO: renamed from: com.android.launcher3.ai, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0014ai implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f150a = -1;
    private float b = 0.0f;
    private final /* synthetic */ long c;
    private final /* synthetic */ int d;

    C0014ai(DeleteDropTarget deleteDropTarget, long j, int i) {
        this.c = j;
        this.d = i;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (this.f150a < 0) {
            this.f150a++;
        } else if (this.f150a == 0) {
            this.b = Math.min(0.5f, (AnimationUtils.currentAnimationTimeMillis() - this.c) / this.d);
            this.f150a++;
        }
        return Math.min(1.0f, this.b + f);
    }
}
