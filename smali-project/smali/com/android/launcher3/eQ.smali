.class public final Lcom/android/launcher3/eQ;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/Bitmap;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/content/res/Resources;

.field private p:Lcom/android/launcher3/eR;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/eQ;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher3/eQ;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/eQ;->b:Landroid/content/Context;

    iput p3, p0, Lcom/android/launcher3/eQ;->e:I

    iput-object p2, p0, Lcom/android/launcher3/eQ;->o:Landroid/content/res/Resources;

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/eQ;->a(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/eQ;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher3/eQ;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/eQ;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/eQ;->a(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/eQ;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher3/eQ;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/eQ;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/eQ;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/eQ;->a(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>([BLandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/eQ;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/launcher3/eQ;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/eQ;->d:[B

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/eQ;->a(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    iput p2, p0, Lcom/android/launcher3/eQ;->i:I

    iput p3, p0, Lcom/android/launcher3/eQ;->g:I

    iput p4, p0, Lcom/android/launcher3/eQ;->h:I

    iput-boolean p5, p0, Lcom/android/launcher3/eQ;->k:Z

    iput-boolean p6, p0, Lcom/android/launcher3/eQ;->l:Z

    iput-object p7, p0, Lcom/android/launcher3/eQ;->n:Ljava/lang/Runnable;

    return-void
.end method

.method private d()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/eQ;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eQ;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eQ;->d:[B

    if-nez v0, :cond_0

    const-string v0, "Launcher3.CropActivity"

    const-string v1, "cannot read original file, no input URI, resource ID, or image byte array given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/android/launcher3/eQ;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Launcher3.CropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot read file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/eQ;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/eQ;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/eQ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/eQ;->d:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/launcher3/eQ;->d:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/android/launcher3/eQ;->o:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/launcher3/eQ;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/eQ;->d()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v1, :cond_0

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public final a(Lcom/android/launcher3/eR;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eQ;->p:Lcom/android/launcher3/eR;

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eQ;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/eQ;->q:Z

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eQ;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Z
    .locals 12

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/eQ;->k:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eQ;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/eQ;->k:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/eQ;->q:Z

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/eQ;->d()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Launcher3.CropActivity"

    const-string v2, "cannot write stream to wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/eQ;->a()Landroid/graphics/Point;

    move-result-object v7

    iget v2, p0, Lcom/android/launcher3/eQ;->i:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/launcher3/eQ;->i:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v2, p0, Lcom/android/launcher3/eQ;->i:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v2, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    if-nez v7, :cond_4

    const-string v0, "Launcher3.CropActivity"

    const-string v1, "cannot get bounds for image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v2, v3

    const/4 v3, 0x1

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    aget v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v3

    const/4 v3, 0x1

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v2, v3

    iget-object v3, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    const/4 v8, 0x0

    aget v8, v2, v8

    neg-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x1

    aget v2, v2, v9

    neg-float v2, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    invoke-virtual {v3, v8, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    iget v2, v7, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    invoke-virtual {v1, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    const-string v0, "Launcher3.CropActivity"

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/eQ;->g:I

    div-int/2addr v2, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v8, p0, Lcom/android/launcher3/eQ;->h:I

    div-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher3/eQ;->d()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v1, "Launcher3.CropActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cannot get input stream for uri="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v2, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    :goto_2
    const/4 v1, 0x0

    if-eqz v3, :cond_a

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    if-le v8, v2, :cond_9

    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_9
    invoke-virtual {v3, v5, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_a
    if-nez v1, :cond_11

    invoke-direct {p0}, Lcom/android/launcher3/eQ;->d()Ljava/io/InputStream;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_c

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    iput v8, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_b
    const/4 v8, 0x0

    invoke-static {v3, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    :cond_c
    if-eqz v2, :cond_11

    iget v1, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->left:F

    int-to-float v8, v1

    div-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    div-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v1

    div-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v1, v1

    div-float v1, v7, v1

    iput v1, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/launcher3/eQ;->f:Landroid/graphics/RectF;

    invoke-virtual {v1, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_d

    iget v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v5, Landroid/graphics/Rect;->right:I

    :cond_d
    iget v1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_e

    iget v1, v5, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v1

    iput v1, v5, Landroid/graphics/Rect;->right:I

    :cond_e
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_f

    iget v1, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    :cond_f
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_10

    iget v1, v5, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v5, Landroid/graphics/Rect;->top:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v1

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    :cond_10
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v1, v3, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_11
    if-nez v1, :cond_12

    const-string v0, "Launcher3.CropActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot decode file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    const-string v9, "Launcher3.CropActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cannot open region decoder for file: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/launcher3/eQ;->a:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_12
    iget v2, p0, Lcom/android/launcher3/eQ;->g:I

    if-lez v2, :cond_13

    iget v2, p0, Lcom/android/launcher3/eQ;->h:I

    if-gtz v2, :cond_14

    :cond_13
    iget v2, p0, Lcom/android/launcher3/eQ;->i:I

    if-lez v2, :cond_17

    :cond_14
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    aput v5, v2, v3

    iget v3, p0, Lcom/android/launcher3/eQ;->g:I

    if-lez v3, :cond_15

    iget v3, p0, Lcom/android/launcher3/eQ;->h:I

    if-gtz v3, :cond_16

    :cond_15
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/eQ;->g:I

    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/eQ;->h:I

    :cond_16
    new-instance v3, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/launcher3/eQ;->g:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/launcher3/eQ;->h:I

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget v7, p0, Lcom/android/launcher3/eQ;->i:I

    if-nez v7, :cond_19

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v3, v5, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_3
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_17

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v3, v1, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v1, v2

    :cond_17
    iget-boolean v2, p0, Lcom/android/launcher3/eQ;->l:Z

    if-eqz v2, :cond_18

    iput-object v1, p0, Lcom/android/launcher3/eQ;->m:Landroid/graphics/Bitmap;

    :cond_18
    iget-object v2, p0, Lcom/android/launcher3/eQ;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/launcher3/WallpaperCropActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/WallpaperCropActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x800

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v5, 0x5a

    invoke-virtual {v1, v2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/launcher3/eQ;->k:Z

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/android/launcher3/eQ;->p:Lcom/android/launcher3/eR;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/eQ;->p:Lcom/android/launcher3/eR;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eR;->a([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v4

    :goto_4
    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_19
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iget v9, p0, Lcom/android/launcher3/eQ;->i:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v10, 0x0

    aget v10, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/4 v11, 0x1

    aget v2, v2, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    invoke-virtual {v9, v10, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v5, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Launcher3.CropActivity"

    const-string v2, "cannot write stream to wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    goto :goto_4

    :cond_1a
    const-string v0, "Launcher3.CropActivity"

    const-string v1, "cannot compress bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_4

    :cond_1b
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_1c
    move v0, v4

    goto :goto_4
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/eQ;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/eQ;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eQ;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
