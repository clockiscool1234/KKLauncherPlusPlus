package com.android.launcher3;

/* JADX INFO: renamed from: com.android.launcher3.ar, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0023ar implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f157a;
    private /* synthetic */ C0021ap b;

    RunnableC0023ar(C0021ap c0021ap) {
        this.b = c0021ap;
    }

    final void a(int i) {
        this.f157a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.r != null) {
            if (this.f157a == 0) {
                this.b.r.d_();
            } else {
                this.b.r.d();
            }
            this.b.s = 0;
            this.b.y = 0;
            this.b.r.e();
            this.b.c.g().e();
            if (this.b.b()) {
                this.b.b(this.b.w[0], this.b.w[1]);
            }
        }
    }
}
