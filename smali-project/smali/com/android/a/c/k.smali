.class public abstract Lcom/android/a/c/k;
.super Lcom/android/a/c/a;


# static fields
.field private static e:Ljava/util/HashMap;

.field private static f:Lcom/android/a/c/l;


# instance fields
.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/graphics/Bitmap;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/a/c/k;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/android/a/c/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/a/c/l;-><init>(B)V

    sput-object v0, Lcom/android/a/c/k;->f:Lcom/android/a/c/l;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/a/c/k;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/a/c/a;-><init>(Lcom/android/a/c/c;II)V

    iput-boolean v1, p0, Lcom/android/a/c/k;->g:Z

    iput-boolean v1, p0, Lcom/android/a/c/k;->h:Z

    iput-boolean v2, p0, Lcom/android/a/c/k;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/a/c/k;->a(Z)V

    iput v1, p0, Lcom/android/a/c/k;->k:I

    :cond_0
    return-void
.end method

.method private static a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x1

    sget-object v1, Lcom/android/a/c/k;->f:Lcom/android/a/c/l;

    iput-boolean p0, v1, Lcom/android/a/c/l;->a:Z

    iput-object p1, v1, Lcom/android/a/c/l;->b:Landroid/graphics/Bitmap$Config;

    iput p2, v1, Lcom/android/a/c/l;->c:I

    sget-object v0, Lcom/android/a/c/k;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {v2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/android/a/c/k;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/a/c/l;->a()Lcom/android/a/c/l;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private o()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/a/c/k;->a_()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/a/c/k;->k:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/a/c/k;->k:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/a/c/k;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/a/c/k;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/a/c/k;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract a_()Landroid/graphics/Bitmap;
.end method

.method protected final b(Lcom/android/a/c/c;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/a/c/k;->c(Lcom/android/a/c/c;)V

    invoke-virtual {p0}, Lcom/android/a/c/k;->n()Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/android/a/c/k;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/a/c/k;->o()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/a/c/k;->c:I

    return v0
.end method

.method public final c(Lcom/android/a/c/c;)V
    .locals 13

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/a/c/k;->i()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/a/c/k;->o()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v1, p0, Lcom/android/a/c/k;->k:I

    iget v1, p0, Lcom/android/a/c/k;->k:I

    invoke-virtual {p0}, Lcom/android/a/c/k;->e()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/a/c/k;->f()I

    move-result v11

    if-gt v8, v10, :cond_0

    if-gt v9, v11, :cond_0

    move v0, v7

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p1}, Lcom/android/a/c/c;->a()Lcom/android/a/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/c/h;->a()I

    move-result v0

    iput v0, p0, Lcom/android/a/c/k;->a:I

    invoke-interface {p1, p0}, Lcom/android/a/c/c;->b(Lcom/android/a/c/a;)V

    if-ne v8, v10, :cond_3

    if-ne v9, v11, :cond_3

    invoke-interface {p1, p0, v4}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/a/c/k;->p()V

    invoke-virtual {p0, p1}, Lcom/android/a/c/k;->a(Lcom/android/a/c/c;)V

    iput v7, p0, Lcom/android/a/c/k;->b:I

    iput-boolean v7, p0, Lcom/android/a/c/k;->g:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-interface {p1, p0, v5, v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;II)V

    iget v2, p0, Lcom/android/a/c/k;->k:I

    iget v3, p0, Lcom/android/a/c/k;->k:I

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V

    iget v0, p0, Lcom/android/a/c/k;->k:I

    if-lez v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0, v12, v11}, Lcom/android/a/c/k;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V

    const/4 v0, 0x0

    invoke-static {v0, v12, v10}, Lcom/android/a/c/k;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V

    :cond_4
    iget v0, p0, Lcom/android/a/c/k;->k:I

    add-int/2addr v0, v8

    if-ge v0, v10, :cond_5

    const/4 v0, 0x1

    invoke-static {v0, v12, v11}, Lcom/android/a/c/k;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v0, p0, Lcom/android/a/c/k;->k:I

    add-int v2, v0, v8

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V

    :cond_5
    iget v0, p0, Lcom/android/a/c/k;->k:I

    add-int/2addr v0, v9

    if-ge v0, v11, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v12, v10}, Lcom/android/a/c/k;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/a/c/k;->k:I

    add-int v3, v0, v9

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/a/c/k;->p()V

    throw v0

    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/a/c/k;->b:I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Texture load fail, no bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-boolean v0, p0, Lcom/android/a/c/k;->g:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/a/c/k;->o()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    iget v2, p0, Lcom/android/a/c/k;->k:I

    iget v3, p0, Lcom/android/a/c/k;->k:I

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;IILandroid/graphics/Bitmap;II)V

    invoke-direct {p0}, Lcom/android/a/c/k;->p()V

    iput-boolean v7, p0, Lcom/android/a/c/k;->g:Z

    goto/16 :goto_1
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/android/a/c/k;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/a/c/k;->o()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/a/c/k;->d:I

    return v0
.end method

.method protected final h()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public final j()V
    .locals 1

    invoke-super {p0}, Lcom/android/a/c/a;->j()V

    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/a/c/k;->p()V

    :cond_0
    return-void
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/a/c/k;->h:Z

    return v0
.end method

.method protected final m()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/a/c/k;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/a/c/k;->p()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/a/c/k;->g:Z

    iput v1, p0, Lcom/android/a/c/k;->c:I

    iput v1, p0, Lcom/android/a/c/k;->d:I

    return-void
.end method

.method public final n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/a/c/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/a/c/k;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
