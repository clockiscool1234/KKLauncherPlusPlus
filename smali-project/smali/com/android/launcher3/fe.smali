.class public final Lcom/android/launcher3/fe;
.super Lcom/android/launcher3/fj;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/fe;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 7

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->d()Lcom/android/launcher3/CropView;

    move-result-object v6

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/aE;

    const/16 v2, 0x400

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher3/aE;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    invoke-virtual {v6, v1, v0}, Lcom/android/launcher3/CropView;->a(Lcom/android/b/a/e;Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0}, Lcom/android/launcher3/CropView;->a(F)V

    invoke-virtual {v6, v3}, Lcom/android/launcher3/CropView;->a(Z)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/launcher3/eS;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/eS;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Setting wallpaper to default threw exception"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
