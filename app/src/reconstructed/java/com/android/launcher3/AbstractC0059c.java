package com.android.launcher3;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: renamed from: com.android.launcher3.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0059c {
    public static AbstractC0059c a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return (AbstractC0059c) Class.forName(str).newInstance();
        } catch (ClassCastException e) {
            Log.e("AppFilter", "Bad AppFilter class", e);
            return null;
        } catch (ClassNotFoundException e2) {
            Log.e("AppFilter", "Bad AppFilter class", e2);
            return null;
        } catch (IllegalAccessException e3) {
            Log.e("AppFilter", "Bad AppFilter class", e3);
            return null;
        } catch (InstantiationException e4) {
            Log.e("AppFilter", "Bad AppFilter class", e4);
            return null;
        }
    }

    public abstract boolean a();
}
