package com.android.launcher3;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class D {
    public static D a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new D();
        }
        try {
            return (D) Class.forName(str).newInstance();
        } catch (ClassCastException e) {
            Log.e("BuildInfo", "Bad BuildInfo class", e);
            return new D();
        } catch (ClassNotFoundException e2) {
            Log.e("BuildInfo", "Bad BuildInfo class", e2);
            return new D();
        } catch (IllegalAccessException e3) {
            Log.e("BuildInfo", "Bad BuildInfo class", e3);
            return new D();
        } catch (InstantiationException e4) {
            Log.e("BuildInfo", "Bad BuildInfo class", e4);
            return new D();
        }
    }
}
