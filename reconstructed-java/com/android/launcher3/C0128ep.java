package com.android.launcher3;

import android.content.pm.ActivityInfo;

/* JADX INFO: renamed from: com.android.launcher3.ep, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0128ep extends C0127eo {
    ActivityInfo b;

    public C0128ep(ActivityInfo activityInfo) {
        this.b = activityInfo;
    }

    @Override // com.android.launcher3.bD
    public final String toString() {
        return "Shortcut: " + this.b.packageName;
    }
}
