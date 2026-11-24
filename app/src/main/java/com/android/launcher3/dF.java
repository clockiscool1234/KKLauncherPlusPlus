package com.android.launcher3;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class dF implements dE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f261a = Uri.parse("content://com.clockiscool.kklauncherplusplus.settings/favorites?notify=true");
    static final Uri b = Uri.parse("content://com.android.launcher2.settings/favorites?notify=true");
    public static final Uri c = Uri.parse("content://com.clockiscool.kklauncherplusplus.settings/favorites?notify=false");

    public static Uri a(long j, boolean z) {
        return Uri.parse("content://com.clockiscool.kklauncherplusplus.settings/favorites/" + j + "?notify=false");
    }

    static final String a(int i) {
        switch (i) {
            case -101:
                return "hotseat";
            case -100:
                return "desktop";
            default:
                return String.valueOf(i);
        }
    }
}
