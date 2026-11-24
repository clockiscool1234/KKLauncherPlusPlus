package com.android.launcher3;

import java.util.HashMap;

/* JADX INFO: renamed from: com.android.launcher3.dp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class RunnableC0101dp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ RunnableC0093dg f291a;
    private final /* synthetic */ InterfaceC0091de b;
    private final /* synthetic */ HashMap c;

    RunnableC0101dp(RunnableC0093dg runnableC0093dg, InterfaceC0091de interfaceC0091de, HashMap map) {
        this.f291a = runnableC0093dg;
        this.b = interfaceC0091de;
        this.c = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0091de interfaceC0091deA = this.f291a.a(this.b);
        if (interfaceC0091deA != null) {
            interfaceC0091deA.a(this.c);
        }
    }
}
