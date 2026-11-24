.class public final Lcom/android/launcher3/dI;
.super Landroid/animation/Animator;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private a:Ljava/util/EnumSet;

.field private b:Landroid/view/ViewPropertyAnimator;

.field private c:Landroid/view/View;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:J

.field private j:Landroid/animation/TimeInterpolator;

.field private k:Ljava/util/ArrayList;

.field private l:Z

.field private m:Lcom/android/launcher3/aK;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const-class v0, Lcom/android/launcher3/dJ;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dI;->l:Z

    iput-object p1, p0, Lcom/android/launcher3/dI;->c:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/launcher3/dI;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->j:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(F)Lcom/android/launcher3/dI;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->b:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/android/launcher3/dI;->d:F

    return-object p0
.end method

.method public final addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(F)Lcom/android/launcher3/dI;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->c:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/android/launcher3/dI;->e:F

    return-object p0
.end method

.method public final c(F)Lcom/android/launcher3/dI;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->d:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/android/launcher3/dI;->f:F

    return-object p0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final clone()Landroid/animation/Animator;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(F)Lcom/android/launcher3/dI;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->f:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/android/launcher3/dI;->g:F

    return-object p0
.end method

.method public final end()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/dI;->i:J

    return-wide v0
.end method

.method public final getListeners()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getStartDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/dI;->h:J

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dI;->l:Z

    return v0
.end method

.method public final isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/dI;->l:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/dI;->l:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->m:Lcom/android/launcher3/aK;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/aK;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dI;->l:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final removeAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dI;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDuration(J)Landroid/animation/Animator;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->h:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-wide p1, p0, Lcom/android/launcher3/dI;->i:J

    return-object p0
.end method

.method public final setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->i:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/android/launcher3/dI;->j:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public final setStartDelay(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->g:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iput-wide p1, p0, Lcom/android/launcher3/dI;->h:J

    return-void
.end method

.method public final setTarget(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setupEndValues()V
    .locals 0

    return-void
.end method

.method public final setupStartValues()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dI;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/launcher3/aK;

    iget-object v1, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/android/launcher3/dI;->c:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/aK;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/dI;->m:Lcom/android/launcher3/aK;

    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->a:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->b:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/dI;->d:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->c:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/dI;->e:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->e:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->d:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/dI;->f:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->f:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher3/dI;->g:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->g:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/android/launcher3/dI;->h:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->h:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/android/launcher3/dI;->i:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->i:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher3/dI;->j:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/dI;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher3/dJ;->j:Lcom/android/launcher3/dJ;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/launcher3/dI;->b:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {p0}, Lcom/android/launcher3/cw;->a(Landroid/animation/Animator;)V

    return-void
.end method
