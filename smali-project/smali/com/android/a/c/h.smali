.class public Lcom/android/a/c/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/a/c/h;->a:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/a/c/h;->a:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    iget-object v0, p0, Lcom/android/a/c/h;->a:[I

    aget v0, v0, v2

    return v0
.end method

.method public a(I[II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    invoke-static {}, Lcom/android/a/c/d;->d()V

    return-void
.end method
