package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewIcon extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ej f102a;
    private boolean b;
    private Bitmap c;

    public PagedViewIcon(Context context) {
        this(context, null);
    }

    public PagedViewIcon(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedViewIcon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = false;
    }

    public final void a() {
        this.b = true;
    }

    public final void a(d c0086d, ej interfaceC0122ej) {
        al c0017alA = cB.a().i().a();
        this.c = c0086d.b;
        this.f102a = interfaceC0122ej;
        Drawable drawableA = eI.a(this.c);
        float fN = AppCustomizationManager.iconSizeScale(getContext());
        drawableA.setBounds(0, 0, (int) (c0017alA.t * fN), (int) (fN * c0017alA.t));
        setCompoundDrawables(null, drawableA, null, null);
        setCompoundDrawablePadding(c0017alA.q);
        setText(c0086d.q);
        setTag(c0086d);
    }

    public final void refreshIcon(bw iconCache) {
        Object tag = getTag();
        if (tag instanceof d) {
            d app = (d) tag;
            if (app.a != null) {
                app.b = iconCache.a(app.a);
                a(app, this.f102a);
            }
        }
    }

    public final void b() {
        this.b = false;
        post(new ei(this));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (getCurrentTextColor() == getResources().getColor(android.R.color.transparent)) {
            getPaint().clearShadowLayer();
            super.draw(canvas);
            return;
        }
        getPaint().setShadowLayer(4.0f, 0.0f, 2.0f, -587202560);
        super.draw(canvas);
        canvas.save();
        canvas.clipRect(getScrollX(), getScrollY() + getExtendedPaddingTop(), getScrollX() + getWidth(), getScrollY() + getHeight(), Region.Op.INTERSECT);
        getPaint().setShadowLayer(1.75f, 0.0f, 0.0f, -872415232);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (!isPressed()) {
            if (this.b) {
                return;
            }
            setAlpha(1.0f);
        } else {
            setAlpha(0.4f);
            if (this.f102a != null) {
                this.f102a.a(this);
            }
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setTextSize(0, cB.a().i().a().u);
    }
}
