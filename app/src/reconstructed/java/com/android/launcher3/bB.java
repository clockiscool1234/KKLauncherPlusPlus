package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class bB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f165a;
    private float c;
    private ValueAnimator d;
    private boolean e = true;
    private Object f = null;
    private float b = 0.0f;

    public bB(View view, long j, float f, float f2) {
        this.d = C0082cw.a(0.0f, f2).setDuration(j);
        this.f165a = j;
        this.c = f2;
        this.d.addListener(new bC(this));
    }

    private void a(int i) {
        long currentPlayTime = this.d.getCurrentPlayTime();
        float f = i == 1 ? this.c : this.b;
        float fFloatValue = this.e ? this.b : ((Float) this.d.getAnimatedValue()).floatValue();
        this.d.cancel();
        this.d.setDuration(Math.max(0L, Math.min(this.f165a - currentPlayTime, this.f165a)));
        this.d.setFloatValues(fFloatValue, f);
        this.d.start();
        this.e = false;
    }

    public final void a() {
        a(1);
    }

    public final void a(Object obj) {
        this.f = obj;
    }

    public final void b() {
        a(2);
    }

    public final Object c() {
        return this.f;
    }

    public final ValueAnimator d() {
        return this.d;
    }
}
