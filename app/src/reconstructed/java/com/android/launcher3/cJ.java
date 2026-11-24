package com.android.launcher3;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
final class cJ implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cG f217a;
    private final /* synthetic */ Cling b;
    private final /* synthetic */ String c;
    private final /* synthetic */ Runnable d;

    cJ(cG cGVar, Cling cling, String str, Runnable runnable) {
        this.f217a = cGVar;
        this.b = cling;
        this.c = str;
        this.d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.c();
        SharedPreferences.Editor editorEdit = this.f217a.f214a.o().edit();
        editorEdit.putBoolean(this.c, true);
        editorEdit.apply();
        if (this.d != null) {
            this.d.run();
        }
    }
}
