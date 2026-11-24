package com.android.launcher3;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
final class cC extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ cB f210a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    cC(cB cBVar, Handler handler) {
        super(handler);
        this.f210a = cBVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f210a.c.a(false, true);
        this.f210a.c.c();
    }
}
