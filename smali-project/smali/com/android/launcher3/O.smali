.class final Lcom/android/launcher3/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/N;


# direct methods
.method constructor <init>(Lcom/android/launcher3/N;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v0, v0, Lcom/android/launcher3/N;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget-boolean v0, v0, Lcom/android/launcher3/N;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v3, v3, Lcom/android/launcher3/N;->b:F

    mul-float/2addr v3, v0

    sub-float v4, v1, v0

    iget-object v5, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v5, v5, Lcom/android/launcher3/N;->d:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v4, v4, Lcom/android/launcher3/N;->c:F

    mul-float/2addr v4, v0

    sub-float v0, v1, v0

    iget-object v5, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v5, v5, Lcom/android/launcher3/N;->e:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget-object v4, v4, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget-object v3, v3, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v0, v0, Lcom/android/launcher3/N;->f:F

    mul-float/2addr v0, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget v2, v2, Lcom/android/launcher3/N;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget-object v1, v1, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/O;->a:Lcom/android/launcher3/N;

    iget-object v1, v1, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
