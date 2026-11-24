package com.android.launcher3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class BubbleTextView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f72a;
    private C0051bs b;
    private final Canvas c;
    private final Rect d;
    private boolean e;
    private Bitmap f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private boolean m;
    private Drawable n;
    private boolean o;
    private S p;

    public BubbleTextView(Context context) {
        super(context);
        this.f72a = -1;
        this.c = new Canvas();
        this.d = new Rect();
        this.l = true;
        d();
    }

    public BubbleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f72a = -1;
        this.c = new Canvas();
        this.d = new Rect();
        this.l = true;
        d();
    }

    public BubbleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f72a = -1;
        this.c = new Canvas();
        this.d = new Rect();
        this.l = true;
        d();
    }

    private Bitmap a(Canvas canvas, int i, int i2) {
        int i3 = this.b.f204a;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth() + i3, getHeight() + i3, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        Rect rect = this.d;
        getDrawingRect(rect);
        rect.bottom = (getExtendedPaddingTop() - 3) + getLayout().getLineTop(0);
        canvas.save();
        canvas.scale(getScaleX(), getScaleY(), (getWidth() + i3) / 2, (getHeight() + i3) / 2);
        canvas.translate((-getScrollX()) + (i3 / 2), (i3 / 2) + (-getScrollY()));
        canvas.clipRect(rect, Region.Op.REPLACE);
        draw(canvas);
        canvas.restore();
        this.b.a(bitmapCreateBitmap, canvas, i2, i, 2);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    private void d() {
        this.p = new S(this);
        this.n = getBackground();
        this.b = C0051bs.a(getContext());
        int color = getContext().getResources().getColor(R.color.outline_color);
        this.j = color;
        this.i = color;
        this.h = color;
        this.g = color;
        setShadowLayer(4.0f, 0.0f, 2.0f, -587202560);
    }

    private void e() {
        C0136ex c0136ex;
        if (!(getParent() instanceof C0136ex) || (c0136ex = (C0136ex) getParent()) == null) {
            return;
        }
        CellLayout cellLayout = (CellLayout) c0136ex.getParent();
        if (this.f == null) {
            this = null;
        }
        cellLayout.a(this);
    }

    final void a() {
        this.f = null;
        e();
    }

    public final void a(int i) {
        this.j = i;
        this.i = i;
        this.h = i;
        this.g = i;
    }

    public final void a(C0137ey c0137ey, C0055bw c0055bw) {
        Bitmap bitmapA = c0137ey.a(c0055bw);
        C0017al c0017alA = cB.a().i().a();
        setCompoundDrawables(null, eI.a(bitmapA), null, null);
        setCompoundDrawablePadding(c0017alA.q);
        setText(c0137ey.q);
        setTag(c0137ey);
    }

    final void a(boolean z) {
        this.o = z;
        if (!z) {
            this.f = null;
        }
        e();
    }

    final Bitmap b() {
        return this.f;
    }

    public final void b(boolean z) {
        this.l = false;
        getPaint().clearShadowLayer();
        invalidate();
    }

    final int c() {
        return this.b.f204a / 2;
    }

    public final void c(boolean z) {
        Resources resources = getResources();
        if (z) {
            super.setTextColor(this.k);
        } else {
            super.setTextColor(resources.getColor(android.R.color.transparent));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.p.b();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.l) {
            super.draw(canvas);
            return;
        }
        Drawable drawable = this.n;
        if (drawable != null) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            if (this.m) {
                drawable.setBounds(0, 0, getRight() - getLeft(), getBottom() - getTop());
                this.m = false;
            }
            if ((scrollX | scrollY) == 0) {
                drawable.draw(canvas);
            } else {
                canvas.translate(scrollX, scrollY);
                drawable.draw(canvas);
                canvas.translate(-scrollX, -scrollY);
            }
        }
        if (getCurrentTextColor() == getResources().getColor(android.R.color.transparent)) {
            getPaint().clearShadowLayer();
            super.draw(canvas);
            return;
        }
        getPaint().setShadowLayer(4.0f, 0.0f, 2.0f, -587202560);
        super.draw(canvas);
        canvas.save(2);
        canvas.clipRect(getScrollX(), getScrollY() + getExtendedPaddingTop(), getScrollX() + getWidth(), getScrollY() + getHeight(), Region.Op.INTERSECT);
        getPaint().setShadowLayer(1.75f, 0.0f, 0.0f, -872415232);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        if (!isPressed()) {
            boolean z = this.f == null;
            if (!this.o) {
                this.f = null;
            }
            if (isFocused()) {
                if (getLayout() == null) {
                    this.f = null;
                } else {
                    this.f = a(this.c, this.h, this.g);
                }
                this.o = false;
                e();
            }
            boolean z2 = this.f == null;
            if (!z && z2) {
                e();
            }
        } else if (!this.e) {
            e();
        }
        Drawable drawable = this.n;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
        super.drawableStateChanged();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.n != null) {
            this.n.setCallback(this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.n != null) {
            this.n.setCallback(null);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setTextSize(0, cB.a().i().a().p);
        setTextColor(getResources().getColor(R.color.workspace_icon_text_color));
    }

    @Override // android.view.View
    protected boolean onSetAlpha(int i) {
        if (this.f72a == i) {
            return true;
        }
        this.f72a = i;
        super.onSetAlpha(i);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        switch (motionEvent.getAction()) {
            case 0:
                if (this.f == null) {
                    this.f = a(this.c, this.j, this.i);
                }
                if (isPressed()) {
                    this.e = true;
                    e();
                } else {
                    this.e = false;
                }
                this.p.a();
                return zOnTouchEvent;
            case 1:
            case 3:
                if (!isPressed()) {
                    this.f = null;
                }
                this.p.b();
                return zOnTouchEvent;
            case 2:
            default:
                return zOnTouchEvent;
        }
    }

    @Override // android.widget.TextView
    protected boolean setFrame(int i, int i2, int i3, int i4) {
        if (getLeft() != i || getRight() != i3 || getTop() != i2 || getBottom() != i4) {
            this.m = true;
        }
        return super.setFrame(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        if (obj != null) {
            cO.a((bD) obj);
        }
        super.setTag(obj);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        this.k = i;
        super.setTextColor(i);
    }

    @Override // android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.n || super.verifyDrawable(drawable);
    }
}
