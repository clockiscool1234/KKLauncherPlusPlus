.class public final Lcom/android/b/d;
.super Lcom/android/b/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/b/b;-><init>(I)V

    iput-object p1, p0, Lcom/android/b/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/b/d;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/a/b/c;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/a/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "BitmapRegionTileSource"

    const-string v3, "reading exif failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "BitmapRegionTileSource"

    const-string v3, "getting decoder failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final g()Lcom/android/b/h;
    .locals 2

    iget-object v0, p0, Lcom/android/b/d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/b/i;->a(Ljava/lang/String;Z)Lcom/android/b/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/b/g;->a(Ljava/lang/String;)Lcom/android/b/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method
