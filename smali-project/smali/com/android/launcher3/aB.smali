.class final Lcom/android/launcher3/aB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/aA;

.field private final synthetic b:F

.field private final synthetic c:F

.field private final synthetic d:F

.field private final synthetic e:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/aA;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    iput p2, p0, Lcom/android/launcher3/aB;->b:F

    iput p3, p0, Lcom/android/launcher3/aB;->c:F

    iput p4, p0, Lcom/android/launcher3/aB;->d:F

    iput p5, p0, Lcom/android/launcher3/aB;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/aB;->b:F

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-static {v2}, Lcom/android/launcher3/aA;->a(Lcom/android/launcher3/aA;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher3/aB;->c:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-static {v3}, Lcom/android/launcher3/aA;->b(Lcom/android/launcher3/aA;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-static {v3}, Lcom/android/launcher3/aA;->a(Lcom/android/launcher3/aA;)F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/launcher3/aA;->a(Lcom/android/launcher3/aA;F)V

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-static {v3}, Lcom/android/launcher3/aA;->b(Lcom/android/launcher3/aA;)F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/launcher3/aA;->b(Lcom/android/launcher3/aA;F)V

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    iget v4, p0, Lcom/android/launcher3/aB;->d:F

    iget v5, p0, Lcom/android/launcher3/aB;->e:F

    iget v6, p0, Lcom/android/launcher3/aB;->d:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/aA;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    iget v4, p0, Lcom/android/launcher3/aB;->d:F

    iget v5, p0, Lcom/android/launcher3/aB;->e:F

    iget v6, p0, Lcom/android/launcher3/aB;->d:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher3/aA;->setScaleY(F)V

    invoke-static {}, Lcom/android/launcher3/aA;->k()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-static {}, Lcom/android/launcher3/aA;->k()F

    move-result v4

    mul-float/2addr v4, v0

    sub-float v0, v7, v0

    add-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/android/launcher3/aA;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    iget-object v3, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-virtual {v3}, Lcom/android/launcher3/aA;->getTranslationX()F

    move-result v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    iget-object v1, p0, Lcom/android/launcher3/aB;->a:Lcom/android/launcher3/aA;

    invoke-virtual {v1}, Lcom/android/launcher3/aA;->getTranslationY()F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->setTranslationY(F)V

    goto :goto_0
.end method
