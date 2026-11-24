package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class S {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f107a;
    private boolean b;
    private T c;

    public S(View view) {
        this.f107a = view;
    }

    public final void a() {
        this.b = false;
        if (this.c == null) {
            this.c = new T(this);
        }
        this.f107a.postDelayed(this.c, cB.a().l());
    }

    public final void b() {
        this.b = false;
        if (this.c != null) {
            this.f107a.removeCallbacks(this.c);
            this.c = null;
        }
    }

    public final boolean c() {
        return this.b;
    }
}
