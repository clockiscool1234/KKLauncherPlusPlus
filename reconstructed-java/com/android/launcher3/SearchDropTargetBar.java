package com.android.launcher3;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class SearchDropTargetBar extends FrameLayout implements InterfaceC0022aq {
    private static final AccelerateInterpolator c = new AccelerateInterpolator();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ObjectAnimator f108a;
    private ObjectAnimator b;
    private boolean d;
    private View e;
    private View f;
    private E g;
    private E h;
    private int i;
    private boolean j;
    private Drawable k;
    private boolean l;

    public SearchDropTargetBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchDropTargetBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = false;
    }

    private void a(ObjectAnimator objectAnimator, View view) {
        objectAnimator.setInterpolator(c);
        objectAnimator.setDuration(200L);
        objectAnimator.addListener(new C0135ew(this, view));
    }

    public static int b() {
        return 200;
    }

    public final void a() {
        this.f.setLayerType(2, null);
        this.f108a.reverse();
        this.e.setLayerType(2, null);
        this.b.reverse();
    }

    public final void a(Launcher launcher, C0021ap c0021ap) {
        c0021ap.a((InterfaceC0022aq) this);
        c0021ap.a((InterfaceC0022aq) this.g);
        c0021ap.a((InterfaceC0022aq) this.h);
        c0021ap.a((aF) this.g);
        c0021ap.a((aF) this.h);
        c0021ap.c(this.h);
        this.g.a(launcher);
        this.h.a(launcher);
        this.e = launcher.z();
        if (this.l) {
            this.b = C0082cw.a(this.e, "translationY", 0.0f, -this.i);
        } else {
            this.b = C0082cw.a(this.e, "alpha", 1.0f, 0.0f);
        }
        a(this.b, this.e);
    }

    @Override // com.android.launcher3.InterfaceC0022aq
    public final void a(InterfaceC0031az interfaceC0031az, Object obj) {
        this.f.setLayerType(2, null);
        this.f108a.start();
        if (this.d) {
            return;
        }
        this.e.setLayerType(2, null);
        this.b.start();
    }

    public final void a(boolean z) {
        boolean z2 = this.b.isRunning() && !z;
        if (this.d || z2) {
            if (z) {
                this.e.setLayerType(2, null);
                this.b.reverse();
            } else {
                this.b.cancel();
                if (this.l) {
                    this.e.setTranslationY(0.0f);
                } else {
                    this.e.setAlpha(1.0f);
                }
            }
            this.d = false;
        }
    }

    public final void a(boolean z, boolean z2) {
        if (this.e != null) {
            Drawable background = this.e.getBackground();
            if (background != null && !z && !z2) {
                this.k = background;
                this.e.setBackgroundResource(0);
            } else if (this.k != null) {
                if (z || z2) {
                    this.e.setBackground(this.k);
                }
            }
        }
    }

    public final void b(boolean z) {
        boolean z2 = this.b.isRunning() && !z;
        if (!this.d || z2) {
            if (z) {
                this.e.setLayerType(2, null);
                this.b.start();
            } else {
                this.b.cancel();
                if (this.l) {
                    this.e.setTranslationY(-this.i);
                } else {
                    this.e.setAlpha(0.0f);
                }
            }
            this.d = true;
        }
    }

    @Override // com.android.launcher3.InterfaceC0022aq
    public final void c() {
        if (this.j) {
            this.j = false;
            return;
        }
        this.f.setLayerType(2, null);
        this.f108a.reverse();
        if (this.d) {
            return;
        }
        this.e.setLayerType(2, null);
        this.b.reverse();
    }

    public final void d() {
        this.j = true;
    }

    public final Rect e() {
        if (this.e == null) {
            return null;
        }
        int[] iArr = new int[2];
        this.e.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = iArr[0] + this.e.getWidth();
        rect.bottom = iArr[1] + this.e.getHeight();
        return rect;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f = findViewById(R.id.drag_target_bar);
        this.g = (E) this.f.findViewById(R.id.info_target_text);
        this.h = (E) this.f.findViewById(R.id.delete_target_text);
        this.g.a(this);
        this.h.a(this);
        this.l = getResources().getBoolean(R.bool.config_useDropTargetDownTransition);
        if (this.l) {
            this.i = cB.a().i().a().G;
            this.f.setTranslationY(-this.i);
            this.f108a = C0082cw.a(this.f, "translationY", -this.i, 0.0f);
        } else {
            this.f.setAlpha(0.0f);
            this.f108a = C0082cw.a(this.f, "alpha", 0.0f, 1.0f);
        }
        a(this.f108a, this.f);
    }
}
