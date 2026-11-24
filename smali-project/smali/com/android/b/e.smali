.class public final Lcom/android/b/e;
.super Lcom/android/b/b;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/b/b;-><init>(I)V

    iput-object p1, p0, Lcom/android/b/e;->a:Landroid/content/res/Resources;

    iput p2, p0, Lcom/android/b/e;->b:I

    return-void
.end method

.method private h()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/b/e;->a:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/b/e;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/b/e;->a:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/b/e;->b:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/a/b/c;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/b/e;->h()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/a/b/c;->a(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "BitmapRegionTileSource"

    const-string v2, "Error reading resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/android/b/h;
    .locals 2

    invoke-direct {p0}, Lcom/android/b/e;->h()Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/b/i;->a(Ljava/io/InputStream;Z)Lcom/android/b/i;

    move-result-object v0

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/b/e;->h()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/b/g;->a(Ljava/io/InputStream;)Lcom/android/b/g;

    move-result-object v0

    invoke-static {v1}, Lcom/android/a/a/a;->a(Ljava/io/Closeable;)V

    :cond_0
    return-object v0
.end method
