package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class dY implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ dX f277a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;

    dY(dX dXVar, int i, int i2) {
        this.f277a = dXVar;
        this.b = i;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f277a.o(this.b);
        int i = this.c < this.b ? -1 : 1;
        int i2 = this.c < this.b ? this.c + 1 : this.b;
        int i3 = this.c > this.b ? this.c - 1 : this.b;
        for (int i4 = i2; i4 <= i3; i4++) {
            View childAt = this.f277a.getChildAt(i4);
            int iL = this.f277a.l(i4) + this.f277a.x();
            int iL2 = this.f277a.l(i4 + i) + this.f277a.x();
            AnimatorSet animatorSet = (AnimatorSet) childAt.getTag(100);
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            childAt.setTranslationX(iL - iL2);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.setDuration(this.f277a.L);
            animatorSet2.playTogether(ObjectAnimator.ofFloat(childAt, "translationX", 0.0f));
            animatorSet2.start();
            childAt.setTag(animatorSet2);
        }
        this.f277a.removeView(this.f277a.M);
        dX dXVar = this.f277a;
        View view = this.f277a.M;
        dX.R();
        this.f277a.addView(this.f277a.M, this.b);
        dX dXVar2 = this.f277a;
        View view2 = this.f277a.M;
        int i5 = this.b;
        dX.S();
        this.f277a.ax = -1;
        if (this.f277a.ap != null) {
            this.f277a.ap.a(this.f277a.D());
        }
    }
}
