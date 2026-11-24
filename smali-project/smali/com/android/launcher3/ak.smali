.class final Lcom/android/launcher3/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private a:Lcom/android/launcher3/DragLayer;

.field private b:Landroid/graphics/PointF;

.field private c:Landroid/graphics/Rect;

.field private d:J

.field private e:Z

.field private f:F

.field private final g:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/ak;->g:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lcom/android/launcher3/ak;->a:Lcom/android/launcher3/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/ak;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iput-wide p4, p0, Lcom/android/launcher3/ak;->d:J

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/android/launcher3/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/ak;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/ak;->a:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/aA;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/launcher3/ak;->e:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/ak;->e:Z

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getScaleX()F

    move-result v4

    sub-float v5, v4, v9

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v9

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    iget-object v6, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v6, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v5, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/ak;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-wide v7, p0, Lcom/android/launcher3/ak;->d:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/ak;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-wide v7, p0, Lcom/android/launcher3/ak;->d:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v10

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/aA;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/launcher3/ak;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/aA;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher3/ak;->g:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v9, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/ak;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/android/launcher3/ak;->f:F

    mul-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/launcher3/ak;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/android/launcher3/ak;->f:F

    mul-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iput-wide v2, p0, Lcom/android/launcher3/ak;->d:J

    return-void
.end method
