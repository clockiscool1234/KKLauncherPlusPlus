.class public abstract Lcom/android/launcher3/dX;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field protected A:[I

.field protected B:Z

.field protected C:I

.field protected D:I

.field protected E:Ljava/util/ArrayList;

.field protected F:Z

.field protected G:Z

.field protected H:Z

.field protected I:Z

.field protected J:Z

.field protected K:Z

.field protected L:I

.field protected M:Landroid/view/View;

.field protected final N:Landroid/graphics/Rect;

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Landroid/view/animation/Interpolator;

.field private T:Landroid/view/VelocityTracker;

.field private U:I

.field private V:F

.field private W:F

.field private Z:F

.field private a:Z

.field private aA:I

.field private aB:I

.field private aC:Ljava/lang/Runnable;

.field private aD:Landroid/graphics/Matrix;

.field private aE:[F

.field private aF:[I

.field private aG:Landroid/graphics/Rect;

.field private aH:Landroid/graphics/Rect;

.field private aI:I

.field private aJ:Z

.field private aK:I

.field private aL:I

.field private aa:F

.field private ab:F

.field private ac:F

.field private ad:F

.field private ae:F

.field private af:I

.field private ag:Z

.field private ah:[I

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:I

.field private ap:Lcom/android/launcher3/PageIndicator;

.field private aq:Z

.field private ar:Landroid/graphics/Rect;

.field private as:I

.field private at:I

.field private au:F

.field private av:Z

.field private aw:Ljava/lang/Runnable;

.field private ax:I

.field private ay:Z

.field private az:Z

.field private b:I

.field private c:I

.field protected d:I

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:Z

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Lcom/android/launcher3/dD;

.field protected n:F

.field protected o:F

.field protected p:I

.field protected q:Landroid/view/View$OnLongClickListener;

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:Z

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/dX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/dX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->a:Z

    iput v3, p0, Lcom/android/launcher3/dX;->b:I

    iput v3, p0, Lcom/android/launcher3/dX;->c:I

    iput-boolean v4, p0, Lcom/android/launcher3/dX;->h:Z

    const/16 v0, -0x3e9

    iput v0, p0, Lcom/android/launcher3/dX;->j:I

    iput v3, p0, Lcom/android/launcher3/dX;->k:I

    iput v2, p0, Lcom/android/launcher3/dX;->U:I

    iput v3, p0, Lcom/android/launcher3/dX;->af:I

    iput v2, p0, Lcom/android/launcher3/dX;->p:I

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->ai:Z

    iput v2, p0, Lcom/android/launcher3/dX;->w:I

    iput v2, p0, Lcom/android/launcher3/dX;->x:I

    iput-boolean v4, p0, Lcom/android/launcher3/dX;->al:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    iput v3, p0, Lcom/android/launcher3/dX;->D:I

    iput-boolean v4, p0, Lcom/android/launcher3/dX;->F:Z

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->G:Z

    iput-boolean v4, p0, Lcom/android/launcher3/dX;->H:Z

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->I:Z

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->am:Z

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->J:Z

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->an:Z

    iput-boolean v4, p0, Lcom/android/launcher3/dX;->K:Z

    iput-boolean v4, p0, Lcom/android/launcher3/dX;->aq:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher3/dX;->as:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/dX;->L:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/launcher3/dX;->at:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/dX;->au:F

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->av:Z

    iput v3, p0, Lcom/android/launcher3/dX;->ax:I

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->ay:Z

    iput v1, p0, Lcom/android/launcher3/dX;->aA:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dX;->aD:Landroid/graphics/Matrix;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/dX;->aF:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dX;->aG:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dX;->aH:Landroid/graphics/Rect;

    const/16 v0, -0x578

    iput v0, p0, Lcom/android/launcher3/dX;->aI:I

    iput-boolean v2, p0, Lcom/android/launcher3/dX;->aJ:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher3/dX;->aK:I

    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/launcher3/dX;->aL:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->j:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->s:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->t:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->u:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->v:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->ao:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->a()V

    return-void
.end method

.method public static R()V
    .locals 0

    return-void
.end method

.method public static S()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/dX;)Lcom/android/launcher3/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->c(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/dX;->aq:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/PageIndicator;->a(IZ)V

    :cond_0
    return-void
.end method

.method private a(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/launcher3/dX;->k:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dX;->h()V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->f()V

    invoke-virtual {p0, p3}, Lcom/android/launcher3/dX;->awakenScrollBars(I)Z

    if-eqz p4, :cond_3

    move v5, v2

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher3/dX;->a(Z)V

    :cond_1
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/dD;->a(Landroid/animation/TimeInterpolator;)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    iget v1, p0, Lcom/android/launcher3/dX;->z:I

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/dD;->a(IIIII)V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->e()V

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->computeScroll()V

    :cond_2
    iput-boolean v6, p0, Lcom/android/launcher3/dX;->am:Z

    iput-boolean v6, p0, Lcom/android/launcher3/dX;->ai:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    return-void

    :cond_3
    if-nez p3, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    iget-object v1, p0, Lcom/android/launcher3/dX;->S:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dD;->a(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_5
    move v5, p3

    goto :goto_0
.end method

.method private a(IIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/dX;->z:I

    sub-int v2, v0, v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dX;->a(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/dX;I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dX;->ax:I

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->f()V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dX;->k:I

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;FF)[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    aput p2, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    aput p3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->aE:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->n:F

    iget v1, p0, Lcom/android/launcher3/dX;->Z:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/dX;->ab:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dX;->ac:F

    iget-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dX;->o:F

    iget v2, p0, Lcom/android/launcher3/dX;->aa:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/dX;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dX;->n()V

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/dX;->a:Z

    iget-boolean v2, p0, Lcom/android/launcher3/dX;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/dX;->j()V

    iget-object v2, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->a([I)V

    iget v2, p0, Lcom/android/launcher3/dX;->i:I

    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/dX;->A:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->i(I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/dX;->al:Z

    return-void

    :cond_1
    iget v2, p0, Lcom/android/launcher3/dX;->i:I

    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    aget v3, v3, v1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/dX;->A:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->i(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroid/view/View;FF)[F
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->aD:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/android/launcher3/dX;->aD:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/dX;->aE:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->aE:[F

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dD;->a(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dX;->k:I

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/dX;->D:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->Z:F

    iput v1, p0, Lcom/android/launcher3/dX;->n:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->o:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/dX;->ad:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->D:I

    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/dX;->aG:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->aG:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private c(Z)Z
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher3/dX;->az:Z

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->c(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->a(I)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->J:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->J:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->J()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->J:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->J:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->o()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    const/16 v1, 0x1000

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/dX;->i:I

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x2000

    goto :goto_0
.end method

.method private static i()Lcom/android/launcher3/ec;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/android/launcher3/ec;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/ec;-><init>(II)V

    return-object v0
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a([I)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->b:I

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->c:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->b:I

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->c:I

    goto :goto_0
.end method

.method private k()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/dX;->l()V

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->ay:Z

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/android/launcher3/dX;->ay:Z

    new-instance v0, Lcom/android/launcher3/ea;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ea;-><init>(Lcom/android/launcher3/dX;)V

    iget-boolean v1, p0, Lcom/android/launcher3/dX;->aJ:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/launcher3/eb;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/eb;-><init>(Lcom/android/launcher3/dX;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/dX;->aC:Ljava/lang/Runnable;

    iget v0, p0, Lcom/android/launcher3/dX;->aA:I

    iput v0, p0, Lcom/android/launcher3/dX;->aB:I

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/dX;->b(II)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Lcom/android/launcher3/dX;->as:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/launcher3/dZ;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dZ;-><init>(Lcom/android/launcher3/dX;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iput-boolean v6, p0, Lcom/android/launcher3/dX;->ag:Z

    iput v6, p0, Lcom/android/launcher3/dX;->p:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dX;->D:I

    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dX;->aB:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dX;->aB:I

    iget-object v0, p0, Lcom/android/launcher3/dX;->aC:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->aB:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->aC:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dX;->aC:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->an:Z

    return-void
.end method

.method protected final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->an:Z

    return v0
.end method

.method final C()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    return v0
.end method

.method final D()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/dX;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->k:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    goto :goto_0
.end method

.method protected final E()V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->scrollTo(II)V

    iget-object v1, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dD;->a(I)V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->c()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final F()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->H()V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->c()V

    return-void
.end method

.method final G()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dX;->j:I

    return v0
.end method

.method protected H()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dX;->e()V

    return-void
.end method

.method protected final I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->J:Z

    return v0
.end method

.method protected J()V
    .locals 0

    return-void
.end method

.method protected final K()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->b()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->c()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->C:I

    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->b()I

    move-result v3

    if-eq v0, v3, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/dX;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScaleX()F

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->b()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v1, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v1}, Lcom/android/launcher3/dD;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    move v0, v2

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/launcher3/dX;->k:I

    if-eq v1, v4, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/dX;->h()V

    iget v1, p0, Lcom/android/launcher3/dX;->k:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->i:I

    iput v4, p0, Lcom/android/launcher3/dX;->k:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->H()V

    iget-boolean v1, p0, Lcom/android/launcher3/dX;->am:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/dX;->b(IZ)V

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->am:Z

    :cond_5
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/launcher3/dX;->g()V

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/dX;->n()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dX;->Q:I

    return v0
.end method

.method protected final M()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->aq:Z

    return-void
.end method

.method protected final N()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->aq:Z

    return-void
.end method

.method protected final O()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->K:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method protected final P()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->b(Z)V

    return-void
.end method

.method protected final Q()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->b(Z)V

    return-void
.end method

.method final T()I
    .locals 8

    const v3, 0x7fffffff

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->x()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->l(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected U()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->T()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->b(II)V

    return-void
.end method

.method public final V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->K:Z

    return v0
.end method

.method protected final W()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->c(IZ)V

    return-void
.end method

.method protected X()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dX;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->az:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    return-void
.end method

.method protected Y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->az:Z

    return-void
.end method

.method protected final a(ILandroid/view/View;I)F
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p3}, Lcom/android/launcher3/dX;->m(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    add-int/lit8 v0, p3, 0x1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, p3, -0x1

    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/dX;->U:I

    add-int/2addr v0, v2

    :goto_0
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/dX;->m(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    new-instance v0, Lcom/android/launcher3/dD;

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/dD;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    new-instance v0, Lcom/android/launcher3/ed;

    invoke-direct {v0}, Lcom/android/launcher3/ed;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dX;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->y:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->r:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dX;->aj:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->ak:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/launcher3/dX;->e:F

    iget v0, p0, Lcom/android/launcher3/dX;->aI:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/dX;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dX;->aI:I

    const/high16 v0, 0x43fa0000    # 500.0f

    iget v1, p0, Lcom/android/launcher3/dX;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dX;->d:I

    const/high16 v0, 0x437a0000    # 250.0f

    iget v1, p0, Lcom/android/launcher3/dX;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dX;->O:I

    const v0, 0x44bb8000    # 1500.0f

    iget v1, p0, Lcom/android/launcher3/dX;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dX;->P:I

    invoke-virtual {p0, p0}, Lcom/android/launcher3/dX;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method protected a(F)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    div-float v0, p1, v0

    cmpl-float v2, v0, v5

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v4

    mul-float v3, v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    :cond_0
    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float v1, p1, v5

    if-gez v1, :cond_2

    iput v0, p0, Lcom/android/launcher3/dX;->C:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/launcher3/dX;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dX;->C:I

    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 9

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/dX;->z:I

    sub-int/2addr v2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/dX;->O:I

    if-ge v3, v4, :cond_0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->b(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v1

    int-to-float v1, v1

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    float-to-double v5, v3

    const-wide v7, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v5, v7

    double-to-float v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/dX;->P:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/dX;->a_(III)V

    goto :goto_0
.end method

.method protected final a(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/launcher3/dX;->a(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public abstract a(IZ)V
.end method

.method protected final a(Landroid/view/MotionEvent;F)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/dX;->D:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v3, v4

    float-to-int v5, v2

    invoke-direct {p0, v3, v5}, Lcom/android/launcher3/dX;->c(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/dX;->n:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v5, v3

    iget v3, p0, Lcom/android/launcher3/dX;->o:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v6, v2

    iget v2, p0, Lcom/android/launcher3/dX;->r:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v2, p0, Lcom/android/launcher3/dX;->aj:I

    if-le v5, v2, :cond_4

    move v3, v1

    :goto_1
    if-le v5, v7, :cond_5

    move v2, v1

    :goto_2
    if-le v6, v7, :cond_2

    move v0, v1

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/dX;->H:Z

    if-eqz v0, :cond_6

    if-eqz v3, :cond_0

    :goto_3
    iput v1, p0, Lcom/android/launcher3/dX;->p:I

    iget v0, p0, Lcom/android/launcher3/dX;->ae:F

    iget v1, p0, Lcom/android/launcher3/dX;->n:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dX;->ae:F

    iput v4, p0, Lcom/android/launcher3/dX;->n:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dX;->ad:F

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/dX;->g:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dX;->f:F

    invoke-direct {p0}, Lcom/android/launcher3/dX;->f()V

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_0

    goto :goto_3
.end method

.method protected final a(Landroid/view/animation/Interpolator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/dX;->S:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    iget-object v1, p0, Lcom/android/launcher3/dX;->S:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dD;->a(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected a([I)V
    .locals 3

    const/4 v2, 0x0

    aput v2, p1, v2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method protected a_(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dX;->a(IIIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public final b(F)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/dX;->au:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->av:Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->requestLayout()V

    return-void
.end method

.method protected final b(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/dX;->a(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected final b(IZ)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->f(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->g(I)I

    move-result v6

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_5

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dV;

    if-lt v3, v5, :cond_2

    if-le v3, v6, :cond_4

    :cond_2
    invoke-interface {v0}, Lcom/android/launcher3/dV;->b()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {v0}, Lcom/android/launcher3/dV;->a()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    if-eq v3, p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    if-gt v5, v3, :cond_7

    if-gt v3, v6, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v3, p1, :cond_8

    if-eqz p2, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/dX;->a(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dX;->a(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected final b([I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->aF:[I

    iget-object v3, p0, Lcom/android/launcher3/dX;->aF:[I

    aput v2, v3, v9

    aput v2, v1, v2

    aput v8, p1, v2

    aput v8, p1, v9

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v4

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    aput v0, p1, v9

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/dX;->aF:[I

    aput v2, v6, v2

    iget-object v6, p0, Lcom/android/launcher3/dX;->aF:[I

    invoke-static {v5, p0, v6, v2}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    iget-object v6, p0, Lcom/android/launcher3/dX;->aF:[I

    aget v6, v6, v2

    if-le v6, v3, :cond_2

    aget v5, p1, v2

    if-ne v5, v8, :cond_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/dX;->aF:[I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v2

    iget-object v6, p0, Lcom/android/launcher3/dX;->aF:[I

    invoke-static {v5, p0, v6, v2}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    iget-object v5, p0, Lcom/android/launcher3/dX;->aF:[I

    aget v5, v5, v2

    if-gez v5, :cond_3

    aget v5, p1, v2

    if-ne v5, v8, :cond_0

    goto :goto_2

    :cond_3
    aget v0, p1, v2

    if-gez v0, :cond_4

    aput v1, p1, v2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    aput v8, p1, v2

    aput v8, p1, v9

    goto :goto_1
.end method

.method c(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final c(F)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    int-to-float v2, v1

    div-float v2, p1, v2

    mul-float/2addr v0, v2

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    :cond_1
    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float v1, p1, v4

    if-gez v1, :cond_2

    iput v0, p0, Lcom/android/launcher3/dX;->C:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher3/dX;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dX;->C:I

    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected final c(IZ)V
    .locals 4

    const/high16 v2, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->an:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/dX;->F:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/dX;->c()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->m()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->measure(II)V

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->i(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    iget-object v0, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/dX;->b(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->requestLayout()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/dX;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->U()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/dX;->E:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/dX;->i()Lcom/android/launcher3/ec;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/ec;->a:Z

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->K()Z

    return-void
.end method

.method protected d(I)I
    .locals 0

    return p1
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->o(I)V

    :cond_0
    return-void
.end method

.method protected d(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d_()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->o(I)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v4, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/dX;->C:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/dX;->af:I

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/dX;->ai:Z

    if-eqz v2, :cond_1

    :cond_0
    iput-boolean v10, p0, Lcom/android/launcher3/dX;->ai:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->e(I)V

    iput v1, p0, Lcom/android/launcher3/dX;->af:I

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->b([I)V

    iget-object v1, p0, Lcom/android/launcher3/dX;->A:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/android/launcher3/dX;->A:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eq v1, v4, :cond_3

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/launcher3/dX;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    iput-boolean v10, p0, Lcom/android/launcher3/dX;->B:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    if-eq v5, v6, :cond_6

    iget-boolean v6, p0, Lcom/android/launcher3/dX;->B:Z

    if-nez v6, :cond_5

    if-gt v1, v0, :cond_6

    if-gt v0, v2, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/launcher3/dX;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/android/launcher3/dX;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->o(I)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->o(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Landroid/view/View;)I
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v3

    if-eq v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected e(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dX;->C:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->C:I

    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    :cond_0
    return-void
.end method

.method protected f(I)I
    .locals 2

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final f(Landroid/view/View;)Z
    .locals 6

    const v5, 0x3f933333    # 1.15f

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/dX;->p:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    aput v0, v3, v0

    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/dX;->a([I)V

    iput-boolean v1, p0, Lcom/android/launcher3/dX;->ay:Z

    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    aget v3, v3, v0

    if-gt v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/dX;->ac:F

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->T()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->o(I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->b(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->X()V

    move v0, v1

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    :goto_0
    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method protected g(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/dX;->i()Lcom/android/launcher3/ec;

    move-result-object v0

    return-object v0
.end method

.method protected h(I)Lcom/android/launcher3/dW;
    .locals 1

    new-instance v0, Lcom/android/launcher3/dW;

    invoke-direct {v0}, Lcom/android/launcher3/dW;-><init>()V

    return-object v0
.end method

.method final i(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCurrentPage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/launcher3/dX;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/launcher3/dX;->ai:Z

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->E()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->H()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    goto :goto_0
.end method

.method final j(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dX;->j:I

    return-void
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dX;->U:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->requestLayout()V

    return-void
.end method

.method protected final l(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->x()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final m(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public abstract m()V
.end method

.method public final n(I)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ec;

    iget-boolean v0, v0, Lcom/android/launcher3/ec;->a:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingRight()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/dX;->ah:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->x()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method protected o(I)V
    .locals 1

    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dX;->b(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/dX;->ao:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/dX;->ao:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/dX;->aq:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->a(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    iget-boolean v2, p0, Lcom/android/launcher3/dX;->aq:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PageIndicator;->a(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->v()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->h(I)Lcom/android/launcher3/dW;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->c(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->h(I)Lcom/android/launcher3/dW;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/dX;->aq:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/PageIndicator;->a(ILcom/android/launcher3/dW;Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->ai:Z

    invoke-direct {p0}, Lcom/android/launcher3/dX;->j()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->ai:Z

    invoke-direct {p0}, Lcom/android/launcher3/dX;->j()V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v3, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v3, v4

    :goto_1
    cmpl-float v5, v2, v4

    if-nez v5, :cond_1

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v5

    if-eqz v5, :cond_5

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4

    cmpg-float v2, v3, v4

    if-ltz v2, :cond_4

    :cond_2
    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->d()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v3, v2

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    cmpl-float v2, v2, v4

    if-gtz v2, :cond_6

    cmpl-float v2, v3, v4

    if-lez v2, :cond_2

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->d_()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    if-lez v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dX;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/dX;->p:I

    if-eq v3, v0, :cond_0

    :cond_2
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/android/launcher3/dX;->p:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/launcher3/dX;->D:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v2, p0, Lcom/android/launcher3/dX;->Z:F

    iput v3, p0, Lcom/android/launcher3/dX;->aa:F

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/dX;->ab:F

    iput v2, p0, Lcom/android/launcher3/dX;->n:F

    iput v3, p0, Lcom/android/launcher3/dX;->o:F

    invoke-direct {p0, p0, v2, v3}, Lcom/android/launcher3/dX;->a(Landroid/view/View;FF)[F

    move-result-object v2

    aget v3, v2, v1

    iput v3, p0, Lcom/android/launcher3/dX;->V:F

    aget v2, v2, v0

    iput v2, p0, Lcom/android/launcher3/dX;->W:F

    iput v5, p0, Lcom/android/launcher3/dX;->ad:F

    iput v5, p0, Lcom/android/launcher3/dX;->ae:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dX;->D:I

    iget-object v2, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v2}, Lcom/android/launcher3/dD;->d()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->b()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v3}, Lcom/android/launcher3/dD;->a()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/launcher3/dX;->r:I

    div-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_4

    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    iput v1, p0, Lcom/android/launcher3/dX;->p:I

    iget-object v2, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v2}, Lcom/android/launcher3/dD;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher3/dX;->a:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dX;->i(I)V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->g()V

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/android/launcher3/dX;->Z:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/dX;->aa:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/dX;->c(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v0, p0, Lcom/android/launcher3/dX;->p:I

    goto/16 :goto_1

    :cond_6
    iput v1, p0, Lcom/android/launcher3/dX;->p:I

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/dX;->k()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/dX;->c(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->l()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->an:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->x()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v8, -0x1

    :goto_1
    if-eqz v2, :cond_7

    const/4 v0, -0x1

    move v7, v0

    :goto_2
    if-eqz v2, :cond_8

    const/4 v0, -0x1

    move v2, v0

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingBottom()I

    move-result v4

    add-int v10, v0, v4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dX;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ec;

    iget-boolean v0, v0, Lcom/android/launcher3/ec;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_4
    add-int v5, v9, v0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/dX;->R:I

    if-eq v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dX;->ah:[I

    :cond_3
    move v6, v1

    :goto_5
    if-ne v6, v7, :cond_a

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->h:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->E()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->h:Z

    :cond_4
    if-lez v8, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->m(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->l:I

    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/launcher3/dX;->R:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->aJ:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/launcher3/dX;->j:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_12

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Restoring to page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/dX;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/launcher3/dX;->j:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->i(I)V

    const/16 v0, -0x3e9

    iput v0, p0, Lcom/android/launcher3/dX;->j:I

    :cond_5
    :goto_8
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->R:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/dX;->b()V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    move v7, v8

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingLeft()I

    move-result v0

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/ec;

    iget-boolean v0, v1, Lcom/android/launcher3/ec;->a:Z

    if-eqz v0, :cond_c

    move v0, v3

    :cond_b
    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v12, v0

    invoke-virtual {v4, v5, v0, v13, v12}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, v1, Lcom/android/launcher3/ec;->a:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_a
    iget-object v4, p0, Lcom/android/launcher3/dX;->ah:[I

    sub-int v0, v5, v0

    sub-int/2addr v0, v9

    aput v0, v4, v6

    iget v4, p0, Lcom/android/launcher3/dX;->U:I

    add-int v0, v6, v2

    if-eq v0, v7, :cond_e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ec;

    :goto_b
    iget-boolean v1, v1, Lcom/android/launcher3/ec;->a:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingLeft()I

    move-result v0

    :goto_c
    add-int/2addr v0, v11

    add-int/2addr v0, v5

    :goto_d
    add-int v1, v6, v2

    move v6, v1

    move v5, v0

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v11, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v11

    iget-boolean v11, p0, Lcom/android/launcher3/dX;->y:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v12, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v10

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v0, v11

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingLeft()I

    move-result v0

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/android/launcher3/ec;->a:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingRight()I

    move-result v0

    goto :goto_c

    :cond_10
    add-int/lit8 v0, v8, -0x1

    goto/16 :goto_6

    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dX;->l:I

    goto/16 :goto_7

    :cond_12
    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Restoring to page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->i(I)V

    goto/16 :goto_8

    :cond_13
    move v0, v5

    goto :goto_d

    :cond_14
    move v0, v4

    goto :goto_c
.end method

.method protected onMeasure(II)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->an:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->av:Z

    if-eqz v0, :cond_3

    int-to-float v0, v1

    iget v3, p0, Lcom/android/launcher3/dX;->au:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/dX;->au:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v5, :cond_2

    if-nez v6, :cond_4

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    :cond_3
    move v1, v2

    move v3, v4

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    if-gtz v4, :cond_6

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingBottom()I

    move-result v2

    add-int v7, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getPaddingRight()I

    move-result v2

    add-int v8, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-lt v6, v9, :cond_7

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/dX;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ec;

    iget-boolean v2, v0, Lcom/android/launcher3/ec;->a:Z

    if-nez v2, :cond_b

    iget v2, v0, Lcom/android/launcher3/ec;->width:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_9

    const/high16 v2, -0x80000000

    :goto_3
    iget v0, v0, Lcom/android/launcher3/ec;->height:I

    const/4 v4, -0x2

    if-ne v0, v4, :cond_a

    const/high16 v0, -0x80000000

    :goto_4
    iget-object v4, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v8

    iget-object v5, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v4, v5

    iget-object v4, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v7

    iget-object v11, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v11

    iget-object v11, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v11

    iput v4, p0, Lcom/android/launcher3/dX;->Q:I

    move v12, v4

    move v4, v2

    move v2, v5

    move v5, v0

    move v0, v12

    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_9
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    :cond_a
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_4

    :cond_b
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/dX;->N:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_5
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/dX;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->k:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/dX;->a(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/android/launcher3/dX;->a(Z)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->n:F

    iput v0, p0, Lcom/android/launcher3/dX;->Z:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->o:F

    iput v0, p0, Lcom/android/launcher3/dX;->aa:F

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/dX;->ab:F

    iget v0, p0, Lcom/android/launcher3/dX;->n:F

    iget v1, p0, Lcom/android/launcher3/dX;->o:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/dX;->a(Landroid/view/View;FF)[F

    move-result-object v0

    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/dX;->V:F

    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/dX;->W:F

    iput v2, p0, Lcom/android/launcher3/dX;->ad:F

    iput v2, p0, Lcom/android/launcher3/dX;->ae:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->D:I

    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-ne v0, v9, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/dX;->f()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-ne v0, v9, :cond_5

    iget v0, p0, Lcom/android/launcher3/dX;->D:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/dX;->n:F

    iget v2, p0, Lcom/android/launcher3/dX;->ad:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/launcher3/dX;->ae:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/dX;->ae:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/dX;->g:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/dX;->g:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/dX;->f:F

    iget-boolean v2, p0, Lcom/android/launcher3/dX;->I:Z

    if-nez v2, :cond_3

    float-to-int v2, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/dX;->scrollBy(II)V

    :goto_1
    iput v0, p0, Lcom/android/launcher3/dX;->n:F

    float-to-int v0, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/launcher3/dX;->ad:F

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->awakenScrollBars()Z

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-ne v0, v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->o:F

    iget v0, p0, Lcom/android/launcher3/dX;->n:F

    iget v1, p0, Lcom/android/launcher3/dX;->o:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/dX;->a(Landroid/view/View;FF)[F

    move-result-object v0

    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/dX;->V:F

    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/dX;->W:F

    invoke-direct {p0}, Lcom/android/launcher3/dX;->b()V

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget v0, p0, Lcom/android/launcher3/dX;->V:F

    float-to-int v0, v0

    iget v0, p0, Lcom/android/launcher3/dX;->W:F

    float-to-int v0, v0

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a([I)V

    const v2, 0x7fffffff

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v4

    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/dX;->A:[I

    aget v3, v3, v9

    if-le v0, v3, :cond_6

    :goto_3
    if-ltz v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/dX;->M:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v1, v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aput v4, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v9

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a([I)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->A:[I

    aget v0, v0, v9

    if-gt v1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->ax:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/launcher3/dX;->ax:I

    new-instance v0, Lcom/android/launcher3/dY;

    invoke-direct {v0, p0, v1, v6}, Lcom/android/launcher3/dY;-><init>(Lcom/android/launcher3/dX;II)V

    iput-object v0, p0, Lcom/android/launcher3/dX;->aw:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/dX;->aw:Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/launcher3/dX;->at:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/dX;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    sub-int v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_7

    move v1, v0

    move v2, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v1, v5

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/dX;->aw:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v5, p0, Lcom/android/launcher3/dX;->ax:I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-ne v0, v9, :cond_1d

    iget v0, p0, Lcom/android/launcher3/dX;->D:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dX;->T:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v5, p0, Lcom/android/launcher3/dX;->ak:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v5, v0

    iget v0, p0, Lcom/android/launcher3/dX;->Z:F

    sub-float v0, v1, v0

    float-to-int v3, v0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v6, v2

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    cmpl-float v0, v0, v6

    if-lez v0, :cond_f

    move v0, v9

    :goto_4
    iget v6, p0, Lcom/android/launcher3/dX;->ae:F

    iget v7, p0, Lcom/android/launcher3/dX;->n:F

    iget v8, p0, Lcom/android/launcher3/dX;->ad:F

    add-float/2addr v7, v8

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v6

    iput v1, p0, Lcom/android/launcher3/dX;->ae:F

    iget v1, p0, Lcom/android/launcher3/dX;->ae:F

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Lcom/android/launcher3/dX;->d:I

    if-le v1, v6, :cond_10

    move v1, v9

    :goto_5
    iget-boolean v6, p0, Lcom/android/launcher3/dX;->a:Z

    if-nez v6, :cond_1b

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_24

    int-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    move v2, v9

    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v6

    if-eqz v6, :cond_12

    if-lez v3, :cond_11

    move v3, v9

    :goto_7
    if-eqz v6, :cond_14

    if-lez v5, :cond_b

    move v4, v9

    :cond_b
    :goto_8
    if-eqz v0, :cond_c

    if-nez v3, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v1, :cond_16

    if-nez v4, :cond_16

    :cond_d
    iget v6, p0, Lcom/android/launcher3/dX;->i:I

    if-lez v6, :cond_16

    if-eqz v2, :cond_15

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    :goto_9
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/dX;->a(II)V

    :cond_e
    :goto_a
    iget-object v0, p0, Lcom/android/launcher3/dX;->aw:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/launcher3/dX;->k()V

    goto/16 :goto_0

    :cond_f
    move v0, v4

    goto :goto_4

    :cond_10
    move v1, v4

    goto :goto_5

    :cond_11
    move v3, v4

    goto :goto_7

    :cond_12
    if-gez v3, :cond_13

    move v3, v9

    goto :goto_7

    :cond_13
    move v3, v4

    goto :goto_7

    :cond_14
    if-gez v5, :cond_b

    move v4, v9

    goto :goto_8

    :cond_15
    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_16
    if-eqz v0, :cond_17

    if-eqz v3, :cond_17

    if-eqz v1, :cond_18

    :cond_17
    if-eqz v1, :cond_1a

    if-eqz v4, :cond_1a

    :cond_18
    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1a

    if-eqz v2, :cond_19

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    :goto_b
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/dX;->a(II)V

    goto :goto_a

    :cond_19
    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->U()V

    goto :goto_a

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v0}, Lcom/android/launcher3/dD;->a()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, v9}, Lcom/android/launcher3/dX;->a(Z)V

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScaleX()F

    move-result v0

    neg-int v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    iget-object v2, p0, Lcom/android/launcher3/dX;->S:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dD;->a(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v2

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dD;->a(IIIIIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->invalidate()V

    goto :goto_a

    :cond_1d
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->o(I)V

    goto/16 :goto_a

    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->U()V

    goto/16 :goto_a

    :cond_1f
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-eq v0, v1, :cond_20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->o(I)V

    goto/16 :goto_a

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->U()V

    goto/16 :goto_a

    :cond_21
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-ne v0, v3, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dX;->o:F

    iget v0, p0, Lcom/android/launcher3/dX;->n:F

    iget v1, p0, Lcom/android/launcher3/dX;->o:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/dX;->a(Landroid/view/View;FF)[F

    move-result-object v0

    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/dX;->V:F

    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/dX;->W:F

    invoke-direct {p0}, Lcom/android/launcher3/dX;->b()V

    iget v0, p0, Lcom/android/launcher3/dX;->V:F

    float-to-int v0, v0

    iget v0, p0, Lcom/android/launcher3/dX;->W:F

    float-to-int v0, v0

    goto/16 :goto_a

    :cond_22
    iget-boolean v0, p0, Lcom/android/launcher3/dX;->ag:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    goto/16 :goto_a

    :pswitch_4
    iget v0, p0, Lcom/android/launcher3/dX;->p:I

    if-ne v0, v9, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->U()V

    :cond_23
    invoke-direct {p0}, Lcom/android/launcher3/dX;->k()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/dX;->c(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/launcher3/dX;->l()V

    goto/16 :goto_0

    :cond_24
    move v2, v4

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected final p(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dX;->b(IZ)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->d()V

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->d_()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dX;->ag:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected final q(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dX;->c(IZ)V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/dX;->aq:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->a(Z)V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->a(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->removeViewAt(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dX;->a(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->o(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->d(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/dX;->i:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dX;->m:Lcom/android/launcher3/dD;

    invoke-virtual {v1}, Lcom/android/launcher3/dD;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->o(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/dX;->z:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dX;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/dX;->b:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->z()Z

    move-result v4

    iput p1, p0, Lcom/android/launcher3/dX;->z:I

    if-eqz v4, :cond_4

    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    if-le p1, v0, :cond_3

    move v3, v1

    :goto_0
    if-eqz v4, :cond_7

    if-gez p1, :cond_6

    move v0, v1

    :goto_1
    if-eqz v3, :cond_a

    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->al:Z

    if-eqz v0, :cond_1

    if-eqz v4, :cond_9

    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a(F)V

    :cond_1
    :goto_2
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/dX;->g:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/dX;->f:F

    invoke-direct {p0, v1}, Lcom/android/launcher3/dX;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/dX;->V:F

    iget v3, p0, Lcom/android/launcher3/dX;->W:F

    invoke-direct {p0, p0, v0, v3}, Lcom/android/launcher3/dX;->b(Landroid/view/View;FF)[F

    move-result-object v0

    aget v2, v0, v2

    iput v2, p0, Lcom/android/launcher3/dX;->n:F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/dX;->o:F

    invoke-direct {p0}, Lcom/android/launcher3/dX;->b()V

    :cond_2
    return-void

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    if-gez p1, :cond_5

    move v3, v1

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    if-le p1, v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a(F)V

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/android/launcher3/dX;->al:Z

    if-eqz v0, :cond_1

    if-eqz v4, :cond_b

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a(F)V

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/android/launcher3/dX;->l:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->a(F)V

    goto :goto_2

    :cond_c
    iput p1, p0, Lcom/android/launcher3/dX;->C:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/dX;->q:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/dX;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dX;->V:F

    iget v1, p0, Lcom/android/launcher3/dX;->W:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/dX;->b(Landroid/view/View;FF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/dX;->n:F

    aget v0, v0, v2

    iput v0, p0, Lcom/android/launcher3/dX;->o:F

    invoke-direct {p0}, Lcom/android/launcher3/dX;->b()V

    :cond_0
    return-void
.end method

.method protected t()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->D()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final w()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method final x()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dX;->ar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method final y()Lcom/android/launcher3/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/dX;->ap:Lcom/android/launcher3/PageIndicator;

    return-object v0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
