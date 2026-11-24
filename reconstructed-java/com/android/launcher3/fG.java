package com.android.launcher3;

import android.content.ComponentName;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
final class fG implements InterfaceC0092df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ HashSet f352a;
    private final /* synthetic */ HashSet b;

    fG(Workspace workspace, HashSet hashSet, HashSet hashSet2) {
        this.f352a = hashSet;
        this.b = hashSet2;
    }

    @Override // com.android.launcher3.InterfaceC0092df
    public final boolean a(bD bDVar, bD bDVar2, ComponentName componentName) {
        if (!this.f352a.contains(componentName.getPackageName())) {
            return false;
        }
        this.b.add(componentName);
        return true;
    }
}
