package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: renamed from: com.android.launcher3.ca, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0060ca extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f233a;

    C0060ca(Launcher launcher) {
        this.f233a = launcher;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!"android.intent.action.SCREEN_OFF".equals(action)) {
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                this.f233a.T = true;
                this.f233a.S();
                return;
            }
            return;
        }
        this.f233a.T = false;
        this.f233a.o.a();
        this.f233a.S();
        if (this.f233a.C == null || this.f233a.u.h != -1) {
            return;
        }
        this.f233a.b(false);
    }
}
