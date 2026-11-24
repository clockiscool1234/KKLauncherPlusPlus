package com.android.launcher3;

import android.os.Handler;
import android.os.Message;
import android.os.MessageQueue;
import android.util.Pair;

/* JADX INFO: renamed from: com.android.launcher3.ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class HandlerC0008ac extends Handler implements MessageQueue.IdleHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0006aa f145a;

    private HandlerC0008ac(C0006aa c0006aa) {
        this.f145a = c0006aa;
    }

    /* synthetic */ HandlerC0008ac(C0006aa c0006aa, byte b) {
        this(c0006aa);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        synchronized (this.f145a.f143a) {
            if (this.f145a.f143a.size() == 0) {
                return;
            }
            ((Runnable) ((Pair) this.f145a.f143a.removeFirst()).first).run();
            synchronized (this.f145a.f143a) {
                this.f145a.b();
            }
        }
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        handleMessage(null);
        return false;
    }
}
