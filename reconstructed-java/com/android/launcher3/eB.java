package com.android.launcher3;

import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes.dex */
abstract class eB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadLocal f304a = new ThreadLocal();

    abstract Object a();

    public final void a(Object obj) {
        this.f304a.set(new SoftReference(obj));
    }

    public final Object b() {
        SoftReference softReference = (SoftReference) this.f304a.get();
        if (softReference == null) {
            Object objA = a();
            this.f304a.set(new SoftReference(objA));
            return objA;
        }
        Object obj = softReference.get();
        if (obj != null) {
            return obj;
        }
        Object objA2 = a();
        this.f304a.set(new SoftReference(objA2));
        return objA2;
    }
}
