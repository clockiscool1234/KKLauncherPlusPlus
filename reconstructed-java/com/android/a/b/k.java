package com.android.a.b;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class k {
    private static final int[] c = {0, 1, 2, 3, 4};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f45a;
    private final Map b = new HashMap();

    k(int i) {
        this.f45a = i;
    }

    protected static int[] a() {
        return c;
    }

    private int c() {
        return this.b.size();
    }

    protected final j a(j jVar) {
        jVar.b(this.f45a);
        return (j) this.b.put(Short.valueOf(jVar.b()), jVar);
    }

    protected final j a(short s) {
        return (j) this.b.get(Short.valueOf(s));
    }

    protected final int b() {
        return this.f45a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (kVar.f45a == this.f45a && kVar.c() == c()) {
                for (j jVar : (j[]) kVar.b.values().toArray(new j[kVar.b.size()])) {
                    if (!c.a(jVar.b()) && !jVar.equals((j) this.b.get(Short.valueOf(jVar.b())))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
