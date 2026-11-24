package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class HolographicLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final C0052bt f87a;
    private ImageView b;
    private int c;
    private boolean d;
    private boolean e;
    private boolean f;

    public HolographicLinearLayout(Context context) {
        this(context, null);
    }

    public HolographicLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HolographicLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, nl.ndsc.kitkatlauncher.A.g, i, 0);
        this.c = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        this.d = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        this.f87a = new C0052bt(context);
        setOnTouchListener(new ViewOnTouchListenerC0049bq(this));
        setOnFocusChangeListener(new ViewOnFocusChangeListenerC0050br(this));
    }

    final void a() {
        this.f87a.b(this.b);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.b != null) {
            this.f87a.a(this.b);
            Drawable drawable = this.b.getDrawable();
            if (drawable instanceof StateListDrawable) {
                StateListDrawable stateListDrawable = (StateListDrawable) drawable;
                stateListDrawable.setState(getDrawableState());
                stateListDrawable.invalidateSelf();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.d) {
            mergeDrawableStates(iArrOnCreateDrawableState, new int[]{R.attr.stateHotwordOn});
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.b == null) {
            this.b = (ImageView) findViewById(this.c);
        }
        this.f87a.a(this.b);
    }
}
