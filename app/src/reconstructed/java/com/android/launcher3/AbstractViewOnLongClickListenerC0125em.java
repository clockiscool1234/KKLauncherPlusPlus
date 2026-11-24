package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.em, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractViewOnLongClickListenerC0125em extends dX implements View.OnLongClickListener, View.OnTouchListener {
    private float O;
    private Launcher P;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f336a;
    private boolean b;
    private boolean c;

    public AbstractViewOnLongClickListenerC0125em(Context context) {
        this(context, null);
    }

    public AbstractViewOnLongClickListenerC0125em(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractViewOnLongClickListenerC0125em(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.P = (Launcher) context;
    }

    private void b() {
        this.b = false;
        this.f336a = null;
        this.c = false;
    }

    private void c(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                b();
                this.c = true;
                break;
            case 2:
                if (this.p != 1 && !this.b && this.c) {
                    a(motionEvent);
                    break;
                }
                break;
        }
    }

    protected void a(MotionEvent motionEvent) {
        int iFindPointerIndex = motionEvent.findPointerIndex(this.D);
        float x = motionEvent.getX(iFindPointerIndex);
        float y = motionEvent.getY(iFindPointerIndex);
        int iAbs = (int) Math.abs(x - this.n);
        int iAbs2 = (int) Math.abs(y - this.o);
        boolean z = iAbs2 > this.r;
        if ((((float) iAbs2) / ((float) iAbs) > this.O) && z && this.f336a != null) {
            b(this.f336a);
            if (this.K) {
                this.K = false;
                View viewC = c(this.i);
                if (viewC != null) {
                    viewC.cancelLongPress();
                }
            }
        }
    }

    @Override // com.android.launcher3.dX
    protected final void b(MotionEvent motionEvent) {
        if (this.b) {
            return;
        }
        super.b(motionEvent);
    }

    protected boolean b(View view) {
        boolean z = this.b;
        this.b = true;
        return !z;
    }

    public final void d(float f) {
        this.O = f;
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    @Override // com.android.launcher3.dX, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        c(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view.isInTouchMode() && this.k == -1 && this.P.w() && !this.P.h().aa() && this.P.d()) {
            return b(view);
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.f336a = view;
        this.c = true;
        return false;
    }

    @Override // com.android.launcher3.dX, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        c(motionEvent);
        return super.onTouchEvent(motionEvent);
    }
}
