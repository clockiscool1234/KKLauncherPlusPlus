package com.android.launcher3;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0175q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ AppsCustomizePagedView f401a;
    private final /* synthetic */ int b;
    private final /* synthetic */ int c;
    private final /* synthetic */ C0120eh d;
    private final /* synthetic */ boolean e;
    private final /* synthetic */ int f;
    private final /* synthetic */ ArrayList g;

    RunnableC0175q(AppsCustomizePagedView appsCustomizePagedView, int i, int i2, C0120eh c0120eh, boolean z, int i3, ArrayList arrayList) {
        this.f401a = appsCustomizePagedView;
        this.b = i;
        this.c = i2;
        this.d = c0120eh;
        this.e = z;
        this.f = i3;
        this.g = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        int i2 = this.c;
        if (this.d.getChildCount() > 0) {
            int[] iArrA = ((PagedViewWidget) this.d.getChildAt(0)).a();
            i = iArrA[0];
            i2 = iArrA[1];
        }
        this.f401a.b().a(i, i2, this.f401a.ak);
        if (this.e) {
            C0184z c0184z = new C0184z(this.f, this.g, i, i2, null, null, this.f401a.b());
            AppsCustomizePagedView.a(this.f401a, (AsyncTaskC0166h) null, c0184z);
            this.f401a.a(c0184z, this.e);
        } else if (this.f401a.aA) {
            this.f401a.aC.add(this);
        } else {
            AppsCustomizePagedView.a(this.f401a, this.f, this.g, i, i2, this.f401a.ag);
        }
        this.d.a(null);
    }
}
