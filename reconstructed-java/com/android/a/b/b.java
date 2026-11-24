package com.android.a.b;

import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class b {
    private byte[] b;
    private final ByteOrder d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k[] f37a = new k[5];
    private ArrayList c = new ArrayList();

    static {
        byte[] bArr = {65, 83, 67, 73, 73, 0, 0, 0};
        byte[] bArr2 = new byte[8];
        bArr2[0] = 74;
        bArr2[1] = 73;
        bArr2[2] = 83;
        byte[] bArr3 = {85, 78, 73, 67, 79, 68, 69, 0};
    }

    b(ByteOrder byteOrder) {
        this.d = byteOrder;
    }

    protected final j a(short s, int i) {
        k kVar = this.f37a[i];
        if (kVar == null) {
            return null;
        }
        return kVar.a(s);
    }

    protected final k a(int i) {
        if (j.a(i)) {
            return this.f37a[i];
        }
        return null;
    }

    protected final void a(int i, byte[] bArr) {
        if (i < this.c.size()) {
            this.c.set(i, bArr);
            return;
        }
        for (int size = this.c.size(); size < i; size++) {
            this.c.add(null);
        }
        this.c.add(bArr);
    }

    protected final void a(k kVar) {
        this.f37a[kVar.b()] = kVar;
    }

    protected final void a(byte[] bArr) {
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (bVar.d != this.d || bVar.c.size() != this.c.size() || !Arrays.equals(bVar.b, this.b)) {
            return false;
        }
        for (int i = 0; i < this.c.size(); i++) {
            if (!Arrays.equals((byte[]) bVar.c.get(i), (byte[]) this.c.get(i))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            k kVarA = bVar.a(i2);
            k kVarA2 = a(i2);
            if (kVarA != kVarA2 && kVarA != null && !kVarA.equals(kVarA2)) {
                return false;
            }
        }
        return true;
    }
}
