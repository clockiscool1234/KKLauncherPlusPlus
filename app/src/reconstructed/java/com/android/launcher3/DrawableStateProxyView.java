package com.android.launcher3;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class DrawableStateProxyView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f79a;
    private int b;

    public DrawableStateProxyView(Context context) {
        this(context, null);
    }

    public DrawableStateProxyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableStateProxyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.d, i, 0);
        this.b = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f79a == null) {
            this.f79a = ((View) getParent()).findViewById(this.b);
        }
        if (this.f79a != null) {
            this.f79a.setPressed(isPressed());
            this.f79a.setHovered(isHovered());
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return false;
    }
}
