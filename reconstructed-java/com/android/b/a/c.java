package com.android.b.a;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class c extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ a f55a;

    private c(a aVar) {
        this.f55a = aVar;
    }

    /* synthetic */ c(a aVar, byte b) {
        this(aVar);
    }

    private b b() {
        b bVarA;
        synchronized (this.f55a.p) {
            while (true) {
                bVarA = this.f55a.s.a();
                if (bVarA == null) {
                    this.f55a.p.wait();
                }
            }
        }
        return bVarA;
    }

    public final void a() {
        interrupt();
        try {
            join();
        } catch (InterruptedException e) {
            Log.w("TiledImageRenderer", "Interrupted while waiting for TileDecoder thread to finish!");
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!isInterrupted()) {
            try {
                a.a(this.f55a, b());
            } catch (InterruptedException e) {
                return;
            }
        }
    }
}
