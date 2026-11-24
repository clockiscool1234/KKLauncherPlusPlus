package com.android.a.b;

import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f39a = Charset.forName("US-ASCII");
    private static final short r = c.a(c.d);
    private static final short s = c.a(c.e);
    private static final short t = c.a(c.h);
    private static final short u = c.a(c.f);
    private static final short v = c.a(c.g);
    private static final short w = c.a(c.f38a);
    private static final short x = c.a(c.c);
    private final a b;
    private final int c;
    private int f;
    private j g;
    private h h;
    private j i;
    private j j;
    private boolean k;
    private boolean l;
    private int m;
    private byte[] n;
    private int o;
    private int p;
    private final c q;
    private int d = 0;
    private int e = 0;
    private final TreeMap y = new TreeMap();

    private e(InputStream inputStream, int i, c cVar) throws d, IOException {
        this.l = false;
        if (inputStream == null) {
            throw new IOException("Null argument inputStream to ExifParser");
        }
        this.q = cVar;
        this.l = a(inputStream);
        this.b = new a(inputStream);
        this.c = 63;
        if (this.l) {
            short sC = this.b.c();
            if (18761 == sC) {
                this.b.a(ByteOrder.LITTLE_ENDIAN);
            } else {
                if (19789 != sC) {
                    throw new d("Invalid TIFF header");
                }
                this.b.a(ByteOrder.BIG_ENDIAN);
            }
            if (this.b.c() != 42) {
                throw new d("Invalid TIFF header");
            }
            long jF = this.b.f();
            if (jF > 2147483647L) {
                throw new d("Invalid offset " + jF);
            }
            this.o = (int) jF;
            this.f = 0;
            if (a(0) || j()) {
                a(0, jF);
                if (jF != 8) {
                    this.n = new byte[((int) jF) - 8];
                    a(this.n);
                }
            }
        }
    }

    protected static e a(InputStream inputStream, c cVar) {
        return new e(inputStream, 63, cVar);
    }

    private void a(int i, long j) {
        this.y.put(Integer.valueOf((int) j), new g(i, a(i)));
    }

    private boolean a(int i) {
        switch (i) {
            case 0:
                return (this.c & 1) != 0;
            case 1:
                return (this.c & 2) != 0;
            case 2:
                return (this.c & 4) != 0;
            case 3:
                return (this.c & 16) != 0;
            case 4:
                return (this.c & 8) != 0;
            default:
                return false;
        }
    }

    private boolean a(int i, int i2) {
        int i3 = this.q.a().get(i2);
        if (i3 == 0) {
            return false;
        }
        return c.a(i3, i);
    }

    private boolean a(InputStream inputStream) throws d, EOFException {
        a aVar = new a(inputStream);
        if (aVar.c() != -40) {
            throw new d("Invalid JPEG format");
        }
        short sC = aVar.c();
        while (true) {
            short s2 = sC;
            if (s2 == -39) {
                break;
            }
            if ((s2 < -64 || s2 > -49 || s2 == -60 || s2 == -56 || s2 == -52) ? false : true) {
                break;
            }
            int iD = aVar.d();
            if (s2 == -31 && iD >= 8) {
                int iE = aVar.e();
                short sC2 = aVar.c();
                iD -= 6;
                if (iE == 1165519206 && sC2 == 0) {
                    this.p = aVar.a();
                    this.m = iD;
                    int i = this.p;
                    int i2 = this.m;
                    return true;
                }
            }
            if (iD < 2 || iD - 2 != aVar.skip(iD - 2)) {
                Log.w("ExifParser", "Invalid JPEG format.");
                return false;
            }
            sC = aVar.c();
        }
        return false;
    }

    private void b(int i) throws EOFException {
        this.b.a(i);
        while (!this.y.isEmpty() && ((Integer) this.y.firstKey()).intValue() < i) {
            this.y.pollFirstEntry();
        }
    }

    private void b(int i, long j) {
        this.y.put(Integer.valueOf((int) j), new h(4, i));
    }

    private void c(j jVar) {
        if (jVar.e() == 0) {
            return;
        }
        short sB = jVar.b();
        int iA = jVar.a();
        if (sB == r && a(iA, c.d)) {
            if (a(2) || a(3)) {
                a(2, jVar.d(0));
                return;
            }
            return;
        }
        if (sB == s && a(iA, c.e)) {
            if (a(4)) {
                a(4, jVar.d(0));
                return;
            }
            return;
        }
        if (sB == t && a(iA, c.h)) {
            if (a(3)) {
                a(3, jVar.d(0));
                return;
            }
            return;
        }
        if (sB == u && a(iA, c.f)) {
            if (h()) {
                this.y.put(Integer.valueOf((int) jVar.d(0)), new h(3));
                return;
            }
            return;
        }
        if (sB == v && a(iA, c.g)) {
            if (h()) {
                this.j = jVar;
                return;
            }
            return;
        }
        if (sB != w || !a(iA, c.f38a)) {
            if (sB == x && a(iA, c.c) && h() && jVar.f()) {
                this.i = jVar;
                return;
            }
            return;
        }
        if (h()) {
            if (!jVar.f()) {
                this.y.put(Integer.valueOf(jVar.h()), new f(jVar, false));
                return;
            }
            for (int i = 0; i < jVar.e(); i++) {
                jVar.c();
                b(i, jVar.d(i));
            }
        }
    }

    private boolean h() {
        return (this.c & 32) != 0;
    }

    private void i() throws EOFException {
        int i = (this.e * 12) + this.d + 2;
        int iA = this.b.a();
        if (iA > i) {
            return;
        }
        if (this.k) {
            while (iA < i) {
                this.g = k();
                iA += 12;
                if (this.g != null) {
                    c(this.g);
                }
            }
        } else {
            b(i);
        }
        long jL = l();
        if (this.f == 0) {
            if ((a(1) || h()) && jL > 0) {
                a(1, jL);
            }
        }
    }

    private boolean j() {
        switch (this.f) {
            case 0:
                return a(2) || a(4) || a(3) || a(1);
            case 1:
                return h();
            case 2:
                return a(3);
            default:
                return false;
        }
    }

    private j k() throws d, IOException {
        short sC = this.b.c();
        short sC2 = this.b.c();
        long jF = this.b.f();
        if (jF > 2147483647L) {
            throw new d("Number of component is larger then Integer.MAX_VALUE");
        }
        if (!j.a(sC2)) {
            Log.w("ExifParser", String.format("Tag %04x: Invalid data type %d", Short.valueOf(sC), Short.valueOf(sC2)));
            this.b.skip(4L);
            return null;
        }
        j jVar = new j(sC, sC2, (int) jF, this.f, ((int) jF) != 0);
        int iD = jVar.d();
        if (iD <= 4) {
            boolean zI = jVar.i();
            jVar.a(false);
            b(jVar);
            jVar.a(zI);
            this.b.skip(4 - iD);
            jVar.e(this.b.a() - 4);
            return jVar;
        }
        long jF2 = this.b.f();
        if (jF2 > 2147483647L) {
            throw new d("offset is larger then Integer.MAX_VALUE");
        }
        if (jF2 >= this.o || sC2 != 7) {
            jVar.e((int) jF2);
            return jVar;
        }
        byte[] bArr = new byte[(int) jF];
        System.arraycopy(this.n, ((int) jF2) - 8, bArr, 0, (int) jF);
        jVar.a(bArr);
        return jVar;
    }

    private long l() {
        return ((long) this.b.e()) & 4294967295L;
    }

    protected final int a() {
        while (this.l) {
            int iA = this.b.a();
            int i = this.d + 2 + (this.e * 12);
            if (iA >= i) {
                if (iA == i) {
                    if (this.f == 0) {
                        long jL = l();
                        if ((a(1) || h()) && jL != 0) {
                            a(1, jL);
                        }
                    } else {
                        int iIntValue = this.y.size() > 0 ? ((Integer) this.y.firstEntry().getKey()).intValue() - this.b.a() : 4;
                        if (iIntValue < 4) {
                            Log.w("ExifParser", "Invalid size of link to next IFD: " + iIntValue);
                        } else {
                            long jL2 = l();
                            if (jL2 != 0) {
                                Log.w("ExifParser", "Invalid link to next IFD: " + jL2);
                            }
                        }
                    }
                }
                while (this.y.size() != 0) {
                    Map.Entry entryPollFirstEntry = this.y.pollFirstEntry();
                    Object value = entryPollFirstEntry.getValue();
                    try {
                        b(((Integer) entryPollFirstEntry.getKey()).intValue());
                        if (value instanceof g) {
                            this.f = ((g) value).f41a;
                            this.e = this.b.d();
                            this.d = ((Integer) entryPollFirstEntry.getKey()).intValue();
                            if ((this.e * 12) + this.d + 2 > this.m) {
                                Log.w("ExifParser", "Invalid size of IFD " + this.f);
                                return 5;
                            }
                            this.k = j();
                            if (((g) value).b) {
                                return 0;
                            }
                            i();
                        } else {
                            if (value instanceof h) {
                                this.h = (h) value;
                                return this.h.b;
                            }
                            f fVar = (f) value;
                            this.g = fVar.f40a;
                            if (this.g.c() != 7) {
                                b(this.g);
                                c(this.g);
                            }
                            if (fVar.b) {
                                return 2;
                            }
                        }
                    } catch (IOException e) {
                        Log.w("ExifParser", "Failed to skip to data at: " + entryPollFirstEntry.getKey() + " for " + value.getClass().getName() + ", the file may be broken.");
                    }
                }
                return 5;
            }
            this.g = k();
            if (this.g != null) {
                if (!this.k) {
                    return 1;
                }
                c(this.g);
                return 1;
            }
        }
        return 5;
    }

    protected final int a(byte[] bArr) {
        return this.b.read(bArr);
    }

    protected final void a(j jVar) {
        if (jVar.h() >= this.b.a()) {
            this.y.put(Integer.valueOf(jVar.h()), new f(jVar, true));
        }
    }

    protected final j b() {
        return this.g;
    }

    protected final void b(j jVar) {
        int i = 0;
        short sC = jVar.c();
        if (sC == 2 || sC == 7 || sC == 1) {
            int iE = jVar.e();
            if (this.y.size() > 0 && ((Integer) this.y.firstEntry().getKey()).intValue() < iE + this.b.a()) {
                Object value = this.y.firstEntry().getValue();
                if (value instanceof h) {
                    Log.w("ExifParser", "Thumbnail overlaps value for tag: \n" + jVar.toString());
                    Log.w("ExifParser", "Invalid thumbnail offset: " + this.y.pollFirstEntry().getKey());
                } else {
                    if (value instanceof g) {
                        Log.w("ExifParser", "Ifd " + ((g) value).f41a + " overlaps value for tag: \n" + jVar.toString());
                    } else if (value instanceof f) {
                        Log.w("ExifParser", "Tag value for tag: \n" + ((f) value).f40a.toString() + " overlaps value for tag: \n" + jVar.toString());
                    }
                    int iIntValue = ((Integer) this.y.firstEntry().getKey()).intValue() - this.b.a();
                    Log.w("ExifParser", "Invalid size of tag: \n" + jVar.toString() + " setting count to: " + iIntValue);
                    jVar.c(iIntValue);
                }
            }
        }
        switch (jVar.c()) {
            case 1:
            case 7:
                byte[] bArr = new byte[jVar.e()];
                a(bArr);
                jVar.a(bArr);
                break;
            case 2:
                int iE2 = jVar.e();
                jVar.a(iE2 > 0 ? this.b.a(iE2, f39a) : "");
                break;
            case 3:
                int[] iArr = new int[jVar.e()];
                int length = iArr.length;
                while (i < length) {
                    iArr[i] = this.b.c() & 65535;
                    i++;
                }
                jVar.a(iArr);
                break;
            case 4:
                long[] jArr = new long[jVar.e()];
                int length2 = jArr.length;
                while (i < length2) {
                    jArr[i] = l();
                    i++;
                }
                jVar.a(jArr);
                break;
            case 5:
                l[] lVarArr = new l[jVar.e()];
                int length3 = lVarArr.length;
                while (i < length3) {
                    lVarArr[i] = new l(l(), l());
                    i++;
                }
                jVar.a(lVarArr);
                break;
            case 9:
                int[] iArr2 = new int[jVar.e()];
                int length4 = iArr2.length;
                while (i < length4) {
                    iArr2[i] = this.b.e();
                    i++;
                }
                jVar.a(iArr2);
                break;
            case 10:
                l[] lVarArr2 = new l[jVar.e()];
                int length5 = lVarArr2.length;
                for (int i2 = 0; i2 < length5; i2++) {
                    lVarArr2[i2] = new l(this.b.e(), this.b.e());
                }
                jVar.a(lVarArr2);
                break;
        }
    }

    protected final int c() {
        return this.f;
    }

    protected final int d() {
        return this.h.f42a;
    }

    protected final int e() {
        if (this.i == null) {
            return 0;
        }
        return (int) this.i.d(0);
    }

    protected final int f() {
        if (this.j == null) {
            return 0;
        }
        return (int) this.j.d(0);
    }

    protected final ByteOrder g() {
        return this.b.b();
    }
}
