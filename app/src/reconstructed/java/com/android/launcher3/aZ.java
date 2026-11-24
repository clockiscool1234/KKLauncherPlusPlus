package com.android.launcher3;

import android.widget.ScrollView;

/* JADX INFO: loaded from: classes.dex */
public final class aZ extends a.a.a.e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScrollView f142a;

    public aZ(ScrollView scrollView) {
        super(scrollView);
        this.f142a = scrollView;
        b(0);
        a(1);
        b(true);
        a(1500.0f, 1500.0f);
        d(0);
        c(0);
    }

    @Override // a.a.a.e.a
    public final void a(int i, int i2) {
        this.f142a.scrollBy(i, i2);
    }

    @Override // a.a.a.e.a
    public final boolean e(int i) {
        return this.f142a.canScrollVertically(i);
    }
}
