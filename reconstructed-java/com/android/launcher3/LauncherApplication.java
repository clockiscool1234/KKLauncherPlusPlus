package com.android.launcher3;

import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public class LauncherApplication extends Application {
    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        cB.a(this);
        cB.a();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        cB.a().d();
    }
}
