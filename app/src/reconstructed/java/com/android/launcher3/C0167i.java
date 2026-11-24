package com.android.launcher3;

import android.content.Context;

/* JADX INFO: renamed from: com.android.launcher3.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0167i extends CellLayout implements dV {
    public C0167i(Context context) {
        super(context);
    }

    @Override // com.android.launcher3.dV
    public final void a() {
        removeAllViews();
        setLayerType(0, null);
    }

    @Override // com.android.launcher3.dV
    public final int b() {
        return getChildCount();
    }

    public final void c() {
        C0136ex c0136exQ = q();
        int childCount = c0136exQ.getChildCount();
        for (int i = 0; i < childCount; i++) {
            c0136exQ.getChildAt(i).setOnKeyListener(null);
        }
    }
}
