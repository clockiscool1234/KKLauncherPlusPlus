package com.android.launcher3;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes.dex */
final class cS implements InterfaceC0092df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f225a;

    cS(cO cOVar, String str) {
        this.f225a = str;
    }

    @Override // com.android.launcher3.InterfaceC0092df
    public final boolean a(bD bDVar, bD bDVar2, ComponentName componentName) {
        return componentName.getPackageName().equals(this.f225a);
    }
}
