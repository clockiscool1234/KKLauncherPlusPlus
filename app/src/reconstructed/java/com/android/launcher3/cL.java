package com.android.launcher3;

import nl.ndsc.kitkatlauncher.R;

/* JADX INFO: loaded from: classes.dex */
final class cL implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cG f219a;

    cL(cG cGVar) {
        this.f219a = cGVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f219a.a((Cling) this.f219a.f214a.findViewById(R.id.migration_cling), new cM(this), "cling_gel.migration.dismissed", 200, true);
    }
}
