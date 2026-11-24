.class public abstract Lcom/android/launcher3/ez;
.super Lcom/android/launcher3/dX;


# static fields
.field private static final a:F


# instance fields
.field private O:I

.field private P:Landroid/view/animation/Interpolator;

.field private b:F

.field private c:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/launcher3/ez;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ez;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/launcher3/ez;->H:Z

    iget v2, p0, Lcom/android/launcher3/ez;->O:I

    if-eq v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/ez;->I:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(IIZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/ez;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/launcher3/ez;->i:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/ez;->m(I)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/ez;->z:I

    sub-int v3, v0, v3

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v4, v0, 0x64

    iget-object v0, p0, Lcom/android/launcher3/ez;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ez;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->f()V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ez;->P:Landroid/view/animation/Interpolator;

    check-cast v0, Lcom/android/launcher3/eA;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/eA;->a(I)V

    :goto_0
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_2

    int-to-float v2, v4

    int-to-float v4, v4

    int-to-float v0, v0

    iget v5, p0, Lcom/android/launcher3/ez;->b:F

    div-float/2addr v0, v5

    div-float v0, v4, v0

    iget v4, p0, Lcom/android/launcher3/ez;->c:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/launcher3/ez;->a_(III)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/ez;->P:Landroid/view/animation/Interpolator;

    check-cast v0, Lcom/android/launcher3/eA;

    invoke-virtual {v0}, Lcom/android/launcher3/eA;->a()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v4, 0x64

    goto :goto_1
.end method


# virtual methods
.method protected final U()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/ez;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/dX;->U()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ez;->T()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/ez;->a(II)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/dX;->a()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ez;->O:I

    iget v0, p0, Lcom/android/launcher3/ez;->O:I

    if-nez v0, :cond_0

    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lcom/android/launcher3/ez;->b:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/launcher3/ez;->c:F

    new-instance v0, Lcom/android/launcher3/eA;

    invoke-direct {v0}, Lcom/android/launcher3/eA;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ez;->P:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/launcher3/ez;->P:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ez;->a(Landroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected final a(II)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/launcher3/ez;->O:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/dX;->a(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/ez;->a(IIZ)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/launcher3/ez;->O:I

    if-ne v0, v1, :cond_1

    invoke-super {p0}, Lcom/android/launcher3/dX;->computeScroll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/ez;->K()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/ez;->p:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/ez;->f:F

    sub-float v1, v0, v1

    sget v2, Lcom/android/launcher3/ez;->a:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/ez;->g:F

    iget v3, p0, Lcom/android/launcher3/ez;->z:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/ez;->z:I

    int-to-float v3, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/ez;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/ez;->scrollTo(II)V

    iput v0, p0, Lcom/android/launcher3/ez;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/ez;->invalidate()V

    goto :goto_0
.end method

.method protected final o(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/ez;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/dX;->o(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/launcher3/ez;->a(IIZ)V

    goto :goto_0
.end method
