package com.android.launcher3;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
final class cZ implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ContentResolver f232a;
    private final /* synthetic */ Uri b;
    private final /* synthetic */ ContentValues c;
    private final /* synthetic */ bD d;
    private final /* synthetic */ long e;
    private final /* synthetic */ StackTraceElement[] f;

    cZ(ContentResolver contentResolver, Uri uri, ContentValues contentValues, bD bDVar, long j, StackTraceElement[] stackTraceElementArr) {
        this.f232a = contentResolver;
        this.b = uri;
        this.c = contentValues;
        this.d = bDVar;
        this.e = j;
        this.f = stackTraceElementArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f232a.update(this.b, this.c, null, null);
        cO.a(this.d, this.e, this.f);
    }
}
