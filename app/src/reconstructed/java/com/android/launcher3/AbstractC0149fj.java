package com.android.launcher3;

import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.fj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0149fj {
    protected View b;

    public final void a(View view) {
        this.b = view;
    }

    public void a(eS eSVar) {
    }

    public final void a(CharSequence charSequence) {
        if (b()) {
            this.b.setContentDescription(charSequence);
        }
    }

    public boolean a() {
        return false;
    }

    public void b(eS eSVar) {
    }

    public boolean b() {
        return false;
    }

    public void c(eS eSVar) {
    }
}
