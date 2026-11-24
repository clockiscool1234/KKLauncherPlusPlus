.class final Lcom/android/launcher3/eN;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/WallpaperCropActivity;

.field private final synthetic b:Landroid/graphics/Point;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;Landroid/graphics/Point;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eN;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iput-object p2, p0, Lcom/android/launcher3/eN;->b:Landroid/graphics/Point;

    iput-boolean p3, p0, Lcom/android/launcher3/eN;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/eN;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget-object v1, p0, Lcom/android/launcher3/eN;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/eN;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WallpaperCropActivity;->a(II)V

    iget-boolean v0, p0, Lcom/android/launcher3/eN;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eN;->a:Lcom/android/launcher3/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WallpaperCropActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/launcher3/eN;->a:Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
