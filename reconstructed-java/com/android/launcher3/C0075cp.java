package com.android.launcher3;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: renamed from: com.android.launcher3.cp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
final class C0075cp extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ Launcher f248a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0075cp(Launcher launcher) {
        super(new Handler());
        this.f248a = launcher;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        Launcher.i(this.f248a);
    }
}
