.class public final Lcom/android/launcher3/fg;
.super Lcom/android/launcher3/fj;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/fj;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/fg;->a:Landroid/content/res/Resources;

    iput p2, p0, Lcom/android/launcher3/fg;->c:I

    iput-object p3, p0, Lcom/android/launcher3/fg;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/fg;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/fg;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/eS;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/android/b/e;

    iget-object v1, p0, Lcom/android/launcher3/fg;->a:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/launcher3/fg;->c:I

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/android/b/e;-><init>(Landroid/content/res/Resources;II)V

    invoke-virtual {v0}, Lcom/android/b/e;->a()Z

    new-instance v1, Lcom/android/b/a;

    invoke-direct {v1, p1, v0}, Lcom/android/b/a;-><init>(Landroid/content/Context;Lcom/android/b/b;)V

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->d()Lcom/android/launcher3/CropView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CropView;->a(Lcom/android/b/a/e;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/eS;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/WallpaperCropActivity;->a(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/b/a;->b()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/b/a;->c()I

    move-result v1

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1, v4, v5, v6}, Lcom/android/launcher3/WallpaperCropActivity;->a(IIIIZ)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CropView;->a(F)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/CropView;->a(Z)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/launcher3/eS;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/fg;->a:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/launcher3/fg;->c:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/eS;->a(Landroid/content/res/Resources;IZ)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
