.class final Lcom/android/b/a/b;
.super Lcom/android/a/c/k;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/android/b/a/b;

.field public i:Landroid/graphics/Bitmap;

.field public volatile j:I

.field private synthetic k:Lcom/android/b/a/a;


# direct methods
.method public constructor <init>(Lcom/android/b/a/a;III)V
    .locals 1

    iput-object p1, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-direct {p0}, Lcom/android/a/c/k;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/b/a/b;->j:I

    iput p2, p0, Lcom/android/b/a/b;->e:I

    iput p3, p0, Lcom/android/b/a/b;->f:I

    iput p4, p0, Lcom/android/b/a/b;->g:I

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    iput p1, p0, Lcom/android/b/a/b;->e:I

    iput p2, p0, Lcom/android/b/a/b;->f:I

    iput p3, p0, Lcom/android/b/a/b;->g:I

    invoke-virtual {p0}, Lcom/android/b/a/b;->m()V

    return-void
.end method

.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/android/b/a/a;->b()La/a/a/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/c/d;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a_()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/b/a/b;->j:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    iget v0, v0, Lcom/android/b/a/a;->b:I

    iget v2, p0, Lcom/android/b/a/b;->e:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/b/a/b;->g:I

    shr-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    iget v2, v2, Lcom/android/b/a/a;->c:I

    iget v3, p0, Lcom/android/b/a/b;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/b/a/b;->g:I

    shr-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v3}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v3}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/b/a/b;->a(II)V

    iget-object v0, p0, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/android/b/a/b;->j:I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v0

    return v0
.end method

.method final o()Z
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/b/a/a;->b()La/a/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/c/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v2}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v1}, Lcom/android/b/a/a;->b(Lcom/android/b/a/a;)Lcom/android/b/a/e;

    move-result-object v1

    iget v2, p0, Lcom/android/b/a/b;->g:I

    iget v3, p0, Lcom/android/b/a/b;->e:I

    iget v4, p0, Lcom/android/b/a/b;->f:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/b/a/e;->a(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "TiledImageRenderer"

    const-string v2, "fail to decode tile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final p()Lcom/android/b/a/b;
    .locals 4

    iget v0, p0, Lcom/android/b/a/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    iget v1, v1, Lcom/android/b/a/a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v0

    iget v1, p0, Lcom/android/b/a/b;->g:I

    add-int/lit8 v1, v1, 0x1

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/android/b/a/b;->e:I

    div-int/2addr v1, v0

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/b/a/b;->f:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    iget v3, p0, Lcom/android/b/a/b;->g:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;III)Lcom/android/b/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/b/a/b;->e:I

    iget-object v4, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v4}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/b/a/b;->f:I

    iget-object v4, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v4}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    invoke-static {v3}, Lcom/android/b/a/a;->c(Lcom/android/b/a/a;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/b/a/b;->k:Lcom/android/b/a/a;

    iget v3, v3, Lcom/android/b/a/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
