package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public final class aK extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
    private static ViewTreeObserver.OnDrawListener f;
    private static long g;
    private static boolean h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f129a;
    private long b;
    private long c = -1;
    private boolean d;
    private boolean e;

    public aK(ValueAnimator valueAnimator, View view) {
        this.f129a = view;
        valueAnimator.addUpdateListener(this);
    }

    public aK(ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f129a = view;
        viewPropertyAnimator.setListener(this);
    }

    public static void a(View view) {
        if (f != null) {
            view.getViewTreeObserver().removeOnDrawListener(f);
        }
        f = new aL();
        view.getViewTreeObserver().addOnDrawListener(f);
        h = true;
    }

    public static void a(boolean z) {
        h = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        ValueAnimator valueAnimator = (ValueAnimator) animator;
        valueAnimator.addUpdateListener(this);
        onAnimationUpdate(valueAnimator);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.c == -1) {
            this.b = g;
            this.c = jCurrentTimeMillis;
        }
        long currentPlayTime = valueAnimator.getCurrentPlayTime();
        if (this.d || !h || currentPlayTime >= valueAnimator.getDuration()) {
            return;
        }
        this.d = true;
        long j = g - this.b;
        if (j == 0 && jCurrentTimeMillis < this.c + 1000 && currentPlayTime > 0) {
            this.f129a.getRootView().invalidate();
            valueAnimator.setCurrentPlayTime(0L);
        } else if (j == 1 && jCurrentTimeMillis < this.c + 1000 && !this.e && jCurrentTimeMillis > this.c + 16 && currentPlayTime > 16) {
            valueAnimator.setCurrentPlayTime(16L);
            this.e = true;
        } else if (j > 1) {
            this.f129a.post(new aM(this, valueAnimator));
        }
        this.d = false;
    }
}
