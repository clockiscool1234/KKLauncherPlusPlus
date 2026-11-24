.class final Lcom/android/launcher3/fc;
.super Landroid/os/AsyncTask;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Landroid/graphics/Point;

.field private final synthetic d:Landroid/widget/ImageView;

.field private final synthetic e:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/eS;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/fc;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/fc;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/launcher3/fc;->c:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/android/launcher3/fc;->d:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/android/launcher3/fc;->e:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fc;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/fc;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/fc;->c:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/fc;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/fc;->b:Landroid/net/Uri;

    move-object v4, v3

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/eS;->a(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fc;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/fc;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    iget-object v0, p0, Lcom/android/launcher3/fc;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Launcher.WallpaperPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading thumbnail for uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/fc;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
