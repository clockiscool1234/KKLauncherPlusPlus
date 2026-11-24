.class final Lcom/android/launcher3/N;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:I

.field i:Z

.field final synthetic j:Lcom/android/launcher3/CellLayout;

.field private k:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V
    .locals 11

    iput-object p1, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/N;->i:Z

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->c(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v5

    move-object v0, p1

    move v1, p4

    move/from16 v2, p5

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(IIII[I)V

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->c(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v6, v0, v1

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->c(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v7, v0, v1

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->c(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v5

    move-object v0, p1

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(IIII[I)V

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->c(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->c(Lcom/android/launcher3/CellLayout;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v2, v0, v6

    sub-int/2addr v1, v7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/N;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/N;->c:F

    if-nez p3, :cond_2

    const/4 v0, -0x1

    :goto_0
    if-ne v2, v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_3

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->d(Lcom/android/launcher3/CellLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/N;->b:F

    :cond_1
    :goto_1
    iput p3, p0, Lcom/android/launcher3/N;->h:I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/N;->d:F

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/N;->e:F

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/N;->f:F

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/N;->g:F

    iput-object p2, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->d(Lcom/android/launcher3/CellLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/N;->c:F

    goto :goto_1

    :cond_4
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    neg-int v5, v0

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->d(Lcom/android/launcher3/CellLayout;)F

    move-result v2

    float-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v2, v5

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/N;->b:F

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->d(Lcom/android/launcher3/CellLayout;)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/N;->c:F

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/launcher3/N;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/N;->b()V

    return-void
.end method

.method private b()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher3/N;->k:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/N;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/N;->k:Landroid/animation/Animator;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    const-string v4, "translationX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->e(Lcom/android/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->e(Lcom/android/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/N;

    iget-object v1, v0, Lcom/android/launcher3/N;->k:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/N;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->e(Lcom/android/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/launcher3/N;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/N;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/N;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/launcher3/N;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/N;->c:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/N;->k:Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget v0, p0, Lcom/android/launcher3/N;->h:I

    if-nez v0, :cond_4

    const/16 v0, 0x15e

    :goto_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Lcom/android/launcher3/O;

    invoke-direct {v0, p0}, Lcom/android/launcher3/O;-><init>(Lcom/android/launcher3/N;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/P;

    invoke-direct {v0, p0}, Lcom/android/launcher3/P;-><init>(Lcom/android/launcher3/N;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->e(Lcom/android/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/N;->a:Landroid/view/View;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x12c

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
