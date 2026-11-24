package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class Hotseat extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CellLayout f88a;
    private Launcher b;
    private int c;
    private boolean d;
    private boolean e;

    public Hotseat(Context context) {
        this(context, null);
    }

    public Hotseat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Hotseat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = context.getResources().getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        this.e = context.getResources().getConfiguration().orientation == 2;
    }

    private boolean c() {
        return this.e && this.d;
    }

    final int a(int i) {
        if (c()) {
            return 0;
        }
        return i;
    }

    final int a(int i, int i2) {
        return c() ? (this.f88a.l() - i2) - 1 : i;
    }

    final CellLayout a() {
        return this.f88a;
    }

    public final void a(Launcher launcher) {
        this.b = launcher;
        setOnKeyListener(new ViewOnKeyListenerC0054bv());
    }

    final int b(int i) {
        if (c()) {
            return this.f88a.l() - (i + 1);
        }
        return 0;
    }

    final Rect b(int i, int i2) {
        Rect rect = new Rect();
        this.f88a.a(i, i2, 1, 1, rect);
        int[] iArr = new int[2];
        eI.a(this, this.b.g(), iArr, false);
        rect.offset(iArr[0], iArr[1]);
        rect.offset((int) Math.max(0.0f, (rect.width() - this.f88a.q().a()) / 2.0f), (int) Math.max(0.0f, (rect.height() - this.f88a.q().b()) / 2.0f));
        return rect;
    }

    final void b() {
        this.f88a.removeAllViewsInLayout();
        if (cB.o()) {
            return;
        }
        Context context = getContext();
        TextView textView = (TextView) LayoutInflater.from(context).inflate(R.layout.all_apps_button, (ViewGroup) this.f88a, false);
        Drawable drawable = context.getResources().getDrawable(R.drawable.all_apps_button_icon);
        eI.a(drawable);
        textView.setCompoundDrawables(null, drawable, null, null);
        textView.setContentDescription(context.getString(R.string.all_apps_button_label));
        if (this.b != null) {
            textView.setOnTouchListener(this.b.s());
        }
        textView.setOnClickListener(new ViewOnClickListenerC0053bu(this));
        CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(a(this.c), b(this.c), 1, 1);
        layoutParams.j = false;
        this.f88a.a((View) textView, -1, 0, layoutParams, true);
    }

    public final boolean c(int i) {
        return !cB.o() && i == this.c;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C0017al c0017alA = cB.a().i().a();
        this.c = c0017alA.D;
        this.f88a = (CellLayout) findViewById(R.id.layout);
        if (!c0017alA.f || c0017alA.h) {
            this.f88a.b((int) c0017alA.e, 1);
        } else {
            this.f88a.b(1, (int) c0017alA.e);
        }
        this.f88a.f(true);
        b();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.b.h().aj();
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f88a.setOnLongClickListener(onLongClickListener);
    }
}
