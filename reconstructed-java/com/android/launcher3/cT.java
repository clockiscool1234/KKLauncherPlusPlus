package com.android.launcher3;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes.dex */
final class cT implements InterfaceC0092df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ComponentName f226a;

    cT(cO cOVar, ComponentName componentName) {
        this.f226a = componentName;
    }

    @Override // com.android.launcher3.InterfaceC0092df
    public final boolean a(bD bDVar, bD bDVar2, ComponentName componentName) {
        return componentName.equals(this.f226a);
    }
}
