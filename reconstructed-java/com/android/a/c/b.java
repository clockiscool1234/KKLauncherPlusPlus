package com.android.a.c;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public final class b extends k {
    private Bitmap e;

    public b(Bitmap bitmap) {
        this(bitmap, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private b(Bitmap bitmap, boolean z) {
        super(false);
        boolean z2 = false;
        if (bitmap != null && !bitmap.isRecycled()) {
            z2 = true;
        }
        if (!z2) {
            throw new AssertionError();
        }
        this.e = bitmap;
    }

    @Override // com.android.a.c.k
    protected final void a(Bitmap bitmap) {
    }

    @Override // com.android.a.c.k
    protected final Bitmap a_() {
        return this.e;
    }
}
