package com.android.a.c;

import android.graphics.Bitmap;
import android.opengl.GLUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends a {
    private static HashMap e = new HashMap();
    private static l f = new l((byte) 0);
    private boolean g;
    private boolean h;
    private boolean i;
    private Bitmap j;
    private int k;

    protected k() {
        this(false);
    }

    protected k(boolean z) {
        super(null, 0, 0);
        this.g = true;
        this.h = true;
        this.i = false;
        if (z) {
            a(true);
            this.k = 1;
        }
    }

    private static Bitmap a(boolean z, Bitmap.Config config, int i) {
        l lVar = f;
        lVar.f51a = z;
        lVar.b = config;
        lVar.c = i;
        Bitmap bitmapCreateBitmap = (Bitmap) e.get(lVar);
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = z ? Bitmap.createBitmap(1, i, config) : Bitmap.createBitmap(i, 1, config);
            e.put(lVar.clone(), bitmapCreateBitmap);
        }
        return bitmapCreateBitmap;
    }

    private Bitmap o() {
        if (this.j == null) {
            this.j = a_();
            int width = this.j.getWidth() + (this.k << 1);
            int height = this.j.getHeight() + (this.k << 1);
            if (this.c == -1) {
                a(width, height);
            }
        }
        return this.j;
    }

    private void p() {
        if (this.j == null) {
            throw new AssertionError();
        }
        a(this.j);
        this.j = null;
    }

    protected abstract void a(Bitmap bitmap);

    protected abstract Bitmap a_();

    @Override // com.android.a.c.a
    protected final boolean b(c cVar) {
        c(cVar);
        return n();
    }

    @Override // com.android.a.c.a
    public final int c() {
        if (this.c == -1) {
            o();
        }
        return this.c;
    }

    public final void c(c cVar) {
        boolean z = false;
        if (i()) {
            if (this.g) {
                return;
            }
            Bitmap bitmapO = o();
            cVar.a(this, this.k, this.k, bitmapO, GLUtils.getInternalFormat(bitmapO), GLUtils.getType(bitmapO));
            p();
            this.g = true;
            return;
        }
        Bitmap bitmapO2 = o();
        if (bitmapO2 == null) {
            this.b = -1;
            throw new RuntimeException("Texture load fail, no bitmap");
        }
        try {
            int width = bitmapO2.getWidth();
            int height = bitmapO2.getHeight();
            int i = this.k;
            int i2 = this.k;
            int iE = e();
            int iF = f();
            if (width <= iE && height <= iF) {
                z = true;
            }
            if (!z) {
                throw new AssertionError();
            }
            this.f47a = cVar.a().a();
            cVar.b(this);
            if (width == iE && height == iF) {
                cVar.a(this, bitmapO2);
            } else {
                int internalFormat = GLUtils.getInternalFormat(bitmapO2);
                int type = GLUtils.getType(bitmapO2);
                Bitmap.Config config = bitmapO2.getConfig();
                cVar.a(this, internalFormat, type);
                cVar.a(this, this.k, this.k, bitmapO2, internalFormat, type);
                if (this.k > 0) {
                    cVar.a(this, 0, 0, a(true, config, iF), internalFormat, type);
                    cVar.a(this, 0, 0, a(false, config, iE), internalFormat, type);
                }
                if (this.k + width < iE) {
                    cVar.a(this, this.k + width, 0, a(true, config, iF), internalFormat, type);
                }
                if (this.k + height < iF) {
                    cVar.a(this, 0, this.k + height, a(false, config, iE), internalFormat, type);
                }
            }
            p();
            a(cVar);
            this.b = 1;
            this.g = true;
        } catch (Throwable th) {
            p();
            throw th;
        }
    }

    @Override // com.android.a.c.a
    public final int d() {
        if (this.c == -1) {
            o();
        }
        return this.d;
    }

    @Override // com.android.a.c.a
    protected final int h() {
        return 3553;
    }

    @Override // com.android.a.c.a
    public final void j() {
        super.j();
        if (this.j != null) {
            p();
        }
    }

    @Override // com.android.a.c.j
    public final boolean l() {
        return this.h;
    }

    protected final void m() {
        if (this.j != null) {
            p();
        }
        this.g = false;
        this.c = -1;
        this.d = -1;
    }

    public final boolean n() {
        return i() && this.g;
    }
}
