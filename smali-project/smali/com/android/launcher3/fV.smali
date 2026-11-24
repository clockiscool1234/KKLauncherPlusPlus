.class final Lcom/android/launcher3/fV;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Landroid/view/Choreographer;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:J

.field private h:F

.field private i:I

.field private synthetic j:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/fV;->a:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/fV;->b:F

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/fV;->d:Landroid/view/Choreographer;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/fV;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(Z)V
    .locals 11

    const/4 v1, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x33d6bf95    # 1.0E-7f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/fV;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/fV;->c:Z

    iget v3, p0, Lcom/android/launcher3/fV;->b:F

    iget-boolean v0, p0, Lcom/android/launcher3/fV;->f:Z

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/fV;->g:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    const/high16 v6, 0x437a0000    # 250.0f

    div-float/2addr v0, v6

    iget-object v6, p0, Lcom/android/launcher3/fV;->e:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v6, p0, Lcom/android/launcher3/fV;->h:F

    iget v7, p0, Lcom/android/launcher3/fV;->a:F

    iget v8, p0, Lcom/android/launcher3/fV;->h:F

    sub-float/2addr v7, v8

    mul-float/2addr v0, v7

    add-float/2addr v0, v6

    iput v0, p0, Lcom/android/launcher3/fV;->b:F

    const-wide/16 v6, 0xfa

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/fV;->f:Z

    :goto_1
    iget v0, p0, Lcom/android/launcher3/fV;->b:F

    iget v4, p0, Lcom/android/launcher3/fV;->a:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/fV;->e()V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/fV;->b:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_5

    :goto_2
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->b(Lcom/android/launcher3/Workspace;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->b(Lcom/android/launcher3/Workspace;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->c:Lcom/android/launcher3/fV;

    iget v2, v2, Lcom/android/launcher3/fV;->b:F

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->e(Lcom/android/launcher3/Workspace;)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v10, v0

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->f(Lcom/android/launcher3/Workspace;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v1, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/launcher3/fV;->a:F

    iput v0, p0, Lcom/android/launcher3/fV;->b:F

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error updating wallpaper offset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/fV;->c()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/fV;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fV;->d:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/fV;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-gt v0, v6, :cond_2

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    iget-object v1, v1, Lcom/android/launcher3/Workspace;->c:Lcom/android/launcher3/fV;

    invoke-direct {v1}, Lcom/android/launcher3/fV;->e()V

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v1, Lcom/android/launcher3/fV;->a:F

    invoke-direct {v1}, Lcom/android/launcher3/fV;->d()I

    move-result v0

    iget v2, v1, Lcom/android/launcher3/fV;->i:I

    if-eq v0, v2, :cond_1

    iget v0, v1, Lcom/android/launcher3/fV;->i:I

    if-lez v0, :cond_0

    iput-boolean v6, v1, Lcom/android/launcher3/fV;->f:Z

    iget v0, v1, Lcom/android/launcher3/fV;->b:F

    iput v0, v1, Lcom/android/launcher3/fV;->h:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/fV;->g:J

    :cond_0
    invoke-direct {v1}, Lcom/android/launcher3/fV;->d()I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/fV;->i:I

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/launcher3/fV;->a(Z)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/fV;->c()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v0, v4, v0

    iget-object v4, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Workspace;->m(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Workspace;->m(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v4

    sub-int v0, v4, v0

    iget-object v4, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/Workspace;->n(I)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher3/fV;->d()I

    move-result v5

    iget-object v0, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v5, -0x1

    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-static {v1, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;I)V

    iget-object v1, p0, Lcom/android/launcher3/fV;->j:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    sub-int v1, v0, v5

    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    int-to-float v0, v0

    div-float v0, v1, v0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/fV;->a:F

    iput v0, p0, Lcom/android/launcher3/fV;->b:F

    return-void
.end method

.method public final doFrame(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/fV;->a(Z)V

    return-void
.end method
