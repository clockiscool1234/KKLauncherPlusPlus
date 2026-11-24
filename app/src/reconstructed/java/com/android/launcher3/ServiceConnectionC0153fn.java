package com.android.launcher3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: renamed from: com.android.launcher3.fn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class ServiceConnectionC0153fn implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ C0151fl f381a;

    ServiceConnectionC0153fn(C0151fl c0151fl) {
        this.f381a = c0151fl;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f381a.b = ((dS) iBinder).a();
        this.f381a.a();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f381a.b = null;
    }
}
