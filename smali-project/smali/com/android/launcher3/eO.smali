.class final Lcom/android/launcher3/eO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/WallpaperCropActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eO;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iput-boolean p2, p0, Lcom/android/launcher3/eO;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/eO;->a:Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/WallpaperCropActivity;->a(II)V

    iget-boolean v0, p0, Lcom/android/launcher3/eO;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eO;->a:Lcom/android/launcher3/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WallpaperCropActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/launcher3/eO;->a:Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
