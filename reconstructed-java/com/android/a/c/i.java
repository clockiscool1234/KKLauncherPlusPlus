package com.android.a.c;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class i extends a {
    private final boolean e;

    @Override // com.android.a.c.a
    public final boolean a() {
        return false;
    }

    @Override // com.android.a.c.a
    protected final boolean b(c cVar) {
        if (i()) {
            return true;
        }
        Log.w("RawTexture", "lost the content due to context change");
        return false;
    }

    @Override // com.android.a.c.a
    protected final int h() {
        return 3553;
    }

    @Override // com.android.a.c.j
    public final boolean l() {
        return this.e;
    }
}
