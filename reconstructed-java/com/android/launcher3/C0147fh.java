package com.android.launcher3;

import android.net.Uri;

/* JADX INFO: renamed from: com.android.launcher3.fh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0147fh extends AbstractC0149fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f377a;
    private boolean c = true;
    private com.android.b.f d;

    public C0147fh(Uri uri) {
        this.f377a = uri;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        RunnableC0148fi runnableC0148fi;
        if (this.c) {
            this.c = false;
            eSVar.c.setVisibility(4);
            runnableC0148fi = new RunnableC0148fi(this, eSVar);
        } else {
            runnableC0148fi = null;
        }
        this.d = new com.android.b.f(eSVar, this.f377a, 1024);
        eSVar.a((com.android.b.b) this.d, true, false, (Runnable) runnableC0148fi);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean a() {
        return true;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void b(eS eSVar) {
        eSVar.a(this.f377a, new eR(this, eSVar), true);
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final boolean b() {
        return true;
    }
}
