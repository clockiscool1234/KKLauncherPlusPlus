package com.android.a.b;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
class a extends FilterInputStream {
    private static /* synthetic */ boolean d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f36a;
    private final byte[] b;
    private final ByteBuffer c;

    static {
        d = !a.class.desiredAssertionStatus();
    }

    protected a(InputStream inputStream) {
        super(inputStream);
        this.f36a = 0;
        this.b = new byte[8];
        this.c = ByteBuffer.wrap(this.b);
    }

    private void a(byte[] bArr, int i, int i2) throws EOFException {
        if (read(bArr, 0, i2) != i2) {
            throw new EOFException();
        }
    }

    public final int a() {
        return this.f36a;
    }

    public final String a(int i, Charset charset) throws EOFException {
        byte[] bArr = new byte[i];
        a(bArr, 0, bArr.length);
        return new String(bArr, charset);
    }

    public final void a(long j) throws EOFException {
        long j2 = j - ((long) this.f36a);
        if (!d && j2 < 0) {
            throw new AssertionError();
        }
        if (skip(j2) != j2) {
            throw new EOFException();
        }
    }

    public final void a(ByteOrder byteOrder) {
        this.c.order(byteOrder);
    }

    public final ByteOrder b() {
        return this.c.order();
    }

    public final short c() throws EOFException {
        a(this.b, 0, 2);
        this.c.rewind();
        return this.c.getShort();
    }

    public final int d() {
        return c() & 65535;
    }

    public final int e() throws EOFException {
        a(this.b, 0, 4);
        this.c.rewind();
        return this.c.getInt();
    }

    public final long f() {
        return ((long) e()) & 4294967295L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = this.in.read();
        this.f36a = (i >= 0 ? 1 : 0) + this.f36a;
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = this.in.read(bArr);
        this.f36a = (i >= 0 ? i : 0) + this.f36a;
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.in.read(bArr, i, i2);
        this.f36a = (i3 >= 0 ? i3 : 0) + this.f36a;
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = this.in.skip(j);
        this.f36a = (int) (((long) this.f36a) + jSkip);
        return jSkip;
    }
}
