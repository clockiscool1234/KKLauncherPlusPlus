.class final Lcom/android/launcher3/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DragLayer;

.field private final synthetic b:Lcom/android/launcher3/aA;

.field private final synthetic c:Landroid/view/animation/Interpolator;

.field private final synthetic d:Landroid/view/animation/Interpolator;

.field private final synthetic e:F

.field private final synthetic f:F

.field private final synthetic g:F

.field private final synthetic h:F

.field private final synthetic i:F

.field private final synthetic j:F

.field private final synthetic k:F

.field private final synthetic l:Landroid/graphics/Rect;

.field private final synthetic m:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/aA;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/at;->b:Lcom/android/launcher3/aA;

    iput-object p3, p0, Lcom/android/launcher3/at;->c:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/launcher3/at;->d:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/android/launcher3/at;->e:F

    iput p6, p0, Lcom/android/launcher3/at;->f:F

    iput p7, p0, Lcom/android/launcher3/at;->g:F

    iput p8, p0, Lcom/android/launcher3/at;->h:F

    iput p9, p0, Lcom/android/launcher3/at;->i:F

    iput p10, p0, Lcom/android/launcher3/at;->j:F

    iput p11, p0, Lcom/android/launcher3/at;->k:F

    iput-object p12, p0, Lcom/android/launcher3/at;->l:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/android/launcher3/at;->m:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/android/launcher3/at;->b:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/launcher3/at;->b:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lcom/android/launcher3/at;->c:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/at;->d:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    iget v5, p0, Lcom/android/launcher3/at;->e:F

    iget v6, p0, Lcom/android/launcher3/at;->f:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/at;->g:F

    iget v7, p0, Lcom/android/launcher3/at;->f:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/launcher3/at;->h:F

    mul-float/2addr v7, v1

    sub-float v8, v10, v1

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/at;->i:F

    mul-float/2addr v8, v1

    sub-float v1, v10, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v8

    iget v8, p0, Lcom/android/launcher3/at;->j:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/android/launcher3/at;->k:F

    sub-float v0, v10, v0

    mul-float/2addr v0, v9

    add-float/2addr v8, v0

    iget-object v0, p0, Lcom/android/launcher3/at;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v5, v10

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v3, v11

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/at;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v5, v6, v10

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/at;->m:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    iget-object v0, p0, Lcom/android/launcher3/at;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/DragLayer;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v3}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aA;->getScrollX()I

    move-result v3

    sub-int v3, v4, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v3}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aA;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v3}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/aA;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v0

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/aA;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/aA;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/aA;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/at;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/at;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/DragLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v3}, Lcom/android/launcher3/DragLayer;->b(Lcom/android/launcher3/DragLayer;)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/at;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v5}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/DragLayer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_2
.end method
