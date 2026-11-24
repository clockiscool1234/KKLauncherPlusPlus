package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0179u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizeTabHost f405a;
    private final /* synthetic */ EnumC0176r b;
    private final /* synthetic */ int c;

    RunnableC0179u(AppsCustomizeTabHost appsCustomizeTabHost, EnumC0176r enumC0176r, int i) {
        this.f405a = appsCustomizeTabHost;
        this.b = enumC0176r;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f405a.d.getMeasuredWidth() <= 0 || this.f405a.d.getMeasuredHeight() <= 0) {
            AppsCustomizeTabHost.d(this.f405a);
            return;
        }
        int[] iArr = new int[2];
        this.f405a.d.b(iArr);
        if (iArr[0] == -1 && iArr[1] == -1) {
            AppsCustomizeTabHost.d(this.f405a);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = iArr[0]; i <= iArr[1]; i++) {
            arrayList.add(this.f405a.d.c(i));
        }
        this.f405a.e.scrollTo(this.f405a.d.getScrollX(), 0);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            View view = (View) arrayList.get(size);
            if (view instanceof C0167i) {
                ((C0167i) view).c();
            } else if (view instanceof C0120eh) {
                ((C0120eh) view).e();
            }
            PagedViewWidget.a(false);
            this.f405a.d.removeView(view);
            PagedViewWidget.a(true);
            this.f405a.e.setAlpha(1.0f);
            this.f405a.e.setVisibility(0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight());
            layoutParams.setMargins(view.getLeft(), view.getTop(), 0, 0);
            this.f405a.e.addView(view, layoutParams);
        }
        AppsCustomizeTabHost.f(this.f405a);
        this.f405a.d(this.b);
        ObjectAnimator objectAnimatorA = C0082cw.a(this.f405a.e, "alpha", 0.0f);
        objectAnimatorA.addListener(new C0180v(this));
        ObjectAnimator objectAnimatorA2 = C0082cw.a(this.f405a.d, "alpha", 1.0f);
        objectAnimatorA2.addListener(new C0181w(this));
        AnimatorSet animatorSetB = C0082cw.b();
        animatorSetB.playTogether(objectAnimatorA, objectAnimatorA2);
        animatorSetB.setDuration(this.c);
        animatorSetB.start();
    }
}
