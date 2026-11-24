package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: renamed from: com.android.launcher3.ak, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0016ak implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DragLayer f152a;
    private PointF b;
    private Rect c;
    private long d;
    private boolean e;
    private float f;
    private final TimeInterpolator g = new DecelerateInterpolator(0.75f);

    public C0016ak(DragLayer dragLayer, PointF pointF, Rect rect, long j, float f) {
        this.f152a = dragLayer;
        this.b = pointF;
        this.c = rect;
        this.d = j;
        this.f = 1.0f - (dragLayer.getResources().getDisplayMetrics().density * f);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        aA aAVar = (aA) this.f152a.c();
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (!this.e) {
            this.e = true;
            float scaleX = aAVar.getScaleX();
            float measuredWidth = ((scaleX - 1.0f) * aAVar.getMeasuredWidth()) / 2.0f;
            float measuredHeight = ((scaleX - 1.0f) * aAVar.getMeasuredHeight()) / 2.0f;
            Rect rect = this.c;
            rect.left = (int) (measuredWidth + rect.left);
            Rect rect2 = this.c;
            rect2.top = (int) (measuredHeight + rect2.top);
        }
        Rect rect3 = this.c;
        rect3.left = (int) (rect3.left + ((this.b.x * (jCurrentAnimationTimeMillis - this.d)) / 1000.0f));
        Rect rect4 = this.c;
        rect4.top = (int) (rect4.top + ((this.b.y * (jCurrentAnimationTimeMillis - this.d)) / 1000.0f));
        aAVar.setTranslationX(this.c.left);
        aAVar.setTranslationY(this.c.top);
        aAVar.setAlpha(1.0f - this.g.getInterpolation(fFloatValue));
        this.b.x *= this.f;
        this.b.y *= this.f;
        this.d = jCurrentAnimationTimeMillis;
    }
}
