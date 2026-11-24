.class public final Lcom/android/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/b/a/e;


# static fields
.field private static final a:Z


# instance fields
.field private b:Lcom/android/b/h;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/android/a/c/a;

.field private final g:I

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/BitmapFactory$Options;

.field private k:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/b/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/b/b;)V
    .locals 9

    const/16 v8, 0x800

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/b/a;->i:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/b/a/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/b/a;->e:I

    invoke-virtual {p2}, Lcom/android/b/b;->f()I

    move-result v0

    iput v0, p0, Lcom/android/b/a;->g:I

    invoke-virtual {p2}, Lcom/android/b/b;->c()Lcom/android/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a;->b:Lcom/android/b/h;

    iget-object v0, p0, Lcom/android/b/a;->b:Lcom/android/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/a;->b:Lcom/android/b/h;

    invoke-interface {v0}, Lcom/android/b/h;->a()I

    move-result v0

    iput v0, p0, Lcom/android/b/a;->c:I

    iget-object v0, p0, Lcom/android/b/a;->b:Lcom/android/b/h;

    invoke-interface {v0}, Lcom/android/b/h;->b()I

    move-result v0

    iput v0, p0, Lcom/android/b/a;->d:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iget-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    invoke-virtual {p2}, Lcom/android/b/b;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2}, Lcom/android/b/b;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v8, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v8, :cond_5

    new-instance v1, Lcom/android/a/c/b;

    invoke-direct {v1, v0}, Lcom/android/a/c/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/b/a;->f:Lcom/android/a/c/a;

    :cond_0
    :goto_1
    return-void

    :cond_1
    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    invoke-static {v1, v0, v6}, La/a/a/c/d;->a(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v0, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_5
    const-string v1, "BitmapRegionTileSource"

    const-string v2, "Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/b/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/android/b/a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/b/a;->e:I

    return v0
.end method

.method public final a(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget v1, p0, Lcom/android/b/a;->e:I

    sget-boolean v0, Lcom/android/b/a;->a:Z

    if-nez v0, :cond_4

    shl-int v0, v1, p1

    iget-object v2, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    add-int v3, p2, v0

    add-int/2addr v0, p3

    invoke-virtual {v2, p2, p3, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/b/a;->i:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/b/a;->c:I

    iget v3, p0, Lcom/android/b/a;->d:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    shl-int v2, v5, p1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/android/b/a;->b:Lcom/android/b/h;

    iget-object v2, p0, Lcom/android/b/a;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {v0, v2, v3}, Lcom/android/b/h;->a(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "BitmapRegionTileSource"

    const-string v3, "fail in decoding region"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/b/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/b/a;->k:Landroid/graphics/Canvas;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/b/a;->k:Landroid/graphics/Canvas;

    :cond_3
    iget-object v2, p0, Lcom/android/b/a;->k:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/b/a;->k:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/b/a;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    shr-int/2addr v3, p1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/b/a;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    shr-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/b/a;->k:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    shl-int v0, v1, p1

    iget-object v2, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    add-int v3, p2, v0

    add-int/2addr v0, p3

    invoke-virtual {v2, p2, p3, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_5
    iget-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    shl-int v1, v5, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iput-object p4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v0, p0, Lcom/android/b/a;->b:Lcom/android/b/h;

    iget-object v1, p0, Lcom/android/b/a;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {v0, v1, v2}, Lcom/android/b/h;->a(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_6

    iget-object v1, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_6
    if-nez v0, :cond_1

    const-string v1, "BitmapRegionTileSource"

    const-string v2, "fail in decoding region"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, p4, :cond_7

    iget-object v1, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/b/a;->j:Landroid/graphics/BitmapFactory$Options;

    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_7
    throw v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/b/a;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/android/b/a;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/b/a;->g:I

    return v0
.end method

.method public final e()Lcom/android/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/android/b/a;->f:Lcom/android/a/c/a;

    return-object v0
.end method
