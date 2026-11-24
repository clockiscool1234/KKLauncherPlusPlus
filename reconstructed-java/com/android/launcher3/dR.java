package com.android.launcher3;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class dR extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ dQ f272a;

    dR(dQ dQVar) {
        this.f272a = dQVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.f272a.f271a.removeMessages(3);
                this.f272a.f271a.sendEmptyMessage(3);
                break;
            case 2:
                this.f272a.f271a.removeMessages(3);
                break;
            case 3:
                this.f272a.b();
                this.f272a.f271a.removeMessages(3);
                this.f272a.f271a.sendEmptyMessageDelayed(3, 5000L);
                break;
        }
    }
}
