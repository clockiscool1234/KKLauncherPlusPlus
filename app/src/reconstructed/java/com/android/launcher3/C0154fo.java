package com.android.launcher3;

import android.content.Context;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.android.launcher3.fo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0154fo extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private C0155fp f382a;
    private TextView b;
    private int c;
    private dT d;
    private /* synthetic */ C0151fl e;

    public C0154fo(C0151fl c0151fl, Context context) {
        this(c0151fl, context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C0154fo(C0151fl c0151fl, Context context, AttributeSet attributeSet) {
        super(context, null);
        this.e = c0151fl;
        float f = getResources().getDisplayMetrics().density;
        this.b = new TextView(getContext());
        this.b.setTextColor(-1);
        this.b.setTextSize(0, 10.0f * f);
        this.b.setGravity(19);
        int i = (int) (2.0f * f);
        setPadding(i, 0, i, 0);
        this.f382a = new C0155fp(this, getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, (int) (14.0f * f), 1.0f);
        addView(this.b, layoutParams);
        layoutParams.leftMargin = (int) (4.0f * f);
        layoutParams.weight = 0.0f;
        layoutParams.width = (int) (f * 200.0f);
        addView(this.f382a, layoutParams);
    }

    public final int a() {
        return this.c;
    }

    public final void a(int i) {
        this.c = i;
        this.d = this.e.b.a(this.c);
        if (this.d == null) {
            Log.v("WeightWatcher", "Missing info for pid " + this.c + ", removing view: " + this);
            this.e.a();
        }
    }

    public final void b() {
        TextView textView = this.b;
        StringBuilder sbAppend = new StringBuilder("(").append(this.c).append(this.c == Process.myPid() ? "/A" : "/S").append(") up ");
        long jA = this.d.a() / 1000;
        StringBuilder sb = new StringBuilder();
        long j = jA / 86400;
        if (j > 0) {
            jA -= 86400 * j;
            sb.append(j);
            sb.append("d");
        }
        long j2 = jA / 3600;
        if (j2 > 0) {
            jA -= 3600 * j2;
            sb.append(j2);
            sb.append("h");
        }
        long j3 = jA / 60;
        if (j3 > 0) {
            jA -= 60 * j3;
            sb.append(j3);
            sb.append("m");
        }
        sb.append(jA);
        sb.append("s");
        textView.setText(sbAppend.append(sb.toString()).append(" P=").append(this.d.f274a).append(" U=").append(this.d.b).toString());
        this.f382a.invalidate();
    }
}
