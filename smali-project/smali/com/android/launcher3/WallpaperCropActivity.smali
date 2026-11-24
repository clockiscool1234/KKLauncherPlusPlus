.class public Lcom/android/launcher3/WallpaperCropActivity;
.super Landroid/app/Activity;


# static fields
.field private static b:Landroid/graphics/Point;


# instance fields
.field protected a:Lcom/android/launcher3/CropView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v1, v0, p0, p1}, Lcom/android/launcher3/WallpaperCropActivity;->a(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, v0, v0}, Lcom/android/launcher3/WallpaperCropActivity;->a(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lcom/android/a/b/c;

    invoke-direct {v0}, Lcom/android/a/b/c;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/a/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    :goto_0
    :try_start_1
    sget v3, Lcom/android/a/b/c;->b:I

    invoke-virtual {v0, v3}, Lcom/android/a/b/c;->b(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/a/b/c;->b(S)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v0

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :cond_0
    if-eqz p4, :cond_1

    :try_start_2
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0, v2}, Lcom/android/a/b/c;->a(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v0, v2}, Lcom/android/a/b/c;->a(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_8
    const-string v3, "Launcher3.CropActivity"

    const-string v4, "Getting exif data failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_4
    :try_start_9
    const-string v2, "Launcher3.CropActivity"

    const-string v4, "Getting exif data failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_5
    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_2
.end method

.method protected static a(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method protected static a(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 5

    sget-object v0, Lcom/android/launcher3/WallpaperCropActivity;->b:Landroid/graphics/Point;

    if-nez v0, :cond_1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v1, v1

    div-float v1, v3, v1

    const v3, 0x3e9d89d7

    mul-float/2addr v1, v3

    const v3, 0x3f80fc10

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v2, Lcom/android/launcher3/WallpaperCropActivity;->b:Landroid/graphics/Point;

    :cond_1
    sget-object v0, Lcom/android/launcher3/WallpaperCropActivity;->b:Landroid/graphics/Point;

    return-object v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method protected static a(IIIIZ)Landroid/graphics/RectF;
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iput v4, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, p0

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, p0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    if-eqz p4, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v4, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iput v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    int-to-float v1, p1

    int-to-float v2, p3

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/WallpaperCropActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/WallpaperCropActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V
    .locals 3

    invoke-static {p0, p2}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "wallpaper.width"

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "wallpaper.height"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-virtual {p3, v1, v0}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    :cond_1
    return-void
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "jpg"

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "png"

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "jpg"

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(II)V
    .locals 4

    const-class v0, Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/WallpaperCropActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, "wallpaper.width"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "wallpaper.height"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V

    return-void

    :cond_0
    const-string v2, "wallpaper.width"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "wallpaper.height"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected final a(Landroid/content/res/Resources;IZ)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;I)I

    move-result v5

    iget-object v0, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v0}, Lcom/android/launcher3/CropView;->c()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0, v3, v4, v9}, Lcom/android/launcher3/WallpaperCropActivity;->a(IIIIZ)Landroid/graphics/RectF;

    move-result-object v4

    new-instance v10, Lcom/android/launcher3/eO;

    invoke-direct {v10, p0, v8}, Lcom/android/launcher3/eO;-><init>(Lcom/android/launcher3/WallpaperCropActivity;Z)V

    new-instance v0, Lcom/android/launcher3/eQ;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/eQ;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eQ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final a(Landroid/net/Uri;Lcom/android/launcher3/eR;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iget-object v0, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v0}, Lcom/android/launcher3/CropView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v6

    iget-object v2, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v2}, Lcom/android/launcher3/CropView;->b()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v2, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v2}, Lcom/android/launcher3/CropView;->a()I

    move-result v4

    iget-object v2, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v2}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v7, v2, v7

    iget-object v2, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v2}, Lcom/android/launcher3/CropView;->c()Landroid/graphics/Point;

    move-result-object v2

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v9, v4

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, v2, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v2, 0x0

    const/4 v8, 0x0

    aget v8, v9, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v9, v2

    const/4 v2, 0x1

    const/4 v8, 0x1

    aget v8, v9, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v9, v2

    if-eqz v5, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v8, 0x0

    aget v8, v9, v8

    iget v10, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v10

    iget v10, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v2, v8

    :goto_2
    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v8, v10

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    if-eqz v5, :cond_5

    iget v0, v3, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v0, v5

    iput v0, v3, Landroid/graphics/RectF;->left:F

    iget v0, v3, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, v3, Landroid/graphics/RectF;->right:F

    :goto_3
    if-eqz v1, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget v1, v6, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    :goto_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v9, Lcom/android/launcher3/eP;

    const/4 v0, 0x1

    invoke-direct {v9, p0, v5, v6, v0}, Lcom/android/launcher3/eP;-><init>(Lcom/android/launcher3/WallpaperCropActivity;IIZ)V

    new-instance v0, Lcom/android/launcher3/eQ;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/eQ;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/eQ;->a(Lcom/android/launcher3/eR;)V

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eQ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    aget v2, v9, v2

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v8

    goto :goto_2

    :cond_4
    iget v2, v3, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    iget v0, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    iput v0, v3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_6
    iget v0, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iput v0, v3, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_7
    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v9, v1

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, v3, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_4
.end method

.method public final a(Lcom/android/b/b;ZZLjava/lang/Runnable;)V
    .locals 8

    const v0, 0x7f100054

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v0, Lcom/android/launcher3/eL;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/eL;-><init>(Lcom/android/launcher3/WallpaperCropActivity;Lcom/android/b/b;Landroid/view/View;Landroid/content/Context;ZZLjava/lang/Runnable;)V

    new-instance v1, Lcom/android/launcher3/eM;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/launcher3/eM;-><init>(Lcom/android/launcher3/WallpaperCropActivity;Landroid/os/AsyncTask;Landroid/view/View;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, v3, v3}, Lcom/android/launcher3/WallpaperCropActivity;->a(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    new-instance v0, Lcom/android/launcher3/eQ;

    move-object v1, p0

    move-object v2, p1

    move v6, v5

    move v8, v5

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/eQ;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/eQ;->a()Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/eN;

    invoke-direct {v2, p0, v1, v7}, Lcom/android/launcher3/eN;-><init>(Lcom/android/launcher3/WallpaperCropActivity;Landroid/graphics/Point;Z)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/eQ;->a(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/eQ;->a(Z)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eQ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 4

    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WallpaperCropActivity;->setContentView(I)V

    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CropView;

    iput-object v0, p0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Launcher3.CropActivity"

    const-string v1, "No URI passed in intent, exiting WallpaperCropActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/eJ;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/eJ;-><init>(Lcom/android/launcher3/WallpaperCropActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x7f100000

    invoke-virtual {p0, v1}, Lcom/android/launcher3/WallpaperCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/WallpaperCropActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/android/b/f;

    const/16 v2, 0x400

    invoke-direct {v1, p0, v0, v2}, Lcom/android/b/f;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/android/launcher3/WallpaperCropActivity;->c:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/launcher3/eK;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/eK;-><init>(Lcom/android/launcher3/WallpaperCropActivity;Lcom/android/b/f;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/launcher3/WallpaperCropActivity;->a(Lcom/android/b/b;ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->b()V

    invoke-virtual {p0}, Lcom/android/launcher3/WallpaperCropActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/WallpaperCropActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
