package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class dP implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f270a;
    private final /* synthetic */ Runnable b;

    dP(Context context, Runnable runnable) {
        this.f270a = context;
        this.b = runnable;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Log.v("MemoryDumpActivity", "service connected, dumping...");
        MemoryDumpActivity.dumpHprofAndShare(this.f270a, ((dS) iBinder).a());
        this.f270a.unbindService(this);
        if (this.b != null) {
            this.b.run();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
