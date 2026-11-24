.class public Lcom/android/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/a/c/c;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[F

.field private static final z:Lcom/android/a/c/h;


# instance fields
.field private c:[F

.field private d:[F

.field private e:Lcom/android/a/d/a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[F

.field private k:I

.field private l:I

.field private m:I

.field private n:[Lcom/android/a/c/f;

.field private o:[Lcom/android/a/c/f;

.field private p:[Lcom/android/a/c/f;

.field private q:[Lcom/android/a/c/f;

.field private final r:Lcom/android/a/d/a;

.field private s:I

.field private t:Ljava/util/ArrayList;

.field private final u:[F

.field private final v:Landroid/graphics/RectF;

.field private final w:Landroid/graphics/RectF;

.field private final x:[F

.field private final y:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-class v0, Lcom/android/a/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/a/c/d;->a:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/a/c/d;->b:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    new-instance v0, Lcom/android/a/c/h;

    invoke-direct {v0}, Lcom/android/a/c/h;-><init>()V

    sput-object v0, Lcom/android/a/c/d;->z:Lcom/android/a/c/h;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/a/c/d;->c:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/a/c/d;->d:[F

    new-instance v0, Lcom/android/a/d/a;

    invoke-direct {v0}, Lcom/android/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/android/a/c/d;->e:Lcom/android/a/d/a;

    iput v3, p0, Lcom/android/a/c/d;->f:I

    iput v3, p0, Lcom/android/a/c/d;->g:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/a/c/d;->j:[F

    new-array v0, v5, [Lcom/android/a/c/f;

    new-instance v1, Lcom/android/a/c/e;

    const-string v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/a/c/e;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uMatrix"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uColor"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/a/c/d;->n:[Lcom/android/a/c/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/a/c/f;

    new-instance v1, Lcom/android/a/c/e;

    const-string v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/a/c/e;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uMatrix"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uTextureMatrix"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uTextureSampler"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uAlpha"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/a/c/d;->o:[Lcom/android/a/c/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/a/c/f;

    new-instance v1, Lcom/android/a/c/e;

    const-string v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/a/c/e;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uMatrix"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uTextureMatrix"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uTextureSampler"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uAlpha"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/a/c/d;->p:[Lcom/android/a/c/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/a/c/f;

    new-instance v1, Lcom/android/a/c/e;

    const-string v2, "aPosition"

    invoke-direct {v1, v2}, Lcom/android/a/c/e;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uMatrix"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/a/c/e;

    const-string v2, "aTextureCoordinate"

    invoke-direct {v1, v2}, Lcom/android/a/c/e;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uTextureSampler"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/a/c/g;

    const-string v2, "uAlpha"

    invoke-direct {v1, v2}, Lcom/android/a/c/g;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/a/c/d;->q:[Lcom/android/a/c/f;

    new-instance v0, Lcom/android/a/d/a;

    invoke-direct {v0}, Lcom/android/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/android/a/c/d;->r:Lcom/android/a/d/a;

    new-instance v0, Lcom/android/a/d/a;

    invoke-direct {v0}, Lcom/android/a/d/a;-><init>()V

    iput v3, p0, Lcom/android/a/c/d;->s:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/a/c/d;->t:Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/a/c/d;->u:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/a/c/d;->x:[F

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/a/c/d;->y:[I

    iget-object v0, p0, Lcom/android/a/c/d;->x:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/a/c/d;->c:[F

    iget v1, p0, Lcom/android/a/c/d;->g:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/a/c/d;->d:[F

    iget v1, p0, Lcom/android/a/c/d;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/a/c/d;->t:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/a/c/d;->b:[F

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/android/a/c/d;->z:Lcom/android/a/c/h;

    iget-object v2, p0, Lcom/android/a/c/d;->y:[I

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/a/c/h;->a(I[II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    iget-object v0, p0, Lcom/android/a/c/d;->y:[I

    aget v0, v0, v3

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const v2, 0x8892

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    const v4, 0x88e4

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    iput v0, p0, Lcom/android/a/c/d;->m:I

    const v0, 0x8b31

    const-string v1, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    invoke-static {v0, v1}, Lcom/android/a/c/d;->a(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b31

    const-string v2, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    invoke-static {v1, v2}, Lcom/android/a/c/d;->a(ILjava/lang/String;)I

    move-result v1

    const v2, 0x8b31

    const-string v3, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    invoke-static {v2, v3}, Lcom/android/a/c/d;->a(ILjava/lang/String;)I

    move-result v2

    const v3, 0x8b30

    const-string v4, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v3, v4}, Lcom/android/a/c/d;->a(ILjava/lang/String;)I

    move-result v3

    const v4, 0x8b30

    const-string v5, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v4, v5}, Lcom/android/a/c/d;->a(ILjava/lang/String;)I

    move-result v4

    const v5, 0x8b30

    const-string v6, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v5, v6}, Lcom/android/a/c/d;->a(ILjava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/a/c/d;->n:[Lcom/android/a/c/f;

    invoke-direct {p0, v0, v3, v6}, Lcom/android/a/c/d;->a(II[Lcom/android/a/c/f;)I

    iget-object v0, p0, Lcom/android/a/c/d;->o:[Lcom/android/a/c/f;

    invoke-direct {p0, v1, v4, v0}, Lcom/android/a/c/d;->a(II[Lcom/android/a/c/f;)I

    move-result v0

    iput v0, p0, Lcom/android/a/c/d;->k:I

    iget-object v0, p0, Lcom/android/a/c/d;->p:[Lcom/android/a/c/f;

    invoke-direct {p0, v1, v5, v0}, Lcom/android/a/c/d;->a(II[Lcom/android/a/c/f;)I

    move-result v0

    iput v0, p0, Lcom/android/a/c/d;->l:I

    iget-object v0, p0, Lcom/android/a/c/d;->q:[Lcom/android/a/c/f;

    invoke-direct {p0, v2, v4, v0}, Lcom/android/a/c/d;->a(II[Lcom/android/a/c/f;)I

    const/16 v0, 0x303

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    return-void
.end method

.method private a(II[Lcom/android/a/c/f;)I
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    invoke-static {}, Lcom/android/a/c/d;->d()V

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create GL program: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    iget-object v2, p0, Lcom/android/a/c/d;->y:[I

    const v3, 0x8b82

    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/android/a/c/d;->a:Ljava/lang/String;

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/a/c/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v1

    :cond_1
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_2

    return v0

    :cond_2
    aget-object v2, p3, v1

    invoke-virtual {v2, v0}, Lcom/android/a/c/f;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    return v0
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/a/c/a;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/a/c/a;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/a/c/a;->d()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/a/c/a;->e()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/a/c/a;->f()I

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Landroid/graphics/RectF;->left:F

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private b(Lcom/android/a/c/a;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 12

    const/4 v1, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/a/c/d;->x:[F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/a/c/d;->x:[F

    const/4 v2, 0x5

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/a/c/d;->x:[F

    const/16 v2, 0xc

    iget v4, p2, Landroid/graphics/RectF;->left:F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/a/c/d;->x:[F

    const/16 v2, 0xd

    iget v4, p2, Landroid/graphics/RectF;->top:F

    aput v4, v0, v2

    iget-object v6, p0, Lcom/android/a/c/d;->x:[F

    invoke-virtual {p1}, Lcom/android/a/c/a;->h()I

    iget-object v10, p0, Lcom/android/a/c/d;->o:[Lcom/android/a/c/f;

    iget v0, p0, Lcom/android/a/c/d;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-virtual {p1}, Lcom/android/a/c/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/a/c/d;->e()F

    move-result v0

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-virtual {p1, p0}, Lcom/android/a/c/a;->b(Lcom/android/a/c/c;)Z

    invoke-virtual {p1}, Lcom/android/a/c/a;->h()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/a/c/a;->b()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const/4 v0, 0x3

    aget-object v0, v10, v0

    iget v0, v0, Lcom/android/a/c/f;->a:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const/4 v0, 0x4

    aget-object v0, v10, v0

    iget v0, v0, Lcom/android/a/c/f;->a:I

    invoke-direct {p0}, Lcom/android/a/c/d;->e()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const v0, 0x8892

    iget v2, p0, Lcom/android/a/c/d;->m:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    aget-object v0, v10, v3

    iget v0, v0, Lcom/android/a/c/f;->a:I

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const v0, 0x8892

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    aget-object v0, v10, v1

    iget v0, v0, Lcom/android/a/c/f;->a:I

    invoke-static {v0, v9, v3, v6, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-virtual {p1}, Lcom/android/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/a/c/d;->a(I)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/android/a/c/d;->a(FF)V

    iget-object v0, p0, Lcom/android/a/c/d;->c:[F

    iget v1, p0, Lcom/android/a/c/d;->g:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v11, v2, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v8, v0}, Lcom/android/a/c/d;->a(FF)V

    :cond_0
    iget v6, p3, Landroid/graphics/RectF;->left:F

    iget v7, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/a/c/d;->u:[F

    iget-object v4, p0, Lcom/android/a/c/d;->c:[F

    iget v5, p0, Lcom/android/a/c/d;->g:I

    invoke-static/range {v2 .. v8}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v2, p0, Lcom/android/a/c/d;->u:[F

    invoke-static {v2, v3, v0, v1, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/android/a/c/d;->u:[F

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/a/c/d;->j:[F

    iget-object v4, p0, Lcom/android/a/c/d;->u:[F

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    aget-object v0, v10, v9

    iget v0, v0, Lcom/android/a/c/f;->a:I

    iget-object v1, p0, Lcom/android/a/c/d;->u:[F

    const/16 v2, 0x10

    invoke-static {v0, v9, v3, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    aget-object v0, v10, v3

    iget v0, v0, Lcom/android/a/c/f;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-virtual {p1}, Lcom/android/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/a/c/d;->b()V

    :cond_1
    iget v0, p0, Lcom/android/a/c/d;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/a/c/d;->s:I

    return-void

    :cond_2
    move v0, v9

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    goto/16 :goto_1
.end method

.method public static c()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    return-void
.end method

.method public static d()V
    .locals 5

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    sget-object v2, Lcom/android/a/c/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GL error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private e()F
    .locals 2

    iget-object v0, p0, Lcom/android/a/c/d;->d:[F

    iget v1, p0, Lcom/android/a/c/d;->f:I

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()Lcom/android/a/c/h;
    .locals 1

    sget-object v0, Lcom/android/a/c/d;->z:Lcom/android/a/c/h;

    return-object v0
.end method

.method public final a(FF)V
    .locals 6

    iget v0, p0, Lcom/android/a/c/d;->g:I

    iget-object v1, p0, Lcom/android/a/c/d;->c:[F

    add-int/lit8 v2, v0, 0xc

    aget v3, v1, v2

    aget v4, v1, v0

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xd

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xe

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xf

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v0, v0, 0x7

    aget v0, v1, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    aput v0, v1, v2

    return-void
.end method

.method public final a(FFFF)V
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x10

    const/4 v3, 0x0

    cmpl-float v0, p1, v3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/a/c/d;->u:[F

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/android/a/c/d;->c:[F

    iget v5, p0, Lcom/android/a/c/d;->g:I

    move-object v2, v0

    move v3, v8

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v0, v8, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    iget v0, p0, Lcom/android/a/c/d;->g:I

    iget v1, p0, Lcom/android/a/c/d;->g:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/a/c/d;->g:I

    iget-object v1, p0, Lcom/android/a/c/d;->c:[F

    array-length v1, v1

    iget v2, p0, Lcom/android/a/c/d;->g:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/a/c/d;->c:[F

    iget-object v2, p0, Lcom/android/a/c/d;->c:[F

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/a/c/d;->c:[F

    :cond_0
    iget-object v1, p0, Lcom/android/a/c/d;->c:[F

    iget-object v2, p0, Lcom/android/a/c/d;->c:[F

    iget v3, p0, Lcom/android/a/c/d;->g:I

    const/16 v4, 0x10

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/a/c/d;->e:Lcom/android/a/d/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/a/d/a;->a(I)V

    return-void
.end method

.method public final a(II)V
    .locals 8

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/a/c/d;->h:I

    iput p2, p0, Lcom/android/a/c/d;->i:I

    iget v0, p0, Lcom/android/a/c/d;->h:I

    iget v3, p0, Lcom/android/a/c/d;->i:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    iget-object v0, p0, Lcom/android/a/c/d;->c:[F

    iget v3, p0, Lcom/android/a/c/d;->g:I

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/a/c/d;->j:[F

    int-to-float v3, p1

    int-to-float v5, p2

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v0, p0, Lcom/android/a/c/d;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/a/c/d;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/c/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/a/c/d;->c:[F

    iget v1, p0, Lcom/android/a/c/d;->g:I

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/a/c/d;->c:[F

    iget v1, p0, Lcom/android/a/c/d;->g:I

    invoke-static {v0, v1, v7, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/a/c/a;II)V
    .locals 9

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/a/c/a;->h()I

    invoke-virtual {p1}, Lcom/android/a/c/a;->b()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-virtual {p1}, Lcom/android/a/c/a;->e()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/a/c/a;->f()I

    move-result v4

    const/4 v8, 0x0

    move v2, p2

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public final a(Lcom/android/a/c/a;IIII)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/android/a/c/a;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/a/c/a;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/a/c/a;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    :goto_1
    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int v3, p2, p4

    int-to-float v3, v3

    add-int v4, p3, p5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/android/a/c/d;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/a/c/a;)V

    iget-object v0, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/a/c/d;->b(Lcom/android/a/c/a;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public final a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V
    .locals 7

    const/16 v0, 0xde1

    invoke-virtual {p1}, Lcom/android/a/c/a;->h()I

    invoke-virtual {p1}, Lcom/android/a/c/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public final a(Lcom/android/a/c/a;Landroid/graphics/Bitmap;)V
    .locals 3

    const/16 v2, 0xde1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/a/c/a;->h()I

    invoke-virtual {p1}, Lcom/android/a/c/a;->b()I

    move-result v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    invoke-static {v2, v1, p2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public final a(Lcom/android/a/c/a;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/android/a/c/d;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/a/c/a;)V

    iget-object v0, p0, Lcom/android/a/c/d;->v:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/a/c/d;->w:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/a/c/d;->b(Lcom/android/a/c/a;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public final a(Lcom/android/a/c/a;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/a/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/a/c/d;->r:Lcom/android/a/d/a;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/a/c/d;->r:Lcom/android/a/d/a;

    invoke-virtual {p1}, Lcom/android/a/c/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/a/d/a;->a(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/a/c/d;->e:Lcom/android/a/d/a;

    invoke-virtual {v2}, Lcom/android/a/d/a;->a()I

    move-result v3

    and-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/a/c/d;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/a/c/d;->f:I

    :cond_0
    and-int/lit8 v2, v3, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_1
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/a/c/d;->g:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/android/a/c/d;->g:I

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/android/a/c/a;)V
    .locals 4

    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    const/16 v1, 0xde1

    invoke-virtual {p1}, Lcom/android/a/c/a;->h()I

    invoke-virtual {p1}, Lcom/android/a/c/a;->b()I

    move-result v0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method
