package com.android.launcher3;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.android.launcher3.bc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0035bc implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ FolderIcon f190a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ float c;
    private final /* synthetic */ C0042bj d;
    private final /* synthetic */ float e;

    C0035bc(FolderIcon folderIcon, boolean z, float f, C0042bj c0042bj, float f2) {
        this.f190a = folderIcon;
        this.b = z;
        this.c = f;
        this.d = c0042bj;
        this.e = f2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (this.b) {
            fFloatValue = 1.0f - fFloatValue;
            this.f190a.h.setAlpha(fFloatValue);
        }
        this.f190a.u.f197a = this.c + ((this.d.f197a - this.c) * fFloatValue);
        this.f190a.u.b = this.e + ((this.d.b - this.e) * fFloatValue);
        this.f190a.u.c = (fFloatValue * (this.d.c - 1.0f)) + 1.0f;
        this.f190a.invalidate();
    }
}
