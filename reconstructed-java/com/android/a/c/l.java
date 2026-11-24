package com.android.a.c;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
final class l implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f51a;
    public Bitmap.Config b;
    public int c;

    private l() {
    }

    /* synthetic */ l(byte b) {
        this();
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final l clone() {
        try {
            return (l) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f51a == lVar.f51a && this.b == lVar.b && this.c == lVar.c;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() ^ this.c;
        return this.f51a ? iHashCode : -iHashCode;
    }
}
