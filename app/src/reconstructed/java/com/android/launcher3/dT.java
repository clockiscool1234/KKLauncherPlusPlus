package com.android.launcher3;

/* JADX INFO: loaded from: classes.dex */
public final class dT {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f274a;
    public long b;
    public long[] c = new long[256];
    public long[] d = new long[256];
    public long e = 1;
    public int f = 0;
    private long g;

    public dT(int i, String str, long j) {
        this.g = j;
    }

    public final long a() {
        return System.currentTimeMillis() - this.g;
    }
}
