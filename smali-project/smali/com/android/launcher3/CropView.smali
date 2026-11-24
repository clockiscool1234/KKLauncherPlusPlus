.class public Lcom/android/launcher3/CropView;
.super Lcom/android/b/a/f;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private c:Landroid/view/ScaleGestureDetector;

.field private d:J

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Landroid/graphics/RectF;

.field private n:[F

.field private o:[F

.field private p:[F

.field private q:[F

.field private r:[F

.field private s:Lcom/android/launcher3/Z;

.field private t:Landroid/graphics/Matrix;

.field private u:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/b/a/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CropView;->l:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CropView;->m:Landroid/graphics/RectF;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/CropView;->n:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher3/CropView;->o:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/launcher3/CropView;->p:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/launcher3/CropView;->q:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/launcher3/CropView;->r:[F

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher3/CropView;->c:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CropView;->t:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CropView;->u:Landroid/graphics/Matrix;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a(IILcom/android/b/a/e;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/CropView;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/android/b/a/i;->a:F

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/CropView;->e()[F

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v3, p1

    div-float v2, v3, v2

    int-to-float v3, p2

    div-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CropView;->k:F

    iget-object v2, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v3, p0, Lcom/android/launcher3/CropView;->k:F

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Lcom/android/b/a/i;->a:F

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v0, v0, Lcom/android/b/a/i;->a:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/launcher3/CropView;->e()[F

    move-result-object v2

    aget v3, v2, v9

    aget v2, v2, v10

    iget-object v4, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v4, v4, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v4}, Lcom/android/b/a/e;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v5, v5, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v5}, Lcom/android/b/a/e;->c()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/android/launcher3/CropView;->r:[F

    iget v7, p0, Lcom/android/launcher3/CropView;->i:F

    sub-float v4, v7, v4

    aput v4, v6, v9

    iget v4, p0, Lcom/android/launcher3/CropView;->j:F

    sub-float/2addr v4, v5

    aput v4, v6, v10

    iget-object v4, p0, Lcom/android/launcher3/CropView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v6, v9

    div-float v5, v3, v8

    add-float/2addr v4, v5

    aput v4, v6, v9

    aget v4, v6, v10

    div-float v5, v2, v8

    add-float/2addr v4, v5

    aput v4, v6, v10

    iget-object v4, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v4, v4, Lcom/android/b/a/i;->a:F

    div-float v5, v0, v8

    aget v7, v6, v9

    sub-float/2addr v5, v7

    sub-float v7, v3, v0

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    mul-float/2addr v5, v4

    div-float/2addr v0, v8

    add-float/2addr v0, v5

    div-float v5, v1, v8

    aget v6, v6, v10

    sub-float/2addr v5, v6

    sub-float v6, v2, v1

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    div-float/2addr v1, v8

    add-float/2addr v1, v5

    div-float v5, v3, v8

    mul-float/2addr v5, v4

    sub-float v5, v0, v5

    div-float/2addr v3, v8

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    div-float v3, v2, v8

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    div-float/2addr v2, v8

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v5, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private e()[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v0}, Lcom/android/b/a/e;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v1, v1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v1}, Lcom/android/b/a/e;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/CropView;->q:[F

    aput v0, v2, v3

    aput v1, v2, v4

    iget-object v0, p0, Lcom/android/launcher3/CropView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v2, v3

    aget v0, v2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v2, v4

    return-object v2
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, p0, Lcom/android/launcher3/CropView;->i:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/b/a/i;->b:I

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, p0, Lcom/android/launcher3/CropView;->j:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/b/a/i;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v0, v0, Lcom/android/b/a/i;->d:I

    return v0
.end method

.method public final a(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/CropView;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iput p1, v0, Lcom/android/b/a/i;->a:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/android/b/a/e;Ljava/lang/Runnable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/b/a/f;->a(Lcom/android/b/a/e;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v0, v0, Lcom/android/b/a/i;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/CropView;->i:F

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v0, v0, Lcom/android/b/a/i;->c:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/CropView;->j:F

    iget-object v0, p0, Lcom/android/launcher3/CropView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/CropView;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, v1, Lcom/android/b/a/i;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/android/launcher3/CropView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/CropView;->u:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, v1, Lcom/android/b/a/i;->d:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/launcher3/CropView;->a(IILcom/android/b/a/e;Z)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/CropView;->s:Lcom/android/launcher3/Z;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/CropView;->l:Z

    return-void
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CropView;->m:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/CropView;->a(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, v1, Lcom/android/b/a/i;->a:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    div-float/2addr v2, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v1

    add-float/2addr v1, v0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public final c()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v1, v1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v1}, Lcom/android/b/a/e;->b()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v2, v2, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v2}, Lcom/android/b/a/e;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final d()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/Y;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Y;-><init>(Lcom/android/launcher3/CropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CropView;->m:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/CropView;->a(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, v1, Lcom/android/b/a/i;->a:F

    iget v2, p0, Lcom/android/launcher3/CropView;->i:F

    float-to-double v2, v2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/CropView;->i:F

    invoke-direct {p0}, Lcom/android/launcher3/CropView;->f()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, v0, Lcom/android/b/a/i;->a:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/b/a/i;->a:F

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v1, p0, Lcom/android/launcher3/CropView;->k:F

    iget-object v2, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v2, v2, Lcom/android/b/a/i;->a:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/b/a/i;->a:F

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/CropView;->a(IILcom/android/b/a/e;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v0, 0x6

    if-ne v9, v0, :cond_1

    move v7, v8

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    move v5, v3

    move v1, v6

    move v2, v6

    :goto_2
    if-lt v5, v4, :cond_3

    if-eqz v7, :cond_5

    add-int/lit8 v0, v4, -0x1

    :goto_3
    int-to-float v4, v0

    div-float/2addr v2, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    if-nez v9, :cond_6

    iput v2, p0, Lcom/android/launcher3/CropView;->e:F

    iput v1, p0, Lcom/android/launcher3/CropView;->f:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/launcher3/CropView;->d:J

    iget-object v0, p0, Lcom/android/launcher3/CropView;->s:Lcom/android/launcher3/Z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CropView;->s:Lcom/android/launcher3/Z;

    invoke-interface {v0}, Lcom/android/launcher3/Z;->a()V

    :cond_0
    :goto_4
    iget-boolean v0, p0, Lcom/android/launcher3/CropView;->l:Z

    if-nez v0, :cond_8

    :goto_5
    return v8

    :cond_1
    move v7, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-eq v0, v5, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v2, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v1, v10

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    if-ne v9, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget v4, p0, Lcom/android/launcher3/CropView;->e:F

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/android/launcher3/CropView;->e:F

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/CropView;->f:F

    sub-float/2addr v5, v1

    iget v7, p0, Lcom/android/launcher3/CropView;->f:F

    sub-float/2addr v7, v1

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/2addr v0, v5

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v5, p0, Lcom/android/launcher3/CropView;->s:Lcom/android/launcher3/Z;

    if-eqz v5, :cond_0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_7

    iget-wide v4, p0, Lcom/android/launcher3/CropView;->d:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v12, v0

    add-long/2addr v4, v12

    cmp-long v0, v10, v4

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/CropView;->s:Lcom/android/launcher3/Z;

    invoke-interface {v0}, Lcom/android/launcher3/Z;->b()V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/CropView;->s:Lcom/android/launcher3/Z;

    invoke-interface {v0}, Lcom/android/launcher3/Z;->c()V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/CropView;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/CropView;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    packed-switch v9, :pswitch_data_0

    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/CropView;->m:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/CropView;->a(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v5, v5, Lcom/android/b/a/i;->a:F

    iget-object v7, p0, Lcom/android/launcher3/CropView;->o:[F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v9

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v9

    iget-object v9, p0, Lcom/android/launcher3/CropView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v9, p0, Lcom/android/launcher3/CropView;->p:[F

    iget-object v10, p0, Lcom/android/launcher3/CropView;->p:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    iget-object v10, p0, Lcom/android/launcher3/CropView;->p:[F

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    iget v10, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v6

    if-lez v10, :cond_c

    const/4 v10, 0x0

    iget v11, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v11, v5

    aput v11, v9, v10

    :cond_9
    :goto_7
    iget v10, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v6

    if-lez v10, :cond_d

    const/4 v10, 0x1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v5

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    aput v0, v9, v10

    :cond_a
    :goto_8
    move v0, v3

    :goto_9
    if-le v0, v8, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/CropView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget v0, p0, Lcom/android/launcher3/CropView;->i:F

    const/4 v3, 0x0

    aget v3, v9, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/CropView;->i:F

    iget v0, p0, Lcom/android/launcher3/CropView;->j:F

    const/4 v3, 0x1

    aget v3, v9, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/CropView;->j:F

    invoke-direct {p0}, Lcom/android/launcher3/CropView;->f()V

    :cond_b
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v2, p0, Lcom/android/launcher3/CropView;->g:F

    iput v1, p0, Lcom/android/launcher3/CropView;->h:F

    goto/16 :goto_5

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/CropView;->n:[F

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/launcher3/CropView;->g:F

    sub-float/2addr v7, v2

    iget-object v9, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v9, v9, Lcom/android/b/a/i;->a:F

    div-float/2addr v7, v9

    aput v7, v0, v5

    const/4 v5, 0x1

    iget v7, p0, Lcom/android/launcher3/CropView;->h:F

    sub-float/2addr v7, v1

    iget-object v9, p0, Lcom/android/launcher3/CropView;->b:Lcom/android/b/a/i;

    iget v9, v9, Lcom/android/b/a/i;->a:F

    div-float/2addr v7, v9

    aput v7, v0, v5

    iget-object v5, p0, Lcom/android/launcher3/CropView;->u:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget v5, p0, Lcom/android/launcher3/CropView;->i:F

    const/4 v7, 0x0

    aget v7, v0, v7

    add-float/2addr v5, v7

    iput v5, p0, Lcom/android/launcher3/CropView;->i:F

    iget v5, p0, Lcom/android/launcher3/CropView;->j:F

    const/4 v7, 0x1

    aget v0, v0, v7

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/launcher3/CropView;->j:F

    invoke-direct {p0}, Lcom/android/launcher3/CropView;->f()V

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_c
    :try_start_2
    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    const/4 v10, 0x0

    iget v11, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    div-float/2addr v11, v5

    aput v11, v9, v10

    goto/16 :goto_7

    :cond_d
    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    const/4 v10, 0x1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/android/launcher3/CropView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v0, v11

    div-float/2addr v0, v5

    aput v0, v9, v10

    goto/16 :goto_8

    :cond_e
    aget v3, v7, v0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_f

    aget v3, v9, v0

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    aput v3, v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
