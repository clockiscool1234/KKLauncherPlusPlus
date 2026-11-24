package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: renamed from: com.android.launcher3.cq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0076cq extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f249a;

    private C0076cq(Launcher launcher) {
        this.f249a = launcher;
    }

    /* synthetic */ C0076cq(Launcher launcher, byte b) {
        this(launcher);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f249a.p();
    }
}
