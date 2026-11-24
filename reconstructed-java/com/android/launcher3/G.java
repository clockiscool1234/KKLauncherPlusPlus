package com.android.launcher3;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
final class G implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ CellLayout f84a;
    private final /* synthetic */ bB b;
    private final /* synthetic */ int c;

    G(CellLayout cellLayout, bB bBVar, int i) {
        this.f84a = cellLayout;
        this.b = bBVar;
        this.c = i;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (((Bitmap) this.b.c()) == null) {
            valueAnimator.cancel();
        } else {
            this.f84a.R[this.c] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f84a.invalidate(this.f84a.Q[this.c]);
        }
    }
}
