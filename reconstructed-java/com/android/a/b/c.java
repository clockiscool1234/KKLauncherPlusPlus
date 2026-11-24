package com.android.a.b;

import android.util.SparseIntArray;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashSet;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static HashSet bp;
    private static HashSet bq;
    private static ByteOrder bs;
    private b br = new b(bs);
    private final DateFormat bt;
    private SparseIntArray bu;
    private static int i = a(0, (short) 256);
    private static int j = a(0, (short) 257);
    private static int k = a(0, (short) 258);
    private static int l = a(0, (short) 259);
    private static int m = a(0, (short) 262);
    private static int n = a(0, (short) 270);
    private static int o = a(0, (short) 271);
    private static int p = a(0, (short) 272);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f38a = a(0, (short) 273);
    public static final int b = a(0, (short) 274);
    private static int q = a(0, (short) 277);
    private static int r = a(0, (short) 278);
    public static final int c = a(0, (short) 279);
    private static int s = a(0, (short) 282);
    private static int t = a(0, (short) 283);
    private static int u = a(0, (short) 284);
    private static int v = a(0, (short) 296);
    private static int w = a(0, (short) 301);
    private static int x = a(0, (short) 305);
    private static int y = a(0, (short) 306);
    private static int z = a(0, (short) 315);
    private static int A = a(0, (short) 318);
    private static int B = a(0, (short) 319);
    private static int C = a(0, (short) 529);
    private static int D = a(0, (short) 530);
    private static int E = a(0, (short) 531);
    private static int F = a(0, (short) 532);
    private static int G = a(0, (short) -32104);
    public static final int d = a(0, (short) -30871);
    public static final int e = a(0, (short) -30683);
    public static final int f = a(1, (short) 513);
    public static final int g = a(1, (short) 514);
    private static int H = a(2, (short) -32102);
    private static int I = a(2, (short) -32099);
    private static int J = a(2, (short) -30686);
    private static int K = a(2, (short) -30684);
    private static int L = a(2, (short) -30681);
    private static int M = a(2, (short) -30680);
    private static int N = a(2, (short) -28672);
    private static int O = a(2, (short) -28669);
    private static int P = a(2, (short) -28668);
    private static int Q = a(2, (short) -28415);
    private static int R = a(2, (short) -28414);
    private static int S = a(2, (short) -28159);
    private static int T = a(2, (short) -28158);
    private static int U = a(2, (short) -28157);
    private static int V = a(2, (short) -28156);
    private static int W = a(2, (short) -28155);
    private static int X = a(2, (short) -28154);
    private static int Y = a(2, (short) -28153);
    private static int Z = a(2, (short) -28152);
    private static int aa = a(2, (short) -28151);
    private static int ab = a(2, (short) -28150);
    private static int ac = a(2, (short) -28140);
    private static int ad = a(2, (short) -28036);
    private static int ae = a(2, (short) -28026);
    private static int af = a(2, (short) -28016);
    private static int ag = a(2, (short) -28015);
    private static int ah = a(2, (short) -28014);
    private static int ai = a(2, (short) -24576);
    private static int aj = a(2, (short) -24575);
    private static int ak = a(2, (short) -24574);
    private static int al = a(2, (short) -24573);
    private static int am = a(2, (short) -24572);
    public static final int h = a(2, (short) -24571);
    private static int an = a(2, (short) -24053);
    private static int ao = a(2, (short) -24052);
    private static int ap = a(2, (short) -24050);
    private static int aq = a(2, (short) -24049);
    private static int ar = a(2, (short) -24048);
    private static int as = a(2, (short) -24044);
    private static int at = a(2, (short) -24043);
    private static int au = a(2, (short) -24041);
    private static int av = a(2, (short) -23808);
    private static int aw = a(2, (short) -23807);
    private static int ax = a(2, (short) -23806);
    private static int ay = a(2, (short) -23551);
    private static int az = a(2, (short) -23550);
    private static int aA = a(2, (short) -23549);
    private static int aB = a(2, (short) -23548);
    private static int aC = a(2, (short) -23547);
    private static int aD = a(2, (short) -23546);
    private static int aE = a(2, (short) -23545);
    private static int aF = a(2, (short) -23544);
    private static int aG = a(2, (short) -23543);
    private static int aH = a(2, (short) -23542);
    private static int aI = a(2, (short) -23541);
    private static int aJ = a(2, (short) -23540);
    private static int aK = a(2, (short) -23520);
    private static int aL = a(4, (short) 0);
    private static int aM = a(4, (short) 1);
    private static int aN = a(4, (short) 2);
    private static int aO = a(4, (short) 3);
    private static int aP = a(4, (short) 4);
    private static int aQ = a(4, (short) 5);
    private static int aR = a(4, (short) 6);
    private static int aS = a(4, (short) 7);
    private static int aT = a(4, (short) 8);
    private static int aU = a(4, (short) 9);
    private static int aV = a(4, (short) 10);
    private static int aW = a(4, (short) 11);
    private static int aX = a(4, (short) 12);
    private static int aY = a(4, (short) 13);
    private static int aZ = a(4, (short) 14);
    private static int ba = a(4, (short) 15);
    private static int bb = a(4, (short) 16);
    private static int bc = a(4, (short) 17);
    private static int bd = a(4, (short) 18);
    private static int be = a(4, (short) 19);
    private static int bf = a(4, (short) 20);
    private static int bg = a(4, (short) 23);
    private static int bh = a(4, (short) 24);
    private static int bi = a(4, (short) 25);
    private static int bj = a(4, (short) 26);
    private static int bk = a(4, (short) 27);
    private static int bl = a(4, (short) 28);
    private static int bm = a(4, (short) 29);
    private static int bn = a(4, (short) 30);
    private static int bo = a(3, (short) 1);

    static {
        HashSet hashSet = new HashSet();
        bp = hashSet;
        hashSet.add(Short.valueOf((short) e));
        bp.add(Short.valueOf((short) d));
        bp.add(Short.valueOf((short) f));
        bp.add(Short.valueOf((short) h));
        bp.add(Short.valueOf((short) f38a));
        HashSet hashSet2 = new HashSet(bp);
        bq = hashSet2;
        hashSet2.add(Short.valueOf((short) (-1)));
        bq.add(Short.valueOf((short) g));
        bq.add(Short.valueOf((short) c));
        bs = ByteOrder.BIG_ENDIAN;
    }

    public c() {
        new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
        this.bt = new SimpleDateFormat("yyyy:MM:dd");
        Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        this.bu = null;
        this.bt.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private static int a(int i2, short s2) {
        return (65535 & s2) | (i2 << 16);
    }

    private static int a(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        int[] iArrA = k.a();
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 : iArr) {
                if (iArrA[i3] == i4) {
                    i2 |= 1 << i3;
                    break;
                }
            }
        }
        return i2;
    }

    public static short a(int i2) {
        return (short) i2;
    }

    protected static boolean a(int i2, int i3) {
        int[] iArrA = k.a();
        int i4 = i2 >>> 24;
        for (int i5 = 0; i5 < iArrA.length; i5++) {
            if (i3 == iArrA[i5] && ((i4 >> i5) & 1) == 1) {
                return true;
            }
        }
        return false;
    }

    protected static boolean a(short s2) {
        return bp.contains(Short.valueOf(s2));
    }

    public static int b(short s2) {
        switch (s2) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 7:
            default:
                return 0;
            case 3:
                return 180;
            case 6:
                return 90;
            case 8:
                return 270;
        }
    }

    protected final SparseIntArray a() {
        if (this.bu == null) {
            this.bu = new SparseIntArray();
            int iA = a(new int[]{0, 1}) << 24;
            this.bu.put(o, iA | 131072);
            this.bu.put(i, iA | 262144 | 1);
            this.bu.put(j, iA | 262144 | 1);
            this.bu.put(k, iA | 196608 | 3);
            this.bu.put(l, iA | 196608 | 1);
            this.bu.put(m, iA | 196608 | 1);
            this.bu.put(b, iA | 196608 | 1);
            this.bu.put(q, iA | 196608 | 1);
            this.bu.put(u, iA | 196608 | 1);
            this.bu.put(D, iA | 196608 | 2);
            this.bu.put(E, iA | 196608 | 1);
            this.bu.put(s, iA | 327680 | 1);
            this.bu.put(t, iA | 327680 | 1);
            this.bu.put(v, iA | 196608 | 1);
            this.bu.put(f38a, iA | 262144);
            this.bu.put(r, iA | 262144 | 1);
            this.bu.put(c, iA | 262144);
            this.bu.put(w, iA | 196608 | 768);
            this.bu.put(A, iA | 327680 | 2);
            this.bu.put(B, iA | 327680 | 6);
            this.bu.put(C, iA | 327680 | 3);
            this.bu.put(F, iA | 327680 | 6);
            this.bu.put(y, iA | 131072 | 20);
            this.bu.put(n, iA | 131072);
            this.bu.put(o, iA | 131072);
            this.bu.put(p, iA | 131072);
            this.bu.put(x, iA | 131072);
            this.bu.put(z, iA | 131072);
            this.bu.put(G, iA | 131072);
            this.bu.put(d, iA | 262144 | 1);
            this.bu.put(e, iA | 262144 | 1);
            int iA2 = a(new int[]{1}) << 24;
            this.bu.put(f, iA2 | 262144 | 1);
            this.bu.put(g, iA2 | 262144 | 1);
            int iA3 = a(new int[]{2}) << 24;
            this.bu.put(N, iA3 | 458752 | 4);
            this.bu.put(ai, iA3 | 458752 | 4);
            this.bu.put(aj, iA3 | 196608 | 1);
            this.bu.put(Q, iA3 | 458752 | 4);
            this.bu.put(R, iA3 | 327680 | 1);
            this.bu.put(ak, iA3 | 262144 | 1);
            this.bu.put(al, iA3 | 262144 | 1);
            this.bu.put(ad, iA3 | 458752);
            this.bu.put(ae, iA3 | 458752);
            this.bu.put(am, iA3 | 131072 | 13);
            this.bu.put(O, iA3 | 131072 | 20);
            this.bu.put(P, iA3 | 131072 | 20);
            this.bu.put(af, iA3 | 131072);
            this.bu.put(ag, iA3 | 131072);
            this.bu.put(ah, iA3 | 131072);
            this.bu.put(aK, iA3 | 131072 | 33);
            this.bu.put(H, iA3 | 327680 | 1);
            this.bu.put(I, iA3 | 327680 | 1);
            this.bu.put(J, iA3 | 196608 | 1);
            this.bu.put(K, iA3 | 131072);
            this.bu.put(L, iA3 | 196608);
            this.bu.put(M, iA3 | 458752);
            this.bu.put(S, 655360 | iA3 | 1);
            this.bu.put(T, iA3 | 327680 | 1);
            this.bu.put(U, 655360 | iA3 | 1);
            this.bu.put(V, 655360 | iA3 | 1);
            this.bu.put(W, iA3 | 327680 | 1);
            this.bu.put(X, iA3 | 327680 | 1);
            this.bu.put(Y, iA3 | 196608 | 1);
            this.bu.put(Z, iA3 | 196608 | 1);
            this.bu.put(aa, iA3 | 196608 | 1);
            this.bu.put(ab, iA3 | 327680 | 1);
            this.bu.put(ac, iA3 | 196608);
            this.bu.put(an, iA3 | 327680 | 1);
            this.bu.put(ao, iA3 | 458752);
            this.bu.put(ap, iA3 | 327680 | 1);
            this.bu.put(aq, iA3 | 327680 | 1);
            this.bu.put(ar, iA3 | 196608 | 1);
            this.bu.put(as, iA3 | 196608 | 2);
            this.bu.put(at, iA3 | 327680 | 1);
            this.bu.put(au, iA3 | 196608 | 1);
            this.bu.put(av, iA3 | 458752 | 1);
            this.bu.put(aw, iA3 | 458752 | 1);
            this.bu.put(ax, iA3 | 458752);
            this.bu.put(ay, iA3 | 196608 | 1);
            this.bu.put(az, iA3 | 196608 | 1);
            this.bu.put(aA, iA3 | 196608 | 1);
            this.bu.put(aB, iA3 | 327680 | 1);
            this.bu.put(aC, iA3 | 196608 | 1);
            this.bu.put(aD, iA3 | 196608 | 1);
            this.bu.put(aE, iA3 | 327680 | 1);
            this.bu.put(aF, iA3 | 196608 | 1);
            this.bu.put(aG, iA3 | 196608 | 1);
            this.bu.put(aH, iA3 | 196608 | 1);
            this.bu.put(aI, iA3 | 458752);
            this.bu.put(aJ, iA3 | 196608 | 1);
            this.bu.put(h, iA3 | 262144 | 1);
            int iA4 = a(new int[]{4}) << 24;
            this.bu.put(aL, 65536 | iA4 | 4);
            this.bu.put(aM, iA4 | 131072 | 2);
            this.bu.put(aO, iA4 | 131072 | 2);
            this.bu.put(aN, 655360 | iA4 | 3);
            this.bu.put(aP, 655360 | iA4 | 3);
            this.bu.put(aQ, 65536 | iA4 | 1);
            this.bu.put(aR, iA4 | 327680 | 1);
            this.bu.put(aS, iA4 | 327680 | 3);
            this.bu.put(aT, iA4 | 131072);
            this.bu.put(aU, iA4 | 131072 | 2);
            this.bu.put(aV, iA4 | 131072 | 2);
            this.bu.put(aW, iA4 | 327680 | 1);
            this.bu.put(aX, iA4 | 131072 | 2);
            this.bu.put(aY, iA4 | 327680 | 1);
            this.bu.put(aZ, iA4 | 131072 | 2);
            this.bu.put(ba, iA4 | 327680 | 1);
            this.bu.put(bb, iA4 | 131072 | 2);
            this.bu.put(bc, iA4 | 327680 | 1);
            this.bu.put(bd, iA4 | 131072);
            this.bu.put(be, iA4 | 131072 | 2);
            this.bu.put(bf, iA4 | 327680 | 1);
            this.bu.put(bg, iA4 | 131072 | 2);
            this.bu.put(bh, iA4 | 327680 | 1);
            this.bu.put(bi, iA4 | 131072 | 2);
            this.bu.put(bj, iA4 | 327680 | 1);
            this.bu.put(bk, iA4 | 458752);
            this.bu.put(bl, iA4 | 458752);
            this.bu.put(bm, iA4 | 131072 | 11);
            this.bu.put(bn, iA4 | 196608 | 11);
            this.bu.put(bo, (a(new int[]{3}) << 24) | 131072);
        }
        return this.bu;
    }

    public final void a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        try {
            this.br = new i(this).a(inputStream);
        } catch (d e2) {
            throw new IOException("Invalid exif format : " + e2);
        }
    }

    public final void a(String str) throws IOException {
        BufferedInputStream bufferedInputStream;
        if (str == null) {
            throw new IllegalArgumentException("Argument is null");
        }
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
            try {
                a(bufferedInputStream);
                bufferedInputStream.close();
            } catch (IOException e2) {
                e = e2;
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th) {
                    }
                }
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedInputStream = null;
        }
    }

    public final Integer b(int i2) {
        int i3 = a().get(i2) == 0 ? -1 : i2 >>> 16;
        j jVarA = !j.a(i3) ? null : this.br.a((short) i2, i3);
        int[] iArrG = jVarA == null ? null : jVarA.g();
        if (iArrG == null || iArrG.length <= 0) {
            return null;
        }
        return new Integer(iArrG[0]);
    }
}
