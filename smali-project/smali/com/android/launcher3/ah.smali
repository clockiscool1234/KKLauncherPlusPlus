.class final Lcom/android/launcher3/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/DragLayer;

.field private final synthetic b:Landroid/animation/TimeInterpolator;

.field private final synthetic c:F

.field private final synthetic d:F

.field private final synthetic e:F

.field private final synthetic f:F

.field private final synthetic g:F

.field private final synthetic h:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/ah;->a:Lcom/android/launcher3/DragLayer;

    iput-object p3, p0, Lcom/android/launcher3/ah;->b:Landroid/animation/TimeInterpolator;

    iput p4, p0, Lcom/android/launcher3/ah;->c:F

    iput p5, p0, Lcom/android/launcher3/ah;->d:F

    iput p6, p0, Lcom/android/launcher3/ah;->e:F

    iput p7, p0, Lcom/android/launcher3/ah;->f:F

    iput p8, p0, Lcom/android/launcher3/ah;->g:F

    iput p9, p0, Lcom/android/launcher3/ah;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/ah;->a:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/aA;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/ah;->b:Landroid/animation/TimeInterpolator;

    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->e()F

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getScaleX()F

    move-result v4

    sub-float v5, v9, v4

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    sub-float v4, v9, v4

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    div-float/2addr v4, v10

    sub-float v6, v9, v1

    sub-float v7, v9, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/launcher3/ah;->c:F

    sub-float/2addr v7, v5

    mul-float/2addr v6, v7

    sub-float v7, v9, v1

    mul-float/2addr v7, v10

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/android/launcher3/ah;->d:F

    sub-float/2addr v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v7, v1, v1

    iget v8, p0, Lcom/android/launcher3/ah;->e:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float v7, v9, v1

    sub-float v8, v9, v1

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/ah;->f:F

    sub-float v4, v8, v4

    mul-float/2addr v4, v7

    sub-float v7, v9, v1

    mul-float/2addr v7, v10

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/android/launcher3/ah;->g:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    mul-float/2addr v1, v1

    iget v5, p0, Lcom/android/launcher3/ah;->h:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    invoke-virtual {v0, v6}, Lcom/android/launcher3/aA;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setTranslationY(F)V

    sub-float v1, v9, v2

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setScaleX(F)V

    sub-float v1, v9, v2

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setScaleY(F)V

    sub-float v1, v9, v2

    mul-float/2addr v1, v11

    add-float/2addr v1, v11

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setAlpha(F)V

    return-void
.end method
