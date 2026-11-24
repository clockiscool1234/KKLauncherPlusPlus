package com.android.b.a;

import android.opengl.GLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
final class j implements GLSurfaceView.Renderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.android.a.c.d f61a;
    private /* synthetic */ f b;

    private j(f fVar) {
        this.b = fVar;
    }

    /* synthetic */ j(f fVar, byte b) {
        this(fVar);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        Runnable runnable;
        com.android.a.c.d dVar = this.f61a;
        com.android.a.c.d.c();
        synchronized (this.b.f57a) {
            runnable = this.b.b.f;
            this.b.b.g.a(this.b.b.e, this.b.b.d);
            this.b.b.g.a(this.b.b.b, this.b.b.c, this.b.b.f60a);
        }
        if (!this.b.b.g.a(this.f61a) || runnable == null) {
            return;
        }
        synchronized (this.b.f57a) {
            if (this.b.b.f == runnable) {
                this.b.b.f = null;
            }
        }
        if (runnable != null) {
            this.b.post(runnable);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.f61a.a(i, i2);
        this.b.b.g.a(i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        this.f61a = new com.android.a.c.d();
        com.android.a.c.a.k();
        this.b.b.g.a(this.b.b.e, this.b.b.d);
    }
}
