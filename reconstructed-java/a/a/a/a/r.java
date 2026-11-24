package a.a.a.a;

import android.view.animation.Animation;

/* JADX INFO: loaded from: classes.dex */
final class r implements Animation.AnimationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ ComponentCallbacksC0004e f13a;
    private /* synthetic */ p b;

    r(p pVar, ComponentCallbacksC0004e componentCallbacksC0004e) {
        this.b = pVar;
        this.f13a = componentCallbacksC0004e;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        if (this.f13a.b != null) {
            this.f13a.b = null;
            this.b.a(this.f13a, this.f13a.c, 0, 0, false);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
