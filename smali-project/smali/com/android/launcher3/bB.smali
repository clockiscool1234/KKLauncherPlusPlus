.class public final Lcom/android/launcher3/bB;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:Landroid/animation/ValueAnimator;

.field private e:Z

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;JFF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/launcher3/bB;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/bB;->f:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    aput p5, v0, v3

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    iput-wide p2, p0, Lcom/android/launcher3/bB;->a:J

    iput v2, p0, Lcom/android/launcher3/bB;->b:F

    iput p5, p0, Lcom/android/launcher3/bB;->c:F

    iget-object v0, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/bC;

    invoke-direct {v1, p0}, Lcom/android/launcher3/bC;-><init>(Lcom/android/launcher3/bB;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private a(I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    if-ne p1, v10, :cond_0

    iget v0, p0, Lcom/android/launcher3/bB;->c:F

    move v1, v0

    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/bB;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/bB;->b:F

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    iget-wide v4, p0, Lcom/android/launcher3/bB;->a:J

    sub-long v2, v4, v2

    iget-object v4, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lcom/android/launcher3/bB;->a:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v9

    aput v1, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v9, p0, Lcom/android/launcher3/bB;->e:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/bB;->b:F

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/bB;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bB;->f:Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/bB;->a(I)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/bB;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/bB;->d:Landroid/animation/ValueAnimator;

    return-object v0
.end method
