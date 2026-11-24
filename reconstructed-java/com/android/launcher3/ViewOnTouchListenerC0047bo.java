package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ViewOnTouchListenerC0047bo implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ HolographicImageView f200a;

    ViewOnTouchListenerC0047bo(HolographicImageView holographicImageView) {
        this.f200a = holographicImageView;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f200a.isPressed() == this.f200a.c) {
            return false;
        }
        this.f200a.c = this.f200a.isPressed();
        this.f200a.refreshDrawableState();
        return false;
    }
}
