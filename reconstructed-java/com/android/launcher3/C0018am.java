package com.android.launcher3;

import android.graphics.PointF;
import java.util.Comparator;

/* JADX INFO: renamed from: com.android.launcher3.am, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0018am implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0017al f154a;
    private final /* synthetic */ PointF b;

    C0018am(C0017al c0017al, PointF pointF) {
        this.f154a = c0017al;
        this.b = pointF;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        C0017al c0017al = this.f154a;
        float fA = C0017al.a(this.b, ((C0020ao) obj).b);
        C0017al c0017al2 = this.f154a;
        return (int) (fA - C0017al.a(this.b, ((C0020ao) obj2).b));
    }
}
