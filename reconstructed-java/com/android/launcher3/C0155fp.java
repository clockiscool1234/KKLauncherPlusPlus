package com.android.launcher3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: renamed from: com.android.launcher3.fp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0155fp extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f383a;
    private Paint b;
    private Paint c;
    private /* synthetic */ C0154fo d;

    public C0155fp(C0154fo c0154fo, Context context) {
        this(c0154fo, context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C0155fp(C0154fo c0154fo, Context context, AttributeSet attributeSet) {
        super(context, null);
        this.d = c0154fo;
        this.f383a = new Paint();
        this.f383a.setColor(-6697984);
        this.b = new Paint();
        this.b.setColor(-6750208);
        this.c = new Paint();
        this.c.setColor(-1);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.d.d == null) {
            return;
        }
        int length = this.d.d.c.length;
        float f = width / length;
        float fMax = Math.max(1.0f, f);
        float f2 = height / this.d.d.e;
        for (int i = 0; i < length; i++) {
            float f3 = i * f;
            canvas.drawRect(f3, height - (this.d.d.c[i] * f2), f3 + fMax, height, this.f383a);
            canvas.drawRect(f3, height - (this.d.d.d[i] * f2), f3 + fMax, height, this.b);
        }
        float f4 = this.d.d.f * f;
        canvas.drawRect(f4, 0.0f, f4 + fMax, height, this.c);
    }
}
