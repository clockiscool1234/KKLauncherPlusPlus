package com.android.a.b;

import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Charset f44a = Charset.forName("US-ASCII");
    private static final int[] b;
    private final short c;
    private final short d;
    private boolean e;
    private int f;
    private int g;
    private Object h = null;
    private int i;

    static {
        int[] iArr = new int[11];
        b = iArr;
        iArr[1] = 1;
        b[2] = 1;
        b[3] = 2;
        b[4] = 4;
        b[5] = 8;
        b[7] = 1;
        b[9] = 4;
        b[10] = 8;
        new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
    }

    j(short s, short s2, int i, int i2, boolean z) {
        this.c = s;
        this.d = s2;
        this.f = i;
        this.e = z;
        this.g = i2;
    }

    public static boolean a(int i) {
        return i == 0 || i == 1 || i == 2 || i == 3 || i == 4;
    }

    public static boolean a(short s) {
        return s == 1 || s == 2 || s == 3 || s == 4 || s == 5 || s == 7 || s == 9 || s == 10;
    }

    private static String b(short s) {
        switch (s) {
            case 1:
                return "UNSIGNED_BYTE";
            case 2:
                return "ASCII";
            case 3:
                return "UNSIGNED_SHORT";
            case 4:
                return "UNSIGNED_LONG";
            case 5:
                return "UNSIGNED_RATIONAL";
            case 6:
            case 8:
            default:
                return "";
            case 7:
                return "UNDEFINED";
            case 9:
                return "LONG";
            case 10:
                return "RATIONAL";
        }
    }

    private boolean f(int i) {
        return this.e && this.f != i;
    }

    public final int a() {
        return this.g;
    }

    protected final void a(boolean z) {
        this.e = z;
    }

    public final boolean a(String str) {
        if (this.d != 2 && this.d != 7) {
            return false;
        }
        byte[] bytes = str.getBytes(f44a);
        if (bytes.length > 0) {
            if (bytes[bytes.length - 1] != 0 && this.d != 7) {
                bytes = Arrays.copyOf(bytes, bytes.length + 1);
            }
        } else if (this.d == 2 && this.f == 1) {
            bytes = new byte[1];
        }
        int length = bytes.length;
        if (f(length)) {
            return false;
        }
        this.f = length;
        this.h = bytes;
        return true;
    }

    public final boolean a(byte[] bArr) {
        int length = bArr.length;
        if (f(length)) {
            return false;
        }
        if (this.d != 1 && this.d != 7) {
            return false;
        }
        this.h = new byte[length];
        System.arraycopy(bArr, 0, this.h, 0, length);
        this.f = length;
        return true;
    }

    public final boolean a(int[] iArr) {
        boolean z;
        boolean z2;
        if (f(iArr.length)) {
            return false;
        }
        if (this.d != 3 && this.d != 9 && this.d != 4) {
            return false;
        }
        if (this.d == 3) {
            int length = iArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = false;
                    break;
                }
                int i2 = iArr[i];
                if (i2 > 65535 || i2 < 0) {
                    z2 = true;
                    break;
                }
                i++;
            }
            if (z2) {
                return false;
            }
        }
        if (this.d == 4) {
            int length2 = iArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z = false;
                    break;
                }
                if (iArr[i3] < 0) {
                    z = true;
                    break;
                }
                i3++;
            }
            if (z) {
                return false;
            }
        }
        long[] jArr = new long[iArr.length];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            jArr[i4] = iArr[i4];
        }
        this.h = jArr;
        this.f = iArr.length;
        return true;
    }

    public final boolean a(long[] jArr) {
        boolean z;
        if (f(jArr.length) || this.d != 4) {
            return false;
        }
        int length = jArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            long j = jArr[i];
            if (j < 0 || j > 4294967295L) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            return false;
        }
        this.h = jArr;
        this.f = jArr.length;
        return true;
    }

    public final boolean a(l[] lVarArr) {
        boolean z;
        boolean z2;
        if (f(lVarArr.length)) {
            return false;
        }
        if (this.d != 5 && this.d != 10) {
            return false;
        }
        if (this.d == 5) {
            int length = lVarArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = false;
                    break;
                }
                l lVar = lVarArr[i];
                if (lVar.a() < 0 || lVar.b() < 0 || lVar.a() > 4294967295L || lVar.b() > 4294967295L) {
                    z2 = true;
                    break;
                }
                i++;
            }
            if (z2) {
                return false;
            }
        }
        if (this.d == 10) {
            int length2 = lVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z = false;
                    break;
                }
                l lVar2 = lVarArr[i2];
                if (lVar2.a() < -2147483648L || lVar2.b() < -2147483648L || lVar2.a() > 2147483647L || lVar2.b() > 2147483647L) {
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                return false;
            }
        }
        this.h = lVarArr;
        this.f = lVarArr.length;
        return true;
    }

    public final short b() {
        return this.c;
    }

    protected final void b(int i) {
        this.g = i;
    }

    public final short c() {
        return this.d;
    }

    protected final void c(int i) {
        this.f = i;
    }

    public final int d() {
        return this.f * b[this.d];
    }

    protected final long d(int i) {
        if (this.h instanceof long[]) {
            return ((long[]) this.h)[i];
        }
        if (this.h instanceof byte[]) {
            return ((byte[]) this.h)[i];
        }
        throw new IllegalArgumentException("Cannot get integer value from " + b(this.d));
    }

    public final int e() {
        return this.f;
    }

    protected final void e(int i) {
        this.i = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (jVar.c != this.c || jVar.f != this.f || jVar.d != this.d) {
            return false;
        }
        if (this.h == null) {
            return jVar.h == null;
        }
        if (jVar.h == null) {
            return false;
        }
        if (this.h instanceof long[]) {
            if (jVar.h instanceof long[]) {
                return Arrays.equals((long[]) this.h, (long[]) jVar.h);
            }
            return false;
        }
        if (this.h instanceof l[]) {
            if (jVar.h instanceof l[]) {
                return Arrays.equals((l[]) this.h, (l[]) jVar.h);
            }
            return false;
        }
        if (!(this.h instanceof byte[])) {
            return this.h.equals(jVar.h);
        }
        if (jVar.h instanceof byte[]) {
            return Arrays.equals((byte[]) this.h, (byte[]) jVar.h);
        }
        return false;
    }

    public final boolean f() {
        return this.h != null;
    }

    public final int[] g() {
        if (this.h == null || !(this.h instanceof long[])) {
            return null;
        }
        long[] jArr = (long[]) this.h;
        int[] iArr = new int[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            iArr[i] = (int) jArr[i];
        }
        return iArr;
    }

    protected final int h() {
        return this.i;
    }

    protected final boolean i() {
        return this.e;
    }

    public final String toString() {
        String string;
        StringBuilder sbAppend = new StringBuilder(String.valueOf(String.format("tag id: %04X\n", Short.valueOf(this.c)))).append("ifd id: ").append(this.g).append("\ntype: ").append(b(this.d)).append("\ncount: ").append(this.f).append("\noffset: ").append(this.i).append("\nvalue: ");
        if (this.h == null) {
            string = "";
        } else if (this.h instanceof byte[]) {
            string = this.d == 2 ? new String((byte[]) this.h, f44a) : Arrays.toString((byte[]) this.h);
        } else if (this.h instanceof long[]) {
            string = ((long[]) this.h).length == 1 ? String.valueOf(((long[]) this.h)[0]) : Arrays.toString((long[]) this.h);
        } else if (!(this.h instanceof Object[])) {
            string = this.h.toString();
        } else if (((Object[]) this.h).length == 1) {
            Object obj = ((Object[]) this.h)[0];
            string = obj == null ? "" : obj.toString();
        } else {
            string = Arrays.toString((Object[]) this.h);
        }
        return sbAppend.append(string).append("\n").toString();
    }
}
