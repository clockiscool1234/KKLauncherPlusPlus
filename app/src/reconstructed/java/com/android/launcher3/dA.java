package com.android.launcher3;

import android.content.ContentValues;

/* JADX INFO: loaded from: classes.dex */
class dA {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ dB f257a;

    dA(dB dBVar) {
        this.f257a = dBVar;
    }

    public void a(ContentValues contentValues) {
        if (contentValues.getAsInteger("container").intValue() == -100) {
            contentValues.put("screen", Integer.valueOf((int) dB.a(this.f257a, contentValues.getAsInteger("screen").intValue())));
        }
    }
}
