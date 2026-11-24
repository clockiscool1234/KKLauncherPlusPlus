package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class CheckableFrameLayout extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f75a = {android.R.attr.state_checked};
    private boolean b;

    public CheckableFrameLayout(Context context) {
        super(context);
    }

    public CheckableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(iArrOnCreateDrawableState, f75a);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z != this.b) {
            this.b = z;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.b);
    }
}
