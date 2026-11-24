.class final Lcom/android/launcher3/eK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/WallpaperCropActivity;

.field private final synthetic b:Lcom/android/b/f;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;Lcom/android/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eK;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iput-object p2, p0, Lcom/android/launcher3/eK;->b:Lcom/android/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/eK;->b:Lcom/android/b/f;

    invoke-virtual {v0}, Lcom/android/b/f;->b()Lcom/android/b/c;

    move-result-object v0

    sget-object v1, Lcom/android/b/c;->b:Lcom/android/b/c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eK;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget-object v1, p0, Lcom/android/launcher3/eK;->a:Lcom/android/launcher3/WallpaperCropActivity;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Lcom/android/launcher3/WallpaperCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/launcher3/eK;->a:Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/WallpaperCropActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/eK;->a:Lcom/android/launcher3/WallpaperCropActivity;

    invoke-static {v0}, Lcom/android/launcher3/WallpaperCropActivity;->a(Lcom/android/launcher3/WallpaperCropActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
