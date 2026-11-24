package com.android.b.a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Choreographer;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class f extends FrameLayout {
    private static final boolean c;
    private static final boolean d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Object f57a;
    protected i b;
    private GLSurfaceView e;
    private boolean f;
    private Choreographer.FrameCallback g;

    static {
        c = Build.VERSION.SDK_INT >= 16;
        d = Build.VERSION.SDK_INT >= 16;
    }

    public f(Context context) {
        this(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        byte b = 0;
        this.f = false;
        this.f57a = new Object();
        new g(this);
        new RectF();
        if (c) {
            this.b = new i();
            this.b.g = new a(this);
            this.e = new GLSurfaceView(context);
            this.e.setEGLContextClientVersion(2);
            this.e.setRenderer(new j(this, b));
            this.e.setRenderMode(0);
            addView(this.e, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    private void a(i iVar) {
        if (iVar == null || iVar.e == null || iVar.f60a > 0.0f || getWidth() == 0) {
            return;
        }
        iVar.f60a = Math.min(getWidth() / iVar.e.b(), getHeight() / iVar.e.c());
    }

    public void a(e eVar, Runnable runnable) {
        if (c) {
            synchronized (this.f57a) {
                this.b.e = eVar;
                this.b.f = runnable;
                this.b.b = eVar != null ? eVar.b() / 2 : 0;
                this.b.c = eVar != null ? eVar.c() / 2 : 0;
                this.b.d = eVar != null ? eVar.d() : 0;
                this.b.f60a = 0.0f;
                a(this.b);
            }
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (c) {
            super.dispatchDraw(canvas);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        if (c) {
            if (!d) {
                this.e.requestRender();
            } else {
                if (this.f) {
                    return;
                }
                this.f = true;
                if (this.g == null) {
                    this.g = new h(this);
                }
                Choreographer.getInstance().postFrameCallback(this.g);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (c) {
            synchronized (this.f57a) {
                a(this.b);
            }
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        if (c) {
            super.setTranslationX(f);
        }
    }
}
