package com.android.launcher3;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FolderIcon extends FrameLayout implements InterfaceC0044bl {
    boolean b;
    private Launcher c;
    private Folder d;
    private C0043bk e;
    private S g;
    private ImageView h;
    private BubbleTextView i;
    private C0037be j;
    private int k;
    private float l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private float r;
    private Rect s;
    private C0042bj t;
    private C0042bj u;
    private ArrayList v;
    private RunnableC0005a w;
    private bD x;
    private dU y;
    private static boolean f = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Drawable f83a = null;

    public FolderIcon(Context context) {
        super(context);
        this.j = null;
        this.o = -1;
        this.b = false;
        this.s = new Rect();
        this.t = new C0042bj(this, 0.0f, 0.0f, 0.0f, 0);
        this.u = new C0042bj(this, 0.0f, 0.0f, 0.0f, 0);
        this.v = new ArrayList();
        this.w = new RunnableC0005a();
        this.y = new C0033ba(this);
        f();
    }

    public FolderIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = null;
        this.o = -1;
        this.b = false;
        this.s = new Rect();
        this.t = new C0042bj(this, 0.0f, 0.0f, 0.0f, 0);
        this.u = new C0042bj(this, 0.0f, 0.0f, 0.0f, 0);
        this.v = new ArrayList();
        this.w = new RunnableC0005a();
        this.y = new C0033ba(this);
        f();
    }

    static FolderIcon a(int i, Launcher launcher, ViewGroup viewGroup, C0043bk c0043bk) {
        C0017al c0017alA = cB.a().i().a();
        FolderIcon folderIcon = (FolderIcon) LayoutInflater.from(launcher).inflate(R.layout.folder_icon, viewGroup, false);
        folderIcon.setClipToPadding(false);
        folderIcon.i = (BubbleTextView) folderIcon.findViewById(R.id.folder_icon_name);
        folderIcon.i.setText(c0043bk.q);
        folderIcon.i.setCompoundDrawablePadding(0);
        ((FrameLayout.LayoutParams) folderIcon.i.getLayoutParams()).topMargin = c0017alA.o + c0017alA.q;
        folderIcon.h = (ImageView) folderIcon.findViewById(R.id.preview_background);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) folderIcon.h.getLayoutParams();
        layoutParams.topMargin = c0017alA.v;
        layoutParams.width = c0017alA.w;
        layoutParams.height = c0017alA.w;
        folderIcon.setTag(c0043bk);
        folderIcon.setOnClickListener(launcher);
        folderIcon.e = c0043bk;
        folderIcon.c = launcher;
        folderIcon.setContentDescription(String.format(launcher.getString(R.string.folder_name_format), c0043bk.q));
        Folder folderA = Folder.a(launcher);
        folderA.a(launcher.q());
        folderA.a(folderIcon);
        folderA.a(c0043bk);
        folderIcon.d = folderA;
        folderIcon.j = new C0037be(launcher, folderIcon);
        c0043bk.a(folderIcon);
        return folderIcon;
    }

    private C0042bj a(int i, C0042bj c0042bj) {
        float f2 = ((3 - i) - 1) / 2.0f;
        float f3 = 1.0f - (0.35f * (1.0f - f2));
        float f4 = (1.0f - f2) * this.r;
        float f5 = this.m * f3;
        float f6 = (1.0f - f3) * this.m;
        float paddingTop = (this.n - ((f5 + f4) + f6)) + getPaddingTop();
        float f7 = f4 + f6;
        float f8 = this.l * f3;
        int i2 = (int) ((1.0f - f2) * 80.0f);
        if (c0042bj == null) {
            return new C0042bj(this, f7, paddingTop, f8, i2);
        }
        c0042bj.f197a = f7;
        c0042bj.b = paddingTop;
        c0042bj.c = f8;
        c0042bj.d = i2;
        return c0042bj;
    }

    private void a(int i, int i2) {
        if (this.k == i && this.o == i2) {
            return;
        }
        C0017al c0017alA = cB.a().i().a();
        this.k = i;
        this.o = i2;
        int i3 = this.h.getLayoutParams().height;
        int i4 = C0037be.i;
        this.n = i3 - (i4 * 2);
        this.l = (((int) ((this.n / 2) * 1.8f)) * 1.0f) / ((int) (this.k * 1.24f));
        this.m = (int) (this.k * this.l);
        this.r = this.m * 0.24f;
        this.p = (this.o - this.n) / 2;
        this.q = c0017alA.v + i4;
    }

    private void a(Canvas canvas, C0042bj c0042bj) {
        canvas.save();
        canvas.translate(c0042bj.f197a + this.p, c0042bj.b + this.q);
        canvas.scale(c0042bj.c, c0042bj.c);
        Drawable drawable = c0042bj.e;
        if (drawable != null) {
            this.s.set(drawable.getBounds());
            drawable.setBounds(0, 0, this.k, this.k);
            drawable.setColorFilter(Color.argb(c0042bj.d, 255, 255, 255), PorterDuff.Mode.SRC_ATOP);
            drawable.draw(canvas);
            drawable.clearColorFilter();
            drawable.setBounds(this.s);
        }
        canvas.restore();
    }

    private void a(Drawable drawable) {
        a(drawable.getIntrinsicWidth(), getMeasuredWidth());
    }

    private void a(Drawable drawable, int i, boolean z, Runnable runnable) {
        C0042bj c0042bjA = a(0, (C0042bj) null);
        float intrinsicWidth = (this.n - drawable.getIntrinsicWidth()) / 2;
        float intrinsicHeight = ((this.n - drawable.getIntrinsicHeight()) / 2) + getPaddingTop();
        this.u.e = drawable;
        ValueAnimator valueAnimatorA = C0082cw.a(0.0f, 1.0f);
        valueAnimatorA.addUpdateListener(new C0035bc(this, z, intrinsicWidth, c0042bjA, intrinsicHeight));
        valueAnimatorA.addListener(new C0036bd(this, runnable));
        valueAnimatorA.setDuration(i);
        valueAnimatorA.start();
    }

    private void a(C0137ey c0137ey, aA aAVar, Rect rect, float f2, int i, Runnable runnable) {
        Rect rect2;
        c0137ey.j = -1;
        c0137ey.k = -1;
        if (aAVar == null) {
            a(c0137ey);
            return;
        }
        DragLayer dragLayerG = this.c.g();
        Rect rect3 = new Rect();
        dragLayerG.b(aAVar, rect3);
        if (rect == null) {
            rect2 = new Rect();
            Workspace workspaceH = this.c.h();
            getParent().getParent();
            workspaceH.aq();
            float scaleX = getScaleX();
            float scaleY = getScaleY();
            setScaleX(1.0f);
            setScaleY(1.0f);
            f2 = dragLayerG.a(this, rect2);
            setScaleX(scaleX);
            setScaleY(scaleY);
            getParent().getParent();
            workspaceH.ar();
        } else {
            rect2 = rect;
        }
        this.t = a(Math.min(3, i), this.t);
        this.t.f197a += this.p;
        this.t.b += this.q;
        int[] iArr = {Math.round(this.t.f197a + ((this.t.c * this.k) / 2.0f)), Math.round(this.t.b + ((this.t.c * this.k) / 2.0f))};
        float f3 = this.t.c;
        iArr[0] = Math.round(iArr[0] * f2);
        iArr[1] = Math.round(iArr[1] * f2);
        rect2.offset(iArr[0] - (aAVar.getMeasuredWidth() / 2), iArr[1] - (aAVar.getMeasuredHeight() / 2));
        float f4 = f3 * f2;
        dragLayerG.a(aAVar, rect3, rect2, i < 3 ? 0.5f : 0.0f, 1.0f, 1.0f, f4, f4, 400, new DecelerateInterpolator(2.0f), new AccelerateInterpolator(2.0f), runnable, 0, (View) null);
        a(c0137ey);
        this.v.add(c0137ey);
        this.d.b(c0137ey);
        postDelayed(new RunnableC0034bb(this, c0137ey), 400L);
    }

    private boolean a(bD bDVar) {
        int i = bDVar.g;
        return ((i != 0 && i != 1) || this.d.o() || bDVar == this.e || this.e.f198a) ? false : true;
    }

    private void f() {
        this.g = new S(this);
    }

    final Folder a() {
        return this.d;
    }

    public final void a(View view, Runnable runnable) {
        Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
        a(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        a(drawable, 200, true, runnable);
    }

    public final void a(aH aHVar) {
        C0137ey c0137eyB = aHVar.g instanceof C0086d ? ((C0086d) aHVar.g).b() : (C0137ey) aHVar.g;
        this.d.n();
        a(c0137eyB, aHVar.f, null, 1.0f, this.e.b.size(), aHVar.i);
    }

    public final void a(C0137ey c0137ey) {
        this.e.a(c0137ey);
    }

    public final void a(C0137ey c0137ey, View view, C0137ey c0137ey2, aA aAVar, Rect rect, float f2, Runnable runnable) {
        Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
        a(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        a(drawable, 350, false, (Runnable) null);
        a(c0137ey);
        a(c0137ey2, aAVar, rect, f2, 1, runnable);
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void a(CharSequence charSequence) {
        this.i.setText(charSequence.toString());
        setContentDescription(String.format(getContext().getString(R.string.folder_name_format), charSequence));
    }

    public final void a(boolean z) {
        if (z) {
            this.i.setVisibility(0);
        } else {
            this.i.setVisibility(4);
        }
    }

    public final boolean a(Object obj) {
        return !this.d.s() && a((bD) obj);
    }

    final C0043bk b() {
        return this.e;
    }

    public final void b(Object obj) {
        if (this.d.s() || !a((bD) obj)) {
            return;
        }
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) getLayoutParams();
        CellLayout cellLayout = (CellLayout) getParent().getParent();
        this.j.a(layoutParams.f74a, layoutParams.b);
        this.j.a(cellLayout);
        this.j.a();
        cellLayout.a(this.j);
        this.w.a(this.y);
        this.w.a(800L);
        this.x = (bD) obj;
    }

    public final void c() {
        this.j.b();
        this.w.a();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.g.b();
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void d(C0137ey c0137ey) {
        invalidate();
        requestLayout();
    }

    public final boolean d() {
        return this.i.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.d == null) {
            return;
        }
        if (this.d.r() != 0 || this.b) {
            ArrayList arrayListU = this.d.u();
            if (this.b) {
                a(this.u.e);
            } else {
                a(((TextView) arrayListU.get(0)).getCompoundDrawables()[1]);
            }
            int iMin = Math.min(arrayListU.size(), 3);
            if (this.b) {
                a(canvas, this.u);
                return;
            }
            for (int i = iMin - 1; i >= 0; i--) {
                TextView textView = (TextView) arrayListU.get(i);
                if (!this.v.contains(textView.getTag())) {
                    Drawable drawable = textView.getCompoundDrawables()[1];
                    this.t = a(i, this.t);
                    this.t.e = drawable;
                    a(canvas, this.t);
                }
            }
        }
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void e(C0137ey c0137ey) {
        invalidate();
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        f = true;
        return super.onSaveInstanceState();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        switch (motionEvent.getAction()) {
            case 0:
                this.g.a();
                return zOnTouchEvent;
            case 1:
            case 3:
                this.g.b();
                return zOnTouchEvent;
            case 2:
            default:
                return zOnTouchEvent;
        }
    }

    @Override // com.android.launcher3.InterfaceC0044bl
    public final void t() {
        invalidate();
        requestLayout();
    }
}
