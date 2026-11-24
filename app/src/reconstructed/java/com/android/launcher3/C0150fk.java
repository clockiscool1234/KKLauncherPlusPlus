package com.android.launcher3;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LevelListDrawable;

/* JADX INFO: renamed from: com.android.launcher3.fk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0150fk extends LevelListDrawable {
    public C0150fk(Drawable drawable) {
        addLevel(0, 0, drawable);
        setLevel(0);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        rect.set(0, 0, 0, 0);
        return true;
    }
}
