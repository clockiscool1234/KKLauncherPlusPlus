package com.android.launcher3;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class dM implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Collator f267a = Collator.getInstance();
    private final /* synthetic */ PackageManager b;

    dM(dL dLVar, PackageManager packageManager) {
        this.b = packageManager;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return this.f267a.compare(((ResolveInfo) obj).loadLabel(this.b), ((ResolveInfo) obj2).loadLabel(this.b));
    }
}
