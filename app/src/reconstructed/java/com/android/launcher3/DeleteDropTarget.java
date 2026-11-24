package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.animation.ValueAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class DeleteDropTarget extends E {
    private static int f = 285;
    private static int g = 350;
    private static float h = 0.035f;
    private static int i = 0;
    private static int j = 1;
    private final int k;
    private ColorStateList l;
    private TransitionDrawable m;
    private TransitionDrawable n;
    private TransitionDrawable o;
    private boolean p;

    public DeleteDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeleteDropTarget(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.k = j;
        this.p = false;
    }

    static /* synthetic */ void a(DeleteDropTarget deleteDropTarget, aH aHVar) {
        bD bDVar = (bD) aHVar.g;
        boolean z = deleteDropTarget.p;
        deleteDropTarget.p = false;
        if (b(aHVar.h, bDVar)) {
            C0086d c0086d = (C0086d) bDVar;
            deleteDropTarget.b.a(c0086d.d, c0086d.e);
        } else if (deleteDropTarget.i(aHVar)) {
            C0137ey c0137ey = (C0137ey) bDVar;
            if (c0137ey.f343a != null && c0137ey.f343a.getComponent() != null) {
                ComponentName component = c0137ey.f343a.getComponent();
                InterfaceC0031az interfaceC0031az = aHVar.h;
                deleteDropTarget.p = deleteDropTarget.b.a(component, C0086d.a(C0137ey.a(deleteDropTarget.getContext(), component.getPackageName())));
                if (deleteDropTarget.p) {
                    deleteDropTarget.b.a(new RunnableC0010ae(deleteDropTarget, component, interfaceC0031az));
                }
            }
        } else if (deleteDropTarget.g(aHVar)) {
            cO.b(deleteDropTarget.b, bDVar);
        } else {
            if ((aHVar.h instanceof Workspace) && (aHVar.g instanceof C0043bk)) {
                C0043bk c0043bk = (C0043bk) bDVar;
                Launcher launcher = deleteDropTarget.b;
                Launcher.a(c0043bk);
                cO.a((Context) deleteDropTarget.b, c0043bk);
            } else {
                if (f(aHVar) && (aHVar.g instanceof cF)) {
                    deleteDropTarget.b.a((cF) bDVar);
                    cO.b(deleteDropTarget.b, bDVar);
                    cF cFVar = (cF) bDVar;
                    cD cDVarL = deleteDropTarget.b.l();
                    if (cDVarL != null) {
                        new AsyncTaskC0011af(deleteDropTarget, cDVarL, cFVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                    }
                }
            }
        }
        if (!z || deleteDropTarget.p) {
            return;
        }
        if (aHVar.h instanceof Folder) {
            ((Folder) aHVar.h).b(false);
        } else if (aHVar.h instanceof Workspace) {
            ((Workspace) aHVar.h).b(false);
        }
    }

    public static boolean a(Object obj) {
        if (obj instanceof bD) {
            bD bDVar = (bD) obj;
            if (bDVar.g == 4 || bDVar.g == 1) {
                return true;
            }
            if (!cB.o() && bDVar.g == 2) {
                return true;
            }
            if (!cB.o() && bDVar.g == 0 && (bDVar instanceof C0086d)) {
                return (((C0086d) obj).e & 1) != 0;
            }
            if (bDVar.g == 0 && (bDVar instanceof C0137ey)) {
                if (cB.o() && (((C0137ey) obj).e & 1) == 0) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private static boolean b(InterfaceC0031az interfaceC0031az, Object obj) {
        return interfaceC0031az.h() && (obj instanceof C0086d);
    }

    private void d() {
        this.o.resetTransition();
        setTextColor(this.l);
    }

    private static boolean f(aH aHVar) {
        return (aHVar.h instanceof Workspace) || (aHVar.h instanceof Folder);
    }

    private boolean g(aH aHVar) {
        return f(aHVar) && (aHVar.g instanceof C0137ey);
    }

    private void h(aH aHVar) {
        this.p = false;
        if (i(aHVar)) {
            if (aHVar.h instanceof Folder) {
                ((Folder) aHVar.h).m();
            } else if (aHVar.h instanceof Workspace) {
                ((Workspace) aHVar.h).at();
            }
            this.p = true;
        }
    }

    private boolean i(aH aHVar) {
        if (cB.o() && g(aHVar)) {
            return !InstallShortcutReceiver.a(((C0137ey) aHVar.g).f343a);
        }
        return false;
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final void a(aH aHVar, PointF pointF) {
        boolean z = aHVar.h instanceof AppsCustomizePagedView;
        aHVar.f.b(0);
        aHVar.f.f();
        if (z) {
            d();
        }
        if (this.k == 0) {
            this.c.d();
            this.c.a();
        }
        ViewConfiguration viewConfiguration = ViewConfiguration.get(this.b);
        DragLayer dragLayerG = this.b.g();
        int i2 = g;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        C0014ai c0014ai = new C0014ai(this, jCurrentAnimationTimeMillis, i2);
        ValueAnimator.AnimatorUpdateListener c0016ak = null;
        if (this.k == 0) {
            Rect rectA = a(aHVar.f.getMeasuredWidth(), aHVar.f.getMeasuredHeight(), this.o.getIntrinsicWidth(), this.o.getIntrinsicHeight());
            Rect rect = new Rect();
            dragLayerG.b(aHVar.f, rect);
            int iMin = (int) (Math.min(1.0f, Math.abs(pointF.length()) / (viewConfiguration.getScaledMaximumFlingVelocity() / 2.0f)) * (-rect.top));
            int i3 = (int) (iMin / (pointF.y / pointF.x));
            float f2 = iMin + rect.top;
            float f3 = rect.left + i3;
            c0016ak = new C0013ah(this, dragLayerG, new C0012ag(this), rect.left, f3, rectA.left, rect.top, f2, rectA.top);
        } else if (this.k == j) {
            Rect rect2 = new Rect();
            dragLayerG.b(aHVar.f, rect2);
            c0016ak = new C0016ak(dragLayerG, pointF, rect2, jCurrentAnimationTimeMillis, h);
        }
        h(aHVar);
        dragLayerG.a(aHVar.f, c0016ak, i2, c0014ai, new RunnableC0015aj(this, z, aHVar), 0, null);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0031  */
    @Override // com.android.launcher3.E, com.android.launcher3.InterfaceC0022aq
    public final void a(InterfaceC0031az interfaceC0031az, Object obj) {
        boolean z;
        boolean z2;
        boolean z3 = !cB.o() && b(interfaceC0031az, obj);
        boolean z4 = !z3 && interfaceC0031az.i();
        if (a(obj)) {
            if ((interfaceC0031az instanceof AppsCustomizePagedView) && (obj instanceof C0127eo)) {
                switch (((C0127eo) obj).g) {
                    case 1:
                    case 4:
                        z2 = true;
                        break;
                    case 2:
                    case 3:
                    default:
                        z2 = false;
                        break;
                }
            } else {
                z2 = false;
            }
            z = z2 ? false : true;
        }
        if (z3) {
            setCompoundDrawablesRelativeWithIntrinsicBounds(this.m, (Drawable) null, (Drawable) null, (Drawable) null);
        } else if (z4) {
            setCompoundDrawablesRelativeWithIntrinsicBounds(this.n, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            z = false;
        }
        this.o = (TransitionDrawable) a();
        this.d = z;
        d();
        ((ViewGroup) getParent()).setVisibility(z ? 0 : 8);
        if (!z || getText().length() <= 0) {
            return;
        }
        setText(z3 ? R.string.delete_target_uninstall_label : R.string.delete_target_label);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final boolean a(aH aHVar) {
        return a(aHVar.g);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final void b(aH aHVar) {
        DragLayer dragLayerG = this.b.g();
        Rect rect = new Rect();
        dragLayerG.b(aHVar.f, rect);
        Rect rectA = a(aHVar.f.getMeasuredWidth(), aHVar.f.getMeasuredHeight(), this.o.getIntrinsicWidth(), this.o.getIntrinsicHeight());
        float fWidth = rectA.width() / rect.width();
        this.c.d();
        h(aHVar);
        dragLayerG.a(aHVar.f, rect, rectA, fWidth, 1.0f, 1.0f, 0.1f, 0.1f, f, new DecelerateInterpolator(2.0f), new LinearInterpolator(), new RunnableC0009ad(this, aHVar), 0, (View) null);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.InterfaceC0022aq
    public final void c() {
        super.c();
        this.d = false;
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final void c(aH aHVar) {
        super.c(aHVar);
        this.o.startTransition(this.f80a);
        setTextColor(this.e);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final void e(aH aHVar) {
        super.e(aHVar);
        if (aHVar.e) {
            aHVar.f.b(this.e);
        } else {
            d();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.l = getTextColors();
        Resources resources = getResources();
        this.e = resources.getColor(R.color.delete_target_hover_tint);
        this.m = (TransitionDrawable) resources.getDrawable(R.drawable.uninstall_target_selector);
        this.n = (TransitionDrawable) resources.getDrawable(R.drawable.remove_target_selector);
        this.n.setCrossFadeEnabled(true);
        this.m.setCrossFadeEnabled(true);
        this.o = (TransitionDrawable) a();
        if (getResources().getConfiguration().orientation != 2 || cB.a().j()) {
            return;
        }
        setText("");
    }
}
