package com.android.a.a;

import android.os.Build;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long[] f35a = new long[256];

    static {
        if (!Build.TYPE.equals("eng")) {
            Build.TYPE.equals("userdebug");
        }
        for (int i = 0; i < 256; i++) {
            long j = i;
            for (int i2 = 0; i2 < 8; i2++) {
                j = (j >> 1) ^ ((((int) j) & 1) != 0 ? -7661587058870466123L : 0L);
            }
            f35a[i] = j;
        }
    }

    public static int a(float f) {
        int i = 0;
        while (i < 31 && (1 << i) < f) {
            i++;
        }
        return i;
    }

    public static int a(int i) {
        if (i <= 0 || i > 1073741824) {
            throw new IllegalArgumentException("n is invalid: " + i);
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 16);
        int i4 = i3 | (i3 >> 8);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 2);
        return (i6 | (i6 >> 1)) + 1;
    }

    public static int a(int i, int i2, int i3) {
        if (i > i3) {
            return i3;
        }
        if (i < 0) {
            return 0;
        }
        return i;
    }

    public static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("Utils", "close fail ", e);
        }
    }

    public static void a(boolean z) {
        if (!z) {
            throw new AssertionError();
        }
    }

    public static int b(float f) {
        int i = 0;
        while (i < 31 && (1 << i) <= f) {
            i++;
        }
        return i - 1;
    }

    public static int b(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
        return Integer.highestOneBit(i);
    }
}
