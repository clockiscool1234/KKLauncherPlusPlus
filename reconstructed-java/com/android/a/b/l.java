package com.android.a.b;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f46a;
    private final long b;

    public l(long j, long j2) {
        this.f46a = j;
        this.b = j2;
    }

    public final long a() {
        return this.f46a;
    }

    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f46a == lVar.f46a && this.b == lVar.b;
    }

    public final String toString() {
        return String.valueOf(this.f46a) + "/" + this.b;
    }
}
