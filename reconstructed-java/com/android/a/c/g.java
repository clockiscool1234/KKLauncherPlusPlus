package com.android.a.c;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes.dex */
final class g extends f {
    public g(String str) {
        super(str);
    }

    @Override // com.android.a.c.f
    public final void a(int i) {
        this.f49a = GLES20.glGetUniformLocation(i, this.b);
        d.d();
    }
}
