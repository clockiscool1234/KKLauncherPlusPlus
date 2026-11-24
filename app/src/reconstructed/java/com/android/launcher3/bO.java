package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class bO implements View.OnTouchListener {
    bO(Launcher launcher) {
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) != 0) {
            return false;
        }
        view.performHapticFeedback(1);
        return false;
    }
}
