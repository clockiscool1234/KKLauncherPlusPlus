package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        cB.a(context.getApplicationContext());
        cB.a().m();
    }
}
