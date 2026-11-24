.class final Lcom/android/launcher3/eL;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/android/launcher3/WallpaperCropActivity;

.field private final synthetic b:Lcom/android/b/b;

.field private final synthetic c:Landroid/view/View;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Z

.field private final synthetic f:Z

.field private final synthetic g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;Lcom/android/b/b;Landroid/view/View;Landroid/content/Context;ZZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eL;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iput-object p2, p0, Lcom/android/launcher3/eL;->b:Lcom/android/b/b;

    iput-object p3, p0, Lcom/android/launcher3/eL;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/eL;->d:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/android/launcher3/eL;->e:Z

    iput-boolean p6, p0, Lcom/android/launcher3/eL;->f:Z

    iput-object p7, p0, Lcom/android/launcher3/eL;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/eL;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eL;->b:Lcom/android/b/b;

    invoke-virtual {v0}, Lcom/android/b/b;->a()Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/eL;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eL;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/eL;->b:Lcom/android/b/b;

    invoke-virtual {v0}, Lcom/android/b/b;->b()Lcom/android/b/c;

    move-result-object v0

    sget-object v1, Lcom/android/b/c;->b:Lcom/android/b/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eL;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget-object v0, v0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    new-instance v1, Lcom/android/b/a;

    iget-object v2, p0, Lcom/android/launcher3/eL;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/eL;->b:Lcom/android/b/b;

    invoke-direct {v1, v2, v3}, Lcom/android/b/a;-><init>(Landroid/content/Context;Lcom/android/b/b;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CropView;->a(Lcom/android/b/a/e;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/eL;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget-object v0, v0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    iget-boolean v1, p0, Lcom/android/launcher3/eL;->e:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CropView;->a(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/eL;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eL;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget-object v0, v0, Lcom/android/launcher3/WallpaperCropActivity;->a:Lcom/android/launcher3/CropView;

    invoke-virtual {v0}, Lcom/android/launcher3/CropView;->d()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/eL;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/eL;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
