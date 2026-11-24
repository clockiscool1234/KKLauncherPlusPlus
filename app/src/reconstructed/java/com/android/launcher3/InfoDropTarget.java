package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class InfoDropTarget extends E {
    private ColorStateList f;
    private TransitionDrawable g;

    public InfoDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InfoDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.InterfaceC0022aq
    public final void a(InterfaceC0031az interfaceC0031az, Object obj) {
        boolean z = interfaceC0031az.h();
        this.d = z;
        this.g.resetTransition();
        setTextColor(this.f);
        ((ViewGroup) getParent()).setVisibility(z ? 0 : 8);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final boolean a(aH aHVar) {
        ComponentName component = null;
        if (aHVar.g instanceof C0086d) {
            component = ((C0086d) aHVar.g).d;
        } else if (aHVar.g instanceof C0137ey) {
            component = ((C0137ey) aHVar.g).f343a.getComponent();
        } else if (aHVar.g instanceof C0127eo) {
            component = ((C0127eo) aHVar.g).f337a;
        }
        if (component != null) {
            this.b.a(component);
        }
        aHVar.k = false;
        return false;
    }

    @Override // com.android.launcher3.E, com.android.launcher3.InterfaceC0022aq
    public final void c() {
        super.c();
        this.d = false;
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final void c(aH aHVar) {
        super.c(aHVar);
        this.g.startTransition(this.f80a);
        setTextColor(this.e);
    }

    @Override // com.android.launcher3.E, com.android.launcher3.aF
    public final void e(aH aHVar) {
        super.e(aHVar);
        if (aHVar.e) {
            return;
        }
        this.g.resetTransition();
        setTextColor(this.f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f = getTextColors();
        this.e = getResources().getColor(R.color.info_target_hover_tint);
        this.g = (TransitionDrawable) a();
        if (this.g != null) {
            this.g.setCrossFadeEnabled(true);
        }
        if (getResources().getConfiguration().orientation != 2 || cB.a().j()) {
            return;
        }
        setText("");
    }
}
