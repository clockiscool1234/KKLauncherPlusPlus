package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ScrimView extends FrameLayout implements InterfaceC0058bz {
    public ScrimView(Context context) {
        this(context, null, 0);
    }

    public ScrimView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.android.launcher3.InterfaceC0058bz
    public final void a_(Rect rect) {
    }
}
