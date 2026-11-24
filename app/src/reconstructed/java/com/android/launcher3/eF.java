package com.android.launcher3;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;

/* JADX INFO: loaded from: classes.dex */
public final class eF extends AbstractC0149fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ResolveInfo f308a;

    public eF(ResolveInfo resolveInfo) {
        this.f308a = resolveInfo;
    }

    @Override // com.android.launcher3.AbstractC0149fj
    public final void a(eS eSVar) {
        ComponentName componentName = new ComponentName(this.f308a.activityInfo.packageName, this.f308a.activityInfo.name);
        Intent intent = new Intent("android.intent.action.SET_WALLPAPER");
        intent.setComponent(componentName);
        eSVar.a(intent, 6);
    }
}
