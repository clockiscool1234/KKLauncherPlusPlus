package com.android.launcher3;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.android.launcher3.dk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0097dk implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f287a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ ArrayList c;

    RunnableC0097dk(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, ArrayList arrayList) {
        this.f287a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SystemClock.uptimeMillis();
        InterfaceC0091de interfaceC0091deA = this.f287a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.b(this.c);
        } else {
            Log.i("Launcher.Model", "not binding apps: no Launcher activity");
        }
    }
}
