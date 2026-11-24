.class public Lcom/android/launcher3/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/android/launcher3/aq;


# static fields
.field private static final c:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:Landroid/animation/ObjectAnimator;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/android/launcher3/E;

.field private h:Lcom/android/launcher3/E;

.field private i:I

.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/SearchDropTargetBar;->c:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->j:Z

    return-void
.end method

.method private a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/SearchDropTargetBar;->c:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/ew;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/ew;-><init>(Lcom/android/launcher3/SearchDropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public final a(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ap;)V
    .locals 5

    const/4 v2, 0x2

    invoke-virtual {p2, p0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aq;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->g:Lcom/android/launcher3/E;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aq;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->h:Lcom/android/launcher3/E;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aq;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->g:Lcom/android/launcher3/E;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aF;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->h:Lcom/android/launcher3/E;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aF;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->h:Lcom/android/launcher3/E;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/ap;->c(Lcom/android/launcher3/aF;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->g:Lcom/android/launcher3/E;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/E;->a(Lcom/android/launcher3/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->h:Lcom/android/launcher3/E;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/E;->a(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->z()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/SearchDropTargetBar;->i:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final a(Lcom/android/launcher3/az;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->d:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    :goto_2
    iput-boolean v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->d:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public final a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->k:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->d:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_2
    iput-boolean v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->d:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->i:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->j:Z

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->j:Z

    return-void
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aget v2, v1, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    aget v2, v1, v3

    iget-object v3, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/SearchDropTargetBar;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f10004f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    const v1, 0x7f10000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/E;

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->g:Lcom/android/launcher3/E;

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/E;

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->h:Lcom/android/launcher3/E;

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->g:Lcom/android/launcher3/E;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/E;->a(Lcom/android/launcher3/SearchDropTargetBar;)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->h:Lcom/android/launcher3/E;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/E;->a(Lcom/android/launcher3/SearchDropTargetBar;)V

    invoke-virtual {p0}, Lcom/android/launcher3/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->l:Z

    iget-boolean v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/al;->G:I

    iput v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->i:I

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/SearchDropTargetBar;->i:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->a:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->a:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->f:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/SearchDropTargetBar;->a:Landroid/animation/ObjectAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
