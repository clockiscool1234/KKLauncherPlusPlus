package com.android.launcher3;

import android.content.ContentUris;
import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
final class dC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f259a;
    public final String b;
    public final String[] c;

    dC(Uri uri) {
        if (uri.getPathSegments().size() != 1) {
            throw new IllegalArgumentException("Invalid URI: " + uri);
        }
        this.f259a = uri.getPathSegments().get(0);
        this.b = null;
        this.c = null;
    }

    dC(Uri uri, String str, String[] strArr) {
        if (uri.getPathSegments().size() == 1) {
            this.f259a = uri.getPathSegments().get(0);
            this.b = str;
            this.c = strArr;
        } else {
            if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            }
            if (!TextUtils.isEmpty(str)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            }
            this.f259a = uri.getPathSegments().get(0);
            this.b = "_id=" + ContentUris.parseId(uri);
            this.c = null;
        }
    }
}
