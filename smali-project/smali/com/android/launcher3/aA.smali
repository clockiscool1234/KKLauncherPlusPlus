.class public final Lcom/android/launcher3/aA;
.super Landroid/view/View;


# static fields
.field private static b:F


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Point;

.field private i:Landroid/graphics/Rect;

.field private j:Lcom/android/launcher3/DragLayer;

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher3/aA;->b:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/aA;->h:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/aA;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/aA;->j:Lcom/android/launcher3/DragLayer;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/aA;->k:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/aA;->l:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/aA;->m:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/aA;->n:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/aA;->o:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/aA;->p:F

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/aA;->j:Lcom/android/launcher3/DragLayer;

    move/from16 v0, p9

    iput v0, p0, Lcom/android/launcher3/aA;->o:F

    invoke-virtual {p0}, Lcom/android/launcher3/aA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v4, v3

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v5, v3

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, p7

    int-to-float v3, v0

    add-float/2addr v2, v3

    move/from16 v0, p7

    int-to-float v3, v0

    div-float v7, v2, v3

    move/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setScaleX(F)V

    move/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setScaleY(F)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/aA;->a:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher3/aA;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v8, p0, Lcom/android/launcher3/aA;->a:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/aB;

    move-object v3, p0

    move/from16 v6, p9

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/aB;-><init>(Lcom/android/launcher3/aA;FFFF)V

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p2, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/launcher3/aA;->i:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/launcher3/aA;->f:I

    iput p4, p0, Lcom/android/launcher3/aA;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/aA;->measure(II)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/android/launcher3/aA;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/aA;->m:F

    return v0
.end method

.method static synthetic a(Lcom/android/launcher3/aA;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/aA;->m:F

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/aA;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/aA;->n:F

    return v0
.end method

.method static synthetic b(Lcom/android/launcher3/aA;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/aA;->n:F

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/aA;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/aA;->l:F

    return-void
.end method

.method static synthetic k()F
    .locals 1

    sget v0, Lcom/android/launcher3/aA;->b:F

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/aA;->p:F

    return v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/aA;->p:F

    return-void
.end method

.method public final a(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher3/aC;

    invoke-direct {v1, p0}, Lcom/android/launcher3/aC;-><init>(Lcom/android/launcher3/aA;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/aA;->j:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->c:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/android/launcher3/aA;->f:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setTranslationX(F)V

    iget v0, p0, Lcom/android/launcher3/aA;->g:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setTranslationY(F)V

    new-instance v0, Lcom/android/launcher3/aD;

    invoke-direct {v0, p0}, Lcom/android/launcher3/aD;-><init>(Lcom/android/launcher3/aA;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aA;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aA;->h:Landroid/graphics/Point;

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aA;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aA;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/aA;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method final b(II)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/aA;->f:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/launcher3/aA;->m:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setTranslationX(F)V

    iget v0, p0, Lcom/android/launcher3/aA;->g:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/launcher3/aA;->n:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/aA;->setTranslationY(F)V

    return-void
.end method

.method public final c()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aA;->h:Landroid/graphics/Point;

    return-object v0
.end method

.method public final d()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aA;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/aA;->o:F

    return v0
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/aA;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/aA;->o:F

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/aA;->k:Z

    return v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aA;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aA;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aA;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/aA;->n:F

    iput v0, p0, Lcom/android/launcher3/aA;->m:F

    invoke-virtual {p0}, Lcom/android/launcher3/aA;->requestLayout()V

    return-void
.end method

.method final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/aA;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aA;->j:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/aA;->k:Z

    iget v1, p0, Lcom/android/launcher3/aA;->l:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/aA;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :goto_0
    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher3/aA;->l:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/aA;->l:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/aA;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/aA;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/launcher3/aA;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/aA;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/aA;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/aA;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/aA;->invalidate()V

    return-void
.end method
