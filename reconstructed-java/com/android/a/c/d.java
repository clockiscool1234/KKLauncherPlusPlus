package com.android.a.c;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f48a = d.class.getSimpleName();
    private static final float[] b = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f};
    private static final h z = new h();
    private int h;
    private int i;
    private int k;
    private int l;
    private int m;
    private int s;
    private ArrayList t;
    private final float[] u;
    private final RectF v;
    private final RectF w;
    private final float[] x;
    private final int[] y;
    private float[] c = new float[128];
    private float[] d = new float[8];
    private com.android.a.d.a e = new com.android.a.d.a();
    private int f = 0;
    private int g = 0;
    private float[] j = new float[16];
    private f[] n = {new e("aPosition"), new g("uMatrix"), new g("uColor")};
    private f[] o = {new e("aPosition"), new g("uMatrix"), new g("uTextureMatrix"), new g("uTextureSampler"), new g("uAlpha")};
    private f[] p = {new e("aPosition"), new g("uMatrix"), new g("uTextureMatrix"), new g("uTextureSampler"), new g("uAlpha")};
    private f[] q = {new e("aPosition"), new g("uMatrix"), new e("aTextureCoordinate"), new g("uTextureSampler"), new g("uAlpha")};
    private final com.android.a.d.a r = new com.android.a.d.a();

    static {
        float[] fArr = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f};
    }

    public d() {
        new com.android.a.d.a();
        this.s = 0;
        this.t = new ArrayList();
        this.u = new float[32];
        this.v = new RectF();
        this.w = new RectF();
        this.x = new float[16];
        this.y = new int[1];
        Matrix.setIdentityM(this.x, 0);
        Matrix.setIdentityM(this.c, this.g);
        this.d[this.f] = 1.0f;
        this.t.add(null);
        float[] fArr = b;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr, 0, fArr.length).position(0);
        z.a(1, this.y, 0);
        d();
        int i = this.y[0];
        GLES20.glBindBuffer(34962, i);
        d();
        GLES20.glBufferData(34962, floatBufferAsFloatBuffer.capacity() << 2, floatBufferAsFloatBuffer, 35044);
        d();
        this.m = i;
        int iA = a(35633, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n");
        int iA2 = a(35633, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n");
        int iA3 = a(35633, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n");
        int iA4 = a(35632, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n");
        int iA5 = a(35632, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n");
        int iA6 = a(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n");
        a(iA, iA4, this.n);
        this.k = a(iA2, iA5, this.o);
        this.l = a(iA2, iA6, this.p);
        a(iA3, iA5, this.q);
        GLES20.glBlendFunc(1, 771);
        d();
    }

    private int a(int i, int i2, f[] fVarArr) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        d();
        if (iGlCreateProgram == 0) {
            throw new RuntimeException("Cannot create GL program: " + GLES20.glGetError());
        }
        GLES20.glAttachShader(iGlCreateProgram, i);
        d();
        GLES20.glAttachShader(iGlCreateProgram, i2);
        d();
        GLES20.glLinkProgram(iGlCreateProgram);
        d();
        int[] iArr = this.y;
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            Log.e(f48a, "Could not link program: ");
            Log.e(f48a, GLES20.glGetProgramInfoLog(iGlCreateProgram));
            GLES20.glDeleteProgram(iGlCreateProgram);
            iGlCreateProgram = 0;
        }
        for (f fVar : fVarArr) {
            fVar.a(iGlCreateProgram);
        }
        return iGlCreateProgram;
    }

    private static int a(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        d();
        GLES20.glCompileShader(iGlCreateShader);
        d();
        return iGlCreateShader;
    }

    private static void a(RectF rectF, RectF rectF2, a aVar) {
        int iC = aVar.c();
        int iD = aVar.d();
        int iE = aVar.e();
        int iF = aVar.f();
        rectF.left /= iE;
        rectF.right /= iE;
        rectF.top /= iF;
        rectF.bottom /= iF;
        float f = iC / iE;
        if (rectF.right > f) {
            rectF2.right = rectF2.left + ((rectF2.width() * (f - rectF.left)) / rectF.width());
            rectF.right = f;
        }
        float f2 = iD / iF;
        if (rectF.bottom > f2) {
            rectF2.bottom = rectF2.top + ((rectF2.height() * (f2 - rectF.top)) / rectF.height());
            rectF.bottom = f2;
        }
    }

    private void b(a aVar, RectF rectF, RectF rectF2) {
        this.x[0] = rectF.width();
        this.x[5] = rectF.height();
        this.x[12] = rectF.left;
        this.x[13] = rectF.top;
        float[] fArr = this.x;
        aVar.h();
        f[] fVarArr = this.o;
        GLES20.glUseProgram(this.k);
        d();
        if (!aVar.l() || e() < 0.95f) {
            GLES20.glEnable(3042);
            d();
        } else {
            GLES20.glDisable(3042);
            d();
        }
        GLES20.glActiveTexture(33984);
        d();
        aVar.b(this);
        GLES20.glBindTexture(aVar.h(), aVar.b());
        d();
        GLES20.glUniform1i(fVarArr[3].f49a, 0);
        d();
        GLES20.glUniform1f(fVarArr[4].f49a, e());
        d();
        GLES20.glBindBuffer(34962, this.m);
        d();
        GLES20.glVertexAttribPointer(fVarArr[0].f49a, 2, 5126, false, 8, 0);
        d();
        GLES20.glBindBuffer(34962, 0);
        d();
        GLES20.glUniformMatrix4fv(fVarArr[2].f49a, 1, false, fArr, 0);
        d();
        if (aVar.a()) {
            a(2);
            a(0.0f, rectF2.centerY());
            Matrix.scaleM(this.c, this.g, 1.0f, -1.0f, 1.0f);
            a(0.0f, -rectF2.centerY());
        }
        float f = rectF2.left;
        float f2 = rectF2.top;
        float fWidth = rectF2.width();
        float fHeight = rectF2.height();
        Matrix.translateM(this.u, 0, this.c, this.g, f, f2, 0.0f);
        Matrix.scaleM(this.u, 0, fWidth, fHeight, 1.0f);
        Matrix.multiplyMM(this.u, 16, this.j, 0, this.u, 0);
        GLES20.glUniformMatrix4fv(fVarArr[1].f49a, 1, false, this.u, 16);
        d();
        int i = fVarArr[0].f49a;
        GLES20.glEnableVertexAttribArray(i);
        d();
        GLES20.glDrawArrays(5, 0, 4);
        d();
        GLES20.glDisableVertexAttribArray(i);
        d();
        if (aVar.a()) {
            b();
        }
        this.s++;
    }

    public static void c() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        d();
        GLES20.glClear(16384);
        d();
    }

    public static void d() {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            Log.e(f48a, "GL error: " + iGlGetError, new Throwable());
        }
    }

    private float e() {
        return this.d[this.f];
    }

    @Override // com.android.a.c.c
    public final h a() {
        return z;
    }

    @Override // com.android.a.c.c
    public final void a(float f, float f2) {
        int i = this.g;
        float[] fArr = this.c;
        int i2 = i + 12;
        fArr[i2] = fArr[i2] + (fArr[i] * f) + (fArr[i + 4] * f2);
        int i3 = i + 13;
        fArr[i3] = fArr[i3] + (fArr[i + 1] * f) + (fArr[i + 5] * f2);
        int i4 = i + 14;
        fArr[i4] = fArr[i4] + (fArr[i + 2] * f) + (fArr[i + 6] * f2);
        int i5 = i + 15;
        fArr[i5] = (fArr[i + 7] * f2) + (fArr[i + 3] * f) + fArr[i5];
    }

    @Override // com.android.a.c.c
    public final void a(float f, float f2, float f3, float f4) {
        if (f == 0.0f) {
            return;
        }
        float[] fArr = this.u;
        Matrix.setRotateM(fArr, 0, f, 0.0f, 0.0f, 1.0f);
        float[] fArr2 = this.c;
        int i = this.g;
        Matrix.multiplyMM(fArr, 16, fArr2, i, fArr, 0);
        System.arraycopy(fArr, 16, fArr2, i, 16);
    }

    @Override // com.android.a.c.c
    public final void a(int i) {
        int i2 = this.g;
        this.g += 16;
        if (this.c.length <= this.g) {
            this.c = Arrays.copyOf(this.c, this.c.length << 1);
        }
        System.arraycopy(this.c, i2, this.c, this.g, 16);
        this.e.a(2);
    }

    public final void a(int i, int i2) {
        this.h = i;
        this.i = i2;
        GLES20.glViewport(0, 0, this.h, this.i);
        d();
        Matrix.setIdentityM(this.c, this.g);
        Matrix.orthoM(this.j, 0, 0.0f, i, 0.0f, i2, -1.0f, 1.0f);
        if (((i) this.t.get(this.t.size() - 1)) == null) {
            Matrix.translateM(this.c, this.g, 0.0f, i2, 0.0f);
            Matrix.scaleM(this.c, this.g, 1.0f, -1.0f, 1.0f);
        }
    }

    @Override // com.android.a.c.c
    public final void a(a aVar, int i, int i2) {
        aVar.h();
        GLES20.glBindTexture(3553, aVar.b());
        d();
        GLES20.glTexImage2D(3553, 0, i, aVar.e(), aVar.f(), 0, i, i2, null);
    }

    @Override // com.android.a.c.c
    public final void a(a aVar, int i, int i2, int i3, int i4) {
        int i5 = 1;
        int i6 = 0;
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        RectF rectF = this.v;
        int iC = aVar.c();
        int iD = aVar.d();
        if (aVar.g()) {
            iC--;
            iD--;
            i6 = 1;
        } else {
            i5 = 0;
        }
        rectF.set(i6, i5, iC, iD);
        this.w.set(i, i2, i + i3, i2 + i4);
        a(this.v, this.w, aVar);
        b(aVar, this.v, this.w);
    }

    @Override // com.android.a.c.c
    public final void a(a aVar, int i, int i2, Bitmap bitmap, int i3, int i4) {
        aVar.h();
        GLES20.glBindTexture(3553, aVar.b());
        d();
        GLUtils.texSubImage2D(3553, 0, i, i2, bitmap, i3, i4);
    }

    @Override // com.android.a.c.c
    public final void a(a aVar, Bitmap bitmap) {
        aVar.h();
        GLES20.glBindTexture(3553, aVar.b());
        d();
        GLUtils.texImage2D(3553, 0, bitmap, 0);
    }

    @Override // com.android.a.c.c
    public final void a(a aVar, RectF rectF, RectF rectF2) {
        if (rectF2.width() <= 0.0f || rectF2.height() <= 0.0f) {
            return;
        }
        this.v.set(rectF);
        this.w.set(rectF2);
        a(this.v, this.w, aVar);
        b(aVar, this.v, this.w);
    }

    @Override // com.android.a.c.c
    public final boolean a(a aVar) {
        boolean zI = aVar.i();
        if (zI) {
            synchronized (this.r) {
                this.r.a(aVar.b());
            }
        }
        return zI;
    }

    @Override // com.android.a.c.c
    public final void b() {
        int iA = this.e.a();
        if ((iA & 1) == 1) {
            this.f--;
        }
        if ((iA & 2) == 2) {
            this.g -= 16;
        }
    }

    @Override // com.android.a.c.c
    public final void b(a aVar) {
        aVar.h();
        GLES20.glBindTexture(3553, aVar.b());
        d();
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
    }
}
