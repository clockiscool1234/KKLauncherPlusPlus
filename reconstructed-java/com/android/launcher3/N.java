package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View f97a;
    float b;
    float c;
    float d;
    float e;
    float f;
    float g;
    int h;
    boolean i = false;
    final /* synthetic */ CellLayout j;
    private Animator k;

    public N(CellLayout cellLayout, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.j = cellLayout;
        cellLayout.a(i2, i3, i6, i7, cellLayout.r);
        int i8 = cellLayout.r[0];
        int i9 = cellLayout.r[1];
        cellLayout.a(i4, i5, i6, i7, cellLayout.r);
        int i10 = cellLayout.r[0] - i8;
        int i11 = cellLayout.r[1] - i9;
        this.b = 0.0f;
        this.c = 0.0f;
        int i12 = i == 0 ? -1 : 1;
        if (i10 != i11 || i10 != 0) {
            if (i11 == 0) {
                this.b = (-i12) * Math.signum(i10) * cellLayout.ah;
            } else if (i10 == 0) {
                this.c = (-i12) * Math.signum(i11) * cellLayout.ah;
            } else {
                double dAtan = Math.atan(i11 / i10);
                this.b = (int) (((double) (Math.signum(i10) * (-i12))) * Math.abs(Math.cos(dAtan) * ((double) cellLayout.ah)));
                this.c = (int) (((double) ((-i12) * Math.signum(i11))) * Math.abs(Math.sin(dAtan) * ((double) cellLayout.ah)));
            }
        }
        this.h = i;
        this.d = view.getTranslationX();
        this.e = view.getTranslationY();
        this.f = cellLayout.e() - (4.0f / view.getWidth());
        this.g = view.getScaleX();
        this.f97a = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.k != null) {
            this.k.cancel();
        }
        AnimatorSet animatorSetB = C0082cw.b();
        this.k = animatorSetB;
        animatorSetB.playTogether(C0082cw.a(this.f97a, "scaleX", this.j.e()), C0082cw.a(this.f97a, "scaleY", this.j.e()), C0082cw.a(this.f97a, "translationX", 0.0f), C0082cw.a(this.f97a, "translationY", 0.0f));
        animatorSetB.setDuration(150L);
        animatorSetB.setInterpolator(new DecelerateInterpolator(1.5f));
        animatorSetB.start();
    }

    final void a() {
        if (this.j.Z.containsKey(this.f97a)) {
            N n = (N) this.j.Z.get(this.f97a);
            if (n.k != null) {
                n.k.cancel();
            }
            this.j.Z.remove(this.f97a);
            if (this.b == 0.0f && this.c == 0.0f) {
                b();
                return;
            }
        }
        if (this.b == 0.0f && this.c == 0.0f) {
            return;
        }
        View view = this.f97a;
        ValueAnimator valueAnimatorA = C0082cw.a(0.0f, 1.0f);
        this.k = valueAnimatorA;
        valueAnimatorA.setRepeatMode(2);
        valueAnimatorA.setRepeatCount(-1);
        valueAnimatorA.setDuration(this.h == 0 ? 350 : 300);
        valueAnimatorA.setStartDelay((int) (Math.random() * 60.0d));
        valueAnimatorA.addUpdateListener(new O(this));
        valueAnimatorA.addListener(new P(this));
        this.j.Z.put(this.f97a, this);
        valueAnimatorA.start();
    }
}
