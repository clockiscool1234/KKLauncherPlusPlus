package com.android.b.a;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f56a;

    private d() {
    }

    /* synthetic */ d(byte b) {
        this();
    }

    public final b a() {
        b bVar = this.f56a;
        if (bVar != null) {
            this.f56a = bVar.h;
        }
        return bVar;
    }

    public final boolean a(b bVar) {
        boolean z;
        b bVar2 = this.f56a;
        while (true) {
            if (bVar2 == null) {
                z = false;
                break;
            }
            if (bVar2 == bVar) {
                z = true;
                break;
            }
            bVar2 = bVar2.h;
        }
        if (z) {
            Log.w("TiledImageRenderer", "Attempting to add a tile already in the queue!");
            return false;
        }
        boolean z2 = this.f56a == null;
        bVar.h = this.f56a;
        this.f56a = bVar;
        return z2;
    }

    public final void b() {
        this.f56a = null;
    }
}
