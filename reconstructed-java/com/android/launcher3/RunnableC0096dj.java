package com.android.launcher3;

import android.os.SystemClock;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.dj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0096dj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f286a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;

    RunnableC0096dj(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, ArrayList arrayList) {
        this.f286a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SystemClock.uptimeMillis();
        InterfaceC0091de interfaceC0091deA = this.f286a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.b(this.c);
        }
    }
}
