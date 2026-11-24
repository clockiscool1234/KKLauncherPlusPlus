package com.android.launcher3;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.android.launcher3.fl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0151fl extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Handler f379a;
    private dQ b;

    public C0151fl(Context context) {
        this(context, null);
    }

    private C0151fl(Context context, AttributeSet attributeSet) {
        super(context, null);
        this.f379a = new HandlerC0152fm(this);
        context.bindService(new Intent(context, (Class<?>) dQ.class), new ServiceConnectionC0153fn(this), 1);
        setOrientation(1);
        setBackgroundColor(-1073741824);
    }

    static int a(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public final void a() {
        removeAllViews();
        for (int i : this.b.a()) {
            C0154fo c0154fo = new C0154fo(this, getContext());
            c0154fo.a(i);
            addView(c0154fo);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f379a.sendEmptyMessage(1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f379a.sendEmptyMessage(2);
    }
}
