package com.android.a.c;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes.dex */
final class e extends f {
    public e(String str) {
        super(str);
    }

    @Override // com.android.a.c.f
    public final void a(int i) {
        this.f49a = GLES20.glGetAttribLocation(i, this.b);
        d.d();
    }
}
