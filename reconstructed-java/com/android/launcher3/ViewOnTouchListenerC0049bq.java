package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.bq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewOnTouchListenerC0049bq implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ HolographicLinearLayout f202a;

    ViewOnTouchListenerC0049bq(HolographicLinearLayout holographicLinearLayout) {
        this.f202a = holographicLinearLayout;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f202a.isPressed() == this.f202a.e) {
            return false;
        }
        this.f202a.e = this.f202a.isPressed();
        this.f202a.refreshDrawableState();
        return false;
    }
}
