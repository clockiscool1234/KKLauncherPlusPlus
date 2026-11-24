package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class PreloadReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LauncherProvider launcherProviderH = cB.h();
        if (launcherProviderH != null) {
            String stringExtra = intent.getStringExtra("com.android.launcher3.action.EXTRA_WORKSPACE_NAME");
            new AsyncTaskC0130er(this, launcherProviderH, !TextUtils.isEmpty(stringExtra) ? context.getResources().getIdentifier(stringExtra, "xml", "com.android.launcher3") : 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        }
    }
}
