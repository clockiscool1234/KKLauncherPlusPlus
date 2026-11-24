package com.android.launcher3;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: renamed from: com.android.launcher3.fm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class HandlerC0152fm extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0151fl f380a;

    HandlerC0152fm(C0151fl c0151fl) {
        this.f380a = c0151fl;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.f380a.f379a.sendEmptyMessage(3);
                break;
            case 2:
                this.f380a.f379a.removeMessages(3);
                break;
            case 3:
                int[] iArrA = this.f380a.b.a();
                int childCount = this.f380a.getChildCount();
                if (iArrA.length != childCount) {
                    this.f380a.a();
                } else {
                    for (int i = 0; i < childCount; i++) {
                        C0154fo c0154fo = (C0154fo) this.f380a.getChildAt(i);
                        if (C0151fl.a(iArrA, c0154fo.a()) < 0) {
                            this.f380a.a();
                        } else {
                            c0154fo.b();
                        }
                    }
                }
                this.f380a.f379a.sendEmptyMessageDelayed(3, 5000L);
                break;
        }
    }
}
