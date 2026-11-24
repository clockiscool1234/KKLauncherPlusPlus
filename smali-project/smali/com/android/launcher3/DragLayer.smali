.class public Lcom/android/launcher3/DragLayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private a:Lcom/android/launcher3/ap;

.field private b:[I

.field private c:I

.field private d:I

.field private e:Lcom/android/launcher3/Launcher;

.field private final f:Ljava/util/ArrayList;

.field private g:Lcom/android/launcher3/e;

.field private h:Landroid/animation/ValueAnimator;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/animation/TimeInterpolator;

.field private k:Lcom/android/launcher3/aA;

.field private l:I

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Landroid/graphics/Rect;

.field private p:Lcom/android/launcher3/ax;

.field private final q:Landroid/graphics/Rect;

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->b:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->f:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->j:Landroid/animation/TimeInterpolator;

    iput-object v2, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    iput v3, p0, Lcom/android/launcher3/DragLayer;->l:I

    iput-object v2, p0, Lcom/android/launcher3/DragLayer;->m:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/launcher3/DragLayer;->n:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->o:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->q:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/DragLayer;->setMotionEventSplittingEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->u:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/DragLayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->m:Landroid/view/View;

    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v1, p0, Lcom/android/launcher3/bz;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/bz;

    invoke-interface {v1, p1}, Lcom/android/launcher3/bz;->a_(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/aA;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    return-void
.end method

.method private a(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const v1, 0x7f0a0065

    :goto_0
    const/16 v2, 0x8

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0a0064

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->a()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher3/Folder;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/Folder;->d()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->o:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/Folder;->c()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/e;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/e;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/e;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/android/launcher3/e;->getTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher3/e;->a(II)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->g:Lcom/android/launcher3/e;

    iput v4, p0, Lcom/android/launcher3/DragLayer;->c:I

    iput v5, p0, Lcom/android/launcher3/DragLayer;->d:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->v()V

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private a(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/launcher3/DragLayer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/DragLayer;->l:I

    return v0
.end method

.method static synthetic c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    return-object v0
.end method

.method static synthetic d(Lcom/android/launcher3/DragLayer;)V
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/av;

    invoke-direct {v1, p0}, Lcom/android/launcher3/av;-><init>(Lcom/android/launcher3/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/aw;

    invoke-direct {v1, p0}, Lcom/android/launcher3/aw;-><init>(Lcom/android/launcher3/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic e(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/ap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/DragLayer;->r:I

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/aA;

    if-eqz v2, :cond_1

    iput v0, p0, Lcom/android/launcher3/DragLayer;->r:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->b:[I

    aput v4, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->b:[I

    aput v4, v0, v5

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->b:[I

    invoke-static {p1, p0, v0, v4}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->b:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/DragLayer;->b:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/DragLayer;->b:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher3/DragLayer;->b:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public final a(Landroid/view/View;[I)F
    .locals 2

    const/4 v1, 0x0

    aput v1, p2, v1

    const/4 v0, 0x1

    aput v1, p2, v0

    invoke-static {p1, p0, p2, v1}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;[IZ)F
    .locals 1

    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/e;

    invoke-virtual {v0}, Lcom/android/launcher3/e;->a()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    return-void
.end method

.method public final a(Lcom/android/launcher3/aA;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/aA;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->h()V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->i()V

    if-eqz p7, :cond_2

    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DragLayer;->l:I

    :cond_2
    iput-object p7, p0, Lcom/android/launcher3/DragLayer;->m:Landroid/view/View;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/au;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher3/au;-><init>(Lcom/android/launcher3/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Lcom/android/launcher3/aA;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 16

    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v1, 0x7f0e001c

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    if-gez p9, :cond_1

    const v1, 0x7f0e001a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/DragLayer;->j:Landroid/animation/TimeInterpolator;

    div-float/2addr v2, v4

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    const v2, 0x7f0e0019

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p9

    :cond_1
    const/4 v1, 0x0

    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/DragLayer;->j:Landroid/animation/TimeInterpolator;

    move-object v15, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getAlpha()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getScaleX()F

    move-result v7

    new-instance v1, Lcom/android/launcher3/at;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p11

    move-object/from16 v5, p10

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/launcher3/at;-><init>(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/aA;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move/from16 v5, p9

    move-object v6, v15

    move-object/from16 v7, p12

    move/from16 v8, p13

    move-object/from16 v9, p14

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void

    :cond_3
    move-object v15, v1

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/aA;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ex;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/ex;->a(Landroid/view/View;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, 0x2

    new-array v5, v3, [I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/4 v3, 0x0

    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v7

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    aput v8, v5, v3

    const/4 v3, 0x1

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    aput v4, v5, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;[I)F

    move-result v3

    mul-float v4, v3, v7

    const/4 v3, 0x0

    aget v7, v5, v3

    const/4 v3, 0x1

    aget v5, v5, v3

    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v3, p2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->a()F

    move-result v8

    div-float v12, v4, v8

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v12

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v8, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    :goto_0
    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v14, Lcom/android/launcher3/as;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher3/as;-><init>(Lcom/android/launcher3/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void

    :cond_0
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher3/FolderIcon;

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->b()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v8, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    move v12, v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v5, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    move v12, v4

    goto/16 :goto_0
.end method

.method public final a(Lcom/android/launcher3/aA;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/aA;[IFFFILjava/lang/Runnable;I)V
    .locals 17

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    aget v6, p2, v2

    const/4 v2, 0x1

    aget v7, p2, v2

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3dcccccd    # 0.1f

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v13, p7

    move/from16 v15, p8

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    return-void
.end method

.method public final a(Lcom/android/launcher3/cE;Lcom/android/launcher3/CellLayout;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/android/launcher3/e;

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/launcher3/e;-><init>(Landroid/content/Context;Lcom/android/launcher3/cE;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V

    new-instance v1, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/DragLayer$LayoutParams;->c:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/e;->a(Z)V

    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->q:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final b(Landroid/view/View;[I)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aA;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->getLocationInWindow([I)V

    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v3

    aget v0, v0, v4

    sub-int v1, v3, v1

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final c(Landroid/view/View;[I)F
    .locals 1

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->k:Lcom/android/launcher3/aA;

    return-object v0
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->s:Z

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/android/launcher3/DragLayer;->s:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getMeasuredWidth()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->D()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v0, v6, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_3

    add-int/lit8 v1, v6, -0x1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->t:Landroid/graphics/drawable/Drawable;

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DragLayer;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v6, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v6, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->u:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v4, v1

    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ap;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DragLayer;->s:Z

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/DragLayer;->q:Landroid/graphics/Rect;

    invoke-static {v2, p1, v3}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/DragLayer;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget v0, p0, Lcom/android/launcher3/DragLayer;->r:I

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/launcher3/DragLayer;->r:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->f()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/DragLayer;->f()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/Folder;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragLayer;->a(Z)V

    iput-boolean v2, p0, Lcom/android/launcher3/DragLayer;->n:Z

    move v0, v2

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/launcher3/DragLayer;->n:Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/DragLayer;->n:Z

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/Folder;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/DragLayer;->a(Z)V

    iput-boolean v2, p0, Lcom/android/launcher3/DragLayer;->n:Z

    move v0, v2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lcom/android/launcher3/DragLayer;->n:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_0
    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    invoke-interface {v0}, Lcom/android/launcher3/ax;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->a()V

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ap;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    iget-boolean v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->c:Z

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iget v5, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    iget v6, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    iget v0, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->e:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v2, v0, :cond_2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    invoke-interface {v5}, Lcom/android/launcher3/ax;->a()V

    :cond_3
    iput-object v6, p0, Lcom/android/launcher3/DragLayer;->p:Lcom/android/launcher3/ax;

    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/DragLayer;->g:Lcom/android/launcher3/e;

    if-eqz v5, :cond_5

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v0

    :cond_5
    :goto_2
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DragLayer;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ap;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->g:Lcom/android/launcher3/e;

    iget v2, p0, Lcom/android/launcher3/DragLayer;->c:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/android/launcher3/DragLayer;->d:I

    sub-int v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/e;->b(II)V

    move v1, v0

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->g:Lcom/android/launcher3/e;

    iget v2, p0, Lcom/android/launcher3/DragLayer;->c:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/android/launcher3/DragLayer;->d:I

    sub-int v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/e;->b(II)V

    iget-object v1, p0, Lcom/android/launcher3/DragLayer;->g:Lcom/android/launcher3/e;

    invoke-virtual {v1}, Lcom/android/launcher3/e;->b()V

    iput-object v6, p0, Lcom/android/launcher3/DragLayer;->g:Lcom/android/launcher3/e;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
