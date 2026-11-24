package com.android.launcher3;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public final class dI extends Animator implements Animator.AnimatorListener {
    private ViewPropertyAnimator b;
    private View c;
    private float d;
    private float e;
    private float f;
    private float g;
    private long h;
    private long i;
    private TimeInterpolator j;
    private aK m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EnumSet f263a = EnumSet.noneOf(dJ.class);
    private boolean l = false;
    private ArrayList k = new ArrayList();

    public dI(View view) {
        this.c = view;
    }

    public final dI a() {
        this.f263a.add(dJ.WITH_LAYER);
        return this;
    }

    public final dI a(float f) {
        this.f263a.add(dJ.TRANSLATION_Y);
        this.d = f;
        return this;
    }

    @Override // android.animation.Animator
    public final void addListener(Animator.AnimatorListener animatorListener) {
        this.k.add(animatorListener);
    }

    public final dI b(float f) {
        this.f263a.add(dJ.SCALE_X);
        this.e = f;
        return this;
    }

    public final dI c(float f) {
        this.f263a.add(dJ.SCALE_Y);
        this.f = f;
        return this;
    }

    @Override // android.animation.Animator
    public final void cancel() {
        if (this.b != null) {
            this.b.cancel();
        }
    }

    @Override // android.animation.Animator
    public final Animator clone() {
        throw new RuntimeException("Not implemented");
    }

    public final dI d(float f) {
        this.f263a.add(dJ.ALPHA);
        this.g = f;
        return this;
    }

    @Override // android.animation.Animator
    public final void end() {
        throw new RuntimeException("Not implemented");
    }

    @Override // android.animation.Animator
    public final long getDuration() {
        return this.i;
    }

    @Override // android.animation.Animator
    public final ArrayList getListeners() {
        return this.k;
    }

    @Override // android.animation.Animator
    public final long getStartDelay() {
        return this.h;
    }

    @Override // android.animation.Animator
    public final boolean isRunning() {
        return this.l;
    }

    @Override // android.animation.Animator
    public final boolean isStarted() {
        return this.b != null;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        for (int i = 0; i < this.k.size(); i++) {
            ((Animator.AnimatorListener) this.k.get(i)).onAnimationCancel(this);
        }
        this.l = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        for (int i = 0; i < this.k.size(); i++) {
            ((Animator.AnimatorListener) this.k.get(i)).onAnimationEnd(this);
        }
        this.l = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.k.size()) {
                return;
            }
            ((Animator.AnimatorListener) this.k.get(i2)).onAnimationRepeat(this);
            i = i2 + 1;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.m.onAnimationStart(animator);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.k.size()) {
                this.l = true;
                return;
            } else {
                ((Animator.AnimatorListener) this.k.get(i2)).onAnimationStart(this);
                i = i2 + 1;
            }
        }
    }

    @Override // android.animation.Animator
    public final void removeAllListeners() {
        this.k.clear();
    }

    @Override // android.animation.Animator
    public final void removeListener(Animator.AnimatorListener animatorListener) {
        this.k.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public final Animator setDuration(long j) {
        this.f263a.add(dJ.DURATION);
        this.i = j;
        return this;
    }

    @Override // android.animation.Animator
    public final void setInterpolator(TimeInterpolator timeInterpolator) {
        this.f263a.add(dJ.INTERPOLATOR);
        this.j = timeInterpolator;
    }

    @Override // android.animation.Animator
    public final void setStartDelay(long j) {
        this.f263a.add(dJ.START_DELAY);
        this.h = j;
    }

    @Override // android.animation.Animator
    public final void setTarget(Object obj) {
        throw new RuntimeException("Not implemented");
    }

    @Override // android.animation.Animator
    public final void setupEndValues() {
    }

    @Override // android.animation.Animator
    public final void setupStartValues() {
    }

    @Override // android.animation.Animator
    public final void start() {
        this.b = this.c.animate();
        this.m = new aK(this.b, this.c);
        if (this.f263a.contains(dJ.TRANSLATION_X)) {
            this.b.translationX(0.0f);
        }
        if (this.f263a.contains(dJ.TRANSLATION_Y)) {
            this.b.translationY(this.d);
        }
        if (this.f263a.contains(dJ.SCALE_X)) {
            this.b.scaleX(this.e);
        }
        if (this.f263a.contains(dJ.ROTATION_Y)) {
            this.b.rotationY(0.0f);
        }
        if (this.f263a.contains(dJ.SCALE_Y)) {
            this.b.scaleY(this.f);
        }
        if (this.f263a.contains(dJ.ALPHA)) {
            this.b.alpha(this.g);
        }
        if (this.f263a.contains(dJ.START_DELAY)) {
            this.b.setStartDelay(this.h);
        }
        if (this.f263a.contains(dJ.DURATION)) {
            this.b.setDuration(this.i);
        }
        if (this.f263a.contains(dJ.INTERPOLATOR)) {
            this.b.setInterpolator(this.j);
        }
        if (this.f263a.contains(dJ.WITH_LAYER)) {
            this.b.withLayer();
        }
        this.b.setListener(this);
        this.b.start();
        C0082cw.a(this);
    }
}
