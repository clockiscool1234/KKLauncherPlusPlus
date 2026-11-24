.class final Lcom/android/launcher3/eP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/WallpaperCropActivity;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/WallpaperCropActivity;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/eP;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iput p2, p0, Lcom/android/launcher3/eP;->b:I

    iput p3, p0, Lcom/android/launcher3/eP;->c:I

    iput-boolean p4, p0, Lcom/android/launcher3/eP;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/eP;->a:Lcom/android/launcher3/WallpaperCropActivity;

    iget v1, p0, Lcom/android/launcher3/eP;->b:I

    iget v2, p0, Lcom/android/launcher3/eP;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WallpaperCropActivity;->a(II)V

    iget-boolean v0, p0, Lcom/android/launcher3/eP;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/eP;->a:Lcom/android/launcher3/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/WallpaperCropActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/launcher3/eP;->a:Lcom/android/launcher3/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/WallpaperCropActivity;->finish()V

    :cond_0
    return-void
.end method
