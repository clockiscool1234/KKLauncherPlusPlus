package com.android.launcher3;

import android.os.Handler;

/* JADX INFO: renamed from: com.android.launcher3.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0005a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f119a;
    private boolean b;
    private dU d;
    private boolean e = false;
    private Handler c = new Handler();

    public final void a() {
        this.f119a = 0L;
        this.e = false;
    }

    public final void a(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.e = true;
        this.f119a = jCurrentTimeMillis + j;
        if (this.b) {
            return;
        }
        this.c.postDelayed(this, this.f119a - jCurrentTimeMillis);
        this.b = true;
    }

    public final void a(dU dUVar) {
        this.d = dUVar;
    }

    public final boolean b() {
        return this.e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b = false;
        if (this.f119a != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f119a > jCurrentTimeMillis) {
                this.c.postDelayed(this, Math.max(0L, this.f119a - jCurrentTimeMillis));
                this.b = true;
            } else {
                this.e = false;
                if (this.d != null) {
                    this.d.a();
                }
            }
        }
    }
}
