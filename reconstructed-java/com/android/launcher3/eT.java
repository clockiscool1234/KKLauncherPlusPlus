package com.android.launcher3;

import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes.dex */
final class eT implements Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ eS f320a;
    private ViewPropertyAnimator b;

    eT(eS eSVar) {
        this.f320a = eSVar;
    }

    @Override // com.android.launcher3.Z
    public final void a() {
        if (this.b != null) {
            this.b.cancel();
        }
        if (this.f320a.g.getAlpha() == 1.0f) {
            this.f320a.d = true;
        }
        this.b = this.f320a.g.animate();
        this.b.alpha(0.0f).setDuration(150L).withEndAction(new eU(this));
        this.b.setInterpolator(new AccelerateInterpolator(0.75f));
        this.b.start();
    }

    @Override // com.android.launcher3.Z
    public final void b() {
        boolean z = this.f320a.d;
        this.f320a.d = false;
        if (z) {
            return;
        }
        if (this.b != null) {
            this.b.cancel();
        }
        this.f320a.g.setVisibility(0);
        this.b = this.f320a.g.animate();
        this.b.alpha(1.0f).setDuration(150L).setInterpolator(new DecelerateInterpolator(0.75f));
        this.b.start();
    }

    @Override // com.android.launcher3.Z
    public final void c() {
        this.f320a.d = false;
    }
}
