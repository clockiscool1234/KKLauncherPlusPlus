package com.android.launcher3;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View f93a;
    int b = -1;
    int c = -1;
    int d;
    int e;
    long f;

    L() {
    }

    public final String toString() {
        return "Cell[view=" + (this.f93a == null ? "null" : this.f93a.getClass()) + ", x=" + this.b + ", y=" + this.c + "]";
    }
}
