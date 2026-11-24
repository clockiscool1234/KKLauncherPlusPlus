.class final Lcom/android/launcher3/dY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dX;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/dX;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iput p2, p0, Lcom/android/launcher3/dY;->b:I

    iput p3, p0, Lcom/android/launcher3/dY;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget v1, p0, Lcom/android/launcher3/dY;->b:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dX;->o(I)V

    iget v0, p0, Lcom/android/launcher3/dY;->c:I

    iget v1, p0, Lcom/android/launcher3/dY;->b:I

    if-ge v0, v1, :cond_1

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/android/launcher3/dY;->c:I

    iget v4, p0, Lcom/android/launcher3/dY;->b:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Lcom/android/launcher3/dY;->c:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v4, p0, Lcom/android/launcher3/dY;->c:I

    iget v5, p0, Lcom/android/launcher3/dY;->b:I

    if-le v4, v5, :cond_3

    iget v4, p0, Lcom/android/launcher3/dY;->c:I

    add-int/lit8 v4, v4, -0x1

    :goto_2
    move v5, v0

    :goto_3
    if-le v5, v4, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v1, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v1, v1, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dX;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v0, v0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-static {}, Lcom/android/launcher3/dX;->R()V

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v1, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v1, v1, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/dY;->b:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/dX;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget-object v0, v0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/dY;->b:I

    invoke-static {}, Lcom/android/launcher3/dX;->S()V

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-static {v0, v2}, Lcom/android/launcher3/dX;->a(Lcom/android/launcher3/dX;I)V

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-static {v0}, Lcom/android/launcher3/dX;->a(Lcom/android/launcher3/dX;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-static {v0}, Lcom/android/launcher3/dX;->a(Lcom/android/launcher3/dX;)Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-virtual {v1}, Lcom/android/launcher3/dX;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->a(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/launcher3/dY;->b:I

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/launcher3/dY;->b:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/dX;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-virtual {v0}, Lcom/android/launcher3/dX;->x()I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/dX;->l(I)I

    move-result v7

    add-int/2addr v7, v0

    iget-object v0, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    invoke-virtual {v0}, Lcom/android/launcher3/dX;->x()I

    move-result v0

    iget-object v8, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    add-int v9, v5, v1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/dX;->l(I)I

    move-result v8

    add-int/2addr v8, v0

    const/16 v0, 0x64

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    sub-int v0, v7, v8

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/dY;->a:Lcom/android/launcher3/dX;

    iget v7, v7, Lcom/android/launcher3/dX;->L:I

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v7, v3, [Landroid/animation/Animator;

    const-string v8, "translationX"

    new-array v9, v3, [F

    const/4 v10, 0x0

    aput v10, v9, v11

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3
.end method
