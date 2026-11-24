package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

import android.view.ViewGroup;
import android.widget.Toast;

/* JADX INFO: renamed from: com.android.launcher3.fi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0148fi implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0147fh f378a;
    private final /* synthetic */ eS b;

    RunnableC0148fi(C0147fh c0147fh, eS eSVar) {
        this.f378a = c0147fh;
        this.b = eSVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f378a.d != null && this.f378a.d.b() == com.android.b.c.LOADED) {
            eS.a(this.b, this.f378a.b);
            this.b.c.setVisibility(0);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.f378a.b.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f378a.b);
            Toast.makeText(this.b, this.b.getString(R.string.image_load_fail), 0).show();
        }
    }
}
