package com.android.a.c;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f50a = new int[1];

    public int a() {
        GLES20.glGenTextures(1, this.f50a, 0);
        d.d();
        return this.f50a[0];
    }

    public void a(int i, int[] iArr, int i2) {
        GLES20.glGenBuffers(1, iArr, 0);
        d.d();
    }
}
