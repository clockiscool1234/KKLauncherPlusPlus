package com.android.launcher3;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.bv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewOnKeyListenerC0054bv implements View.OnKeyListener {
    ViewOnKeyListenerC0054bv() {
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        int i2 = view.getResources().getConfiguration().orientation;
        return C0032b.c(view, i, keyEvent);
    }
}
