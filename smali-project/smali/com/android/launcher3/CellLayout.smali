.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;


# static fields
.field private static final ao:Landroid/graphics/Paint;


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:Z

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/graphics/Rect;

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:[Landroid/graphics/Rect;

.field private R:[F

.field private S:[Lcom/android/launcher3/bB;

.field private T:I

.field private final U:Landroid/graphics/Paint;

.field private V:Lcom/android/launcher3/BubbleTextView;

.field private W:Ljava/util/HashMap;

.field private Z:Ljava/util/HashMap;

.field private a:Lcom/android/launcher3/Launcher;

.field private aa:Z

.field private final ab:[I

.field private ac:Z

.field private ad:Landroid/animation/TimeInterpolator;

.field private ae:Lcom/android/launcher3/ex;

.field private af:Z

.field private ag:F

.field private ah:F

.field private ai:Ljava/util/ArrayList;

.field private aj:Landroid/graphics/Rect;

.field private ak:[I

.field private al:[I

.field private am:Lcom/android/launcher3/aG;

.field private an:Landroid/graphics/Rect;

.field private final ap:Ljava/util/Stack;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private final o:Landroid/graphics/Rect;

.field private final p:Lcom/android/launcher3/L;

.field private final q:[I

.field private final r:[I

.field private s:[I

.field private t:[[Z

.field private u:[[Z

.field private v:Z

.field private w:Landroid/view/View$OnTouchListener;

.field private x:Ljava/util/ArrayList;

.field private y:[I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->ao:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->m:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->n:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->o:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/L;

    invoke-direct {v0}, Lcom/android/launcher3/L;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->p:Lcom/android/launcher3/L;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->q:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->r:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->s:[I

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->v:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->x:Ljava/util/ArrayList;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/launcher3/CellLayout;->z:F

    iput v1, p0, Lcom/android/launcher3/CellLayout;->A:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/CellLayout;->C:F

    iput-boolean v7, p0, Lcom/android/launcher3/CellLayout;->D:Z

    iput v6, p0, Lcom/android/launcher3/CellLayout;->M:I

    iput v6, p0, Lcom/android/launcher3/CellLayout;->N:I

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->O:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->P:Z

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->R:[F

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/launcher3/bB;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    iput v1, p0, Lcom/android/launcher3/CellLayout;->T:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->U:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->W:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->Z:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->ac:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->af:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/CellLayout;->ag:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->aj:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->al:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->an:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->ap:Ljava/util/Stack;

    new-instance v0, Lcom/android/launcher3/aG;

    invoke-direct {v0, p1}, Lcom/android/launcher3/aG;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->am:Lcom/android/launcher3/aG;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v2

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->b:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    iput v6, p0, Lcom/android/launcher3/CellLayout;->c:I

    iput v6, p0, Lcom/android/launcher3/CellLayout;->b:I

    iput v6, p0, Lcom/android/launcher3/CellLayout;->e:I

    iput v6, p0, Lcom/android/launcher3/CellLayout;->d:I

    iput v1, p0, Lcom/android/launcher3/CellLayout;->h:I

    iput v1, p0, Lcom/android/launcher3/CellLayout;->j:I

    iput v1, p0, Lcom/android/launcher3/CellLayout;->i:I

    iput v1, p0, Lcom/android/launcher3/CellLayout;->k:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/launcher3/CellLayout;->l:I

    iget v0, v2, Lcom/android/launcher3/al;->d:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v0, v2, Lcom/android/launcher3/al;->c:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->g:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->g:I

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->g:I

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/16 v5, -0x64

    aput v5, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/16 v5, -0x64

    aput v5, v0, v7

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v0, v2, Lcom/android/launcher3/al;->B:I

    int-to-float v0, v0

    iget v5, v2, Lcom/android/launcher3/al;->o:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/launcher3/CellLayout;->ag:F

    const v0, 0x7f020055

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->E:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020056

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->F:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02004a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->H:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02004b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->I:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f09001d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->L:I

    const v0, 0x3df5c28f    # 0.12f

    iget v2, v2, Lcom/android/launcher3/al;->o:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout;->ah:F

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->ad:Landroid/animation/TimeInterpolator;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    aput v6, v2, v7

    aput v6, v0, v1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const v0, 0x7f0e0017

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v0, 0x7f0e0018

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->R:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    move v6, v1

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->J:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->K:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/ex;

    invoke-direct {v0, p1}, Lcom/android/launcher3/ex;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->j:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->k:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->g:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ex;->a(IIIIII)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/bB;

    int-to-long v2, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/bB;-><init>(Landroid/view/View;JFF)V

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->ad:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/G;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/G;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/bB;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/H;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/H;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/bB;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    aput-object v0, v1, v6

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic a(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->g:I

    return v0
.end method

.method private a(IIIIIILcom/android/launcher3/M;)Lcom/android/launcher3/M;
    .locals 11

    const/4 v1, 0x2

    new-array v9, v1, [I

    const/4 v1, 0x2

    new-array v10, v1, [I

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[I)[I

    const/4 v1, 0x0

    aget v1, v9, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v9, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Z)V

    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p7

    iput v1, v0, Lcom/android/launcher3/M;->e:I

    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p7

    iput v1, v0, Lcom/android/launcher3/M;->f:I

    const/4 v1, 0x0

    aget v1, v10, v1

    move-object/from16 v0, p7

    iput v1, v0, Lcom/android/launcher3/M;->g:I

    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p7

    iput v1, v0, Lcom/android/launcher3/M;->h:I

    const/4 v1, 0x1

    move-object/from16 v0, p7

    iput-boolean v1, v0, Lcom/android/launcher3/M;->d:Z

    :goto_0
    return-object p7

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p7

    iput-boolean v1, v0, Lcom/android/launcher3/M;->d:Z

    goto :goto_0
.end method

.method private a(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/M;)Lcom/android/launcher3/M;
    .locals 21

    move-object/from16 v12, p8

    move-object/from16 v11, p7

    move/from16 v7, p6

    move/from16 v6, p5

    move/from16 v5, p2

    move/from16 v4, p1

    move-object/from16 v3, p0

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v0, p10

    invoke-direct {v3, v0, v8}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Z)V

    iget-object v10, v3, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v8, 0x0

    :goto_1
    iget v9, v3, Lcom/android/launcher3/CellLayout;->f:I

    if-lt v8, v9, :cond_2

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->c(IIII[I)[I

    move-result-object v14

    const/4 v8, 0x0

    aget v9, v14, v8

    const/4 v8, 0x1

    aget v10, v14, v8

    if-ltz v9, :cond_0

    if-gez v10, :cond_4

    :cond_0
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_f

    move/from16 v0, p3

    if-le v6, v0, :cond_d

    move/from16 v0, p4

    if-eq v0, v7, :cond_1

    if-eqz p9, :cond_d

    :cond_1
    add-int/lit8 v6, v6, -0x1

    const/16 p9, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_3
    iget v13, v3, Lcom/android/launcher3/CellLayout;->g:I

    if-lt v9, v13, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    aget-object v13, v10, v8

    iget-object v14, v3, Lcom/android/launcher3/CellLayout;->t:[[Z

    aget-object v14, v14, v8

    aget-boolean v14, v14, v9

    aput-boolean v14, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    iget-object v8, v3, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v3, Lcom/android/launcher3/CellLayout;->aj:Landroid/graphics/Rect;

    add-int v13, v9, v6

    add-int v15, v10, v7

    invoke-virtual {v8, v9, v10, v13, v15}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v12, :cond_5

    move-object/from16 v0, p10

    iget-object v8, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/K;

    if-eqz v8, :cond_5

    iput v9, v8, Lcom/android/launcher3/K;->a:I

    iput v10, v8, Lcom/android/launcher3/K;->b:I

    :cond_5
    new-instance v13, Landroid/graphics/Rect;

    add-int v8, v9, v6

    add-int v15, v10, v7

    invoke-direct {v13, v9, v10, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p10

    iget-object v8, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v3, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p10

    iput-object v8, v0, Lcom/android/launcher3/M;->c:Ljava/util/ArrayList;

    iget-object v9, v3, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    iget-object v10, v3, Lcom/android/launcher3/CellLayout;->aj:Landroid/graphics/Rect;

    move-object v8, v3

    move-object/from16 v13, p10

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/CellLayout;->b(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/view/View;

    if-eq v9, v12, :cond_6

    move-object/from16 v0, p10

    iget-object v8, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/launcher3/K;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, v10, Lcom/android/launcher3/K;->a:I

    move/from16 v17, v0

    iget v0, v10, Lcom/android/launcher3/K;->b:I

    move/from16 v18, v0

    iget v0, v10, Lcom/android/launcher3/K;->a:I

    move/from16 v19, v0

    iget v0, v10, Lcom/android/launcher3/K;->c:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v10, Lcom/android/launcher3/K;->b:I

    move/from16 v20, v0

    iget v10, v10, Lcom/android/launcher3/K;->d:I

    add-int v10, v10, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v13, v15}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v8, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    if-nez v8, :cond_8

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_8
    iget-object v8, v3, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v8, v3, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    iget-object v9, v3, Lcom/android/launcher3/CellLayout;->aj:Landroid/graphics/Rect;

    move-object/from16 v0, p10

    invoke-direct {v3, v8, v9, v11, v0}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILcom/android/launcher3/M;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v8, v3, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget-object v10, v3, Lcom/android/launcher3/CellLayout;->aj:Landroid/graphics/Rect;

    move-object/from16 v0, p10

    invoke-direct {v3, v8, v10, v11, v0}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/M;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_d
    move/from16 v0, p4

    if-le v7, v0, :cond_e

    add-int/lit8 v7, v7, -0x1

    const/16 p9, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p10

    iput-boolean v3, v0, Lcom/android/launcher3/M;->d:Z

    :goto_5
    return-object p10

    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p10

    iput-boolean v3, v0, Lcom/android/launcher3/M;->d:Z

    const/4 v3, 0x0

    aget v3, v14, v3

    move-object/from16 v0, p10

    iput v3, v0, Lcom/android/launcher3/M;->e:I

    const/4 v3, 0x1

    aget v3, v14, v3

    move-object/from16 v0, p10

    iput v3, v0, Lcom/android/launcher3/M;->f:I

    move-object/from16 v0, p10

    iput v6, v0, Lcom/android/launcher3/M;->g:I

    move-object/from16 v0, p10

    iput v7, v0, Lcom/android/launcher3/M;->h:I

    goto :goto_5
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/N;

    invoke-static {v0}, Lcom/android/launcher3/N;->a(Lcom/android/launcher3/N;)V

    goto :goto_0
.end method

.method private a(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 11

    if-eqz p6, :cond_0

    add-int v1, p1, p3

    add-int v2, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v3, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p5

    if-eq v6, v0, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v9, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    add-int/2addr v9, v10

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    add-int/2addr v1, v10

    invoke-virtual {v4, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private a(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, p1

    :goto_0
    add-int v0, p1, p3

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-ge v1, v0, :cond_0

    move v0, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-lt v0, v2, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    aget-object v2, p5, v1

    aput-boolean p6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Landroid/graphics/Rect;[[ZZ)V
    .locals 7

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    return-void
.end method

.method private a(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto :goto_0
.end method

.method private a(Lcom/android/launcher3/M;Landroid/view/View;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v8

    move v7, v1

    :goto_1
    if-lt v7, v8, :cond_2

    iget v1, p1, Lcom/android/launcher3/M;->e:I

    iget v2, p1, Lcom/android/launcher3/M;->f:I

    iget v3, p1, Lcom/android/launcher3/M;->g:I

    iget v4, p1, Lcom/android/launcher3/M;->h:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    return-void

    :cond_0
    move v2, v1

    :goto_2
    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v2, p1, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/K;

    if-eqz v4, :cond_3

    iget v1, v4, Lcom/android/launcher3/K;->a:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iget v1, v4, Lcom/android/launcher3/K;->b:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iget v1, v4, Lcom/android/launcher3/K;->c:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v1, v4, Lcom/android/launcher3/K;->d:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget v1, v4, Lcom/android/launcher3/K;->a:I

    iget v2, v4, Lcom/android/launcher3/K;->b:I

    iget v3, v4, Lcom/android/launcher3/K;->c:I

    iget v4, v4, Lcom/android/launcher3/K;->d:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    :cond_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1
.end method

.method private a(Lcom/android/launcher3/M;Landroid/view/View;I)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v11

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-lt v10, v11, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/K;

    if-nez p3, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/M;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    new-instance v0, Lcom/android/launcher3/N;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v6, v1, Lcom/android/launcher3/K;->a:I

    iget v7, v1, Lcom/android/launcher3/K;->b:I

    iget v8, v1, Lcom/android/launcher3/K;->c:I

    iget v9, v1, Lcom/android/launcher3/K;->d:I

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/N;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    invoke-virtual {v0}, Lcom/android/launcher3/N;->a()V

    :cond_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1
.end method

.method private a(Lcom/android/launcher3/M;Landroid/view/View;Z)V
    .locals 12

    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v11

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-lt v9, v11, :cond_3

    if-eqz p3, :cond_0

    iget v1, p1, Lcom/android/launcher3/M;->e:I

    iget v2, p1, Lcom/android/launcher3/M;->f:I

    iget v3, p1, Lcom/android/launcher3/M;->g:I

    iget v4, p1, Lcom/android/launcher3/M;->h:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, v10, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p2, :cond_4

    iget-object v0, p1, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/K;

    if-eqz v8, :cond_4

    iget v2, v8, Lcom/android/launcher3/K;->a:I

    iget v3, v8, Lcom/android/launcher3/K;->b:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IIIIZZ)Z

    iget v1, v8, Lcom/android/launcher3/K;->a:I

    iget v2, v8, Lcom/android/launcher3/K;->b:I

    iget v3, v8, Lcom/android/launcher3/K;->c:I

    iget v4, v8, Lcom/android/launcher3/K;->d:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1
.end method

.method private a(Lcom/android/launcher3/M;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    new-instance v0, Lcom/android/launcher3/K;

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/K;-><init>(Lcom/android/launcher3/CellLayout;IIII)V

    invoke-virtual {p1, v8, v0}, Lcom/android/launcher3/M;->a(Landroid/view/View;Lcom/android/launcher3/K;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public static a(Lcom/android/launcher3/bD;)V
    .locals 4

    const/4 v3, 0x1

    instance-of v0, p0, Lcom/android/launcher3/cF;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/cF;

    iget v1, v0, Lcom/android/launcher3/cF;->c:I

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/cF;

    iget v0, v0, Lcom/android/launcher3/cF;->d:I

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/CellLayout;->a(II[I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/bD;->l:I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/launcher3/bD;->m:I

    :goto_1
    return-void

    :cond_0
    instance-of v0, p0, Lcom/android/launcher3/eq;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/eq;

    iget v1, v0, Lcom/android/launcher3/eq;->b:I

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/eq;

    iget v0, v0, Lcom/android/launcher3/eq;->c:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/launcher3/bD;->m:I

    iput v3, p0, Lcom/android/launcher3/bD;->l:I

    goto :goto_1
.end method

.method private a(Ljava/util/Stack;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ap:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/M;)Z
    .locals 11

    iget-object v0, p4, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/K;

    const/4 v10, 0x0

    iget v1, v9, Lcom/android/launcher3/K;->a:I

    iget v2, v9, Lcom/android/launcher3/K;->b:I

    iget v3, v9, Lcom/android/launcher3/K;->c:I

    iget v4, v9, Lcom/android/launcher3/K;->d:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/CellLayout;->a(Landroid/graphics/Rect;[[ZZ)V

    iget v1, v9, Lcom/android/launcher3/K;->a:I

    iget v2, v9, Lcom/android/launcher3/K;->b:I

    iget v3, v9, Lcom/android/launcher3/K;->c:I

    iget v4, v9, Lcom/android/launcher3/K;->d:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->s:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->a(IIII[I[[Z[[Z[I)[I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/K;->a:I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/K;->b:I

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    iget v1, v9, Lcom/android/launcher3/K;->a:I

    iget v2, v9, Lcom/android/launcher3/K;->b:I

    iget v3, v9, Lcom/android/launcher3/K;->c:I

    iget v4, v9, Lcom/android/launcher3/K;->d:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    return v7

    :cond_0
    move v7, v10

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z
    .locals 13

    new-instance v11, Lcom/android/launcher3/Q;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, p1, v0}, Lcom/android/launcher3/Q;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/M;)V

    invoke-virtual {v11}, Lcom/android/launcher3/Q;->b()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v1, 0x0

    aget v1, p3, v1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v3

    move v10, v1

    :goto_0
    if-gtz v9, :cond_4

    const/4 v8, 0x0

    :cond_0
    return v8

    :cond_1
    const/4 v1, 0x0

    aget v1, p3, v1

    if-lez v1, :cond_2

    const/4 v1, 0x2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v3, v2

    move v10, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    aget v1, p3, v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v3

    move v10, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v9, v3, v2

    move v10, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/M;->a()V

    iget-object v1, v11, Lcom/android/launcher3/Q;->k:Lcom/android/launcher3/R;

    iput v10, v1, Lcom/android/launcher3/R;->a:I

    iget-object v1, v11, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v1, v1, Lcom/android/launcher3/M;->b:Ljava/util/ArrayList;

    iget-object v2, v11, Lcom/android/launcher3/Q;->k:Lcom/android/launcher3/R;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    if-lez v9, :cond_5

    if-eqz v8, :cond_7

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/launcher3/Q;->b()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v8, :cond_15

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_15

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-gt v3, v4, :cond_15

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_15

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-gt v2, v3, :cond_15

    const/4 v1, 0x1

    move v8, v1

    :goto_3
    iget-object v1, v11, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    iget v2, v1, Lcom/android/launcher3/K;->a:I

    iget v3, v1, Lcom/android/launcher3/K;->b:I

    iget v4, v1, Lcom/android/launcher3/K;->c:I

    iget v5, v1, Lcom/android/launcher3/K;->d:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto :goto_4

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    iget v2, v1, Lcom/android/launcher3/K;->a:I

    iget v3, v1, Lcom/android/launcher3/K;->b:I

    iget v4, v1, Lcom/android/launcher3/K;->c:I

    iget v5, v1, Lcom/android/launcher3/K;->d:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/launcher3/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    move v2, v8

    :goto_6
    add-int/lit8 v3, v9, -0x1

    iget-object v1, v11, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v11}, Lcom/android/launcher3/Q;->a()V

    move v8, v2

    move v9, v3

    goto/16 :goto_2

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iget-object v1, v11, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p4

    if-eq v2, v0, :cond_8

    iget-object v1, v11, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v1, v1, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    packed-switch v10, :pswitch_data_0

    iget-boolean v3, v11, Lcom/android/launcher3/Q;->j:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x3

    iget-object v4, v11, Lcom/android/launcher3/Q;->f:[I

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/Q;->a(I[I)V

    :cond_a
    iget-object v3, v11, Lcom/android/launcher3/Q;->f:[I

    move-object v4, v3

    :goto_8
    packed-switch v10, :pswitch_data_1

    :cond_b
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    move v2, v1

    goto :goto_6

    :pswitch_0
    iget-boolean v3, v11, Lcom/android/launcher3/Q;->g:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    iget-object v4, v11, Lcom/android/launcher3/Q;->c:[I

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/Q;->a(I[I)V

    :cond_c
    iget-object v3, v11, Lcom/android/launcher3/Q;->c:[I

    move-object v4, v3

    goto :goto_8

    :pswitch_1
    iget-boolean v3, v11, Lcom/android/launcher3/Q;->h:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    iget-object v4, v11, Lcom/android/launcher3/Q;->d:[I

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/Q;->a(I[I)V

    :cond_d
    iget-object v3, v11, Lcom/android/launcher3/Q;->d:[I

    move-object v4, v3

    goto :goto_8

    :pswitch_2
    iget-boolean v3, v11, Lcom/android/launcher3/Q;->i:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    iget-object v4, v11, Lcom/android/launcher3/Q;->e:[I

    invoke-virtual {v11, v3, v4}, Lcom/android/launcher3/Q;->a(I[I)V

    :cond_e
    iget-object v3, v11, Lcom/android/launcher3/Q;->e:[I

    move-object v4, v3

    goto :goto_8

    :pswitch_3
    iget v3, v1, Lcom/android/launcher3/K;->b:I

    :goto_a
    iget v5, v1, Lcom/android/launcher3/K;->b:I

    iget v6, v1, Lcom/android/launcher3/K;->d:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    iget v6, v1, Lcom/android/launcher3/K;->a:I

    iget v7, v1, Lcom/android/launcher3/K;->c:I

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_4
    iget v3, v1, Lcom/android/launcher3/K;->b:I

    :goto_b
    iget v5, v1, Lcom/android/launcher3/K;->b:I

    iget v6, v1, Lcom/android/launcher3/K;->d:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    iget v6, v1, Lcom/android/launcher3/K;->a:I

    if-ne v5, v6, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :pswitch_5
    iget v3, v1, Lcom/android/launcher3/K;->a:I

    :goto_c
    iget v5, v1, Lcom/android/launcher3/K;->a:I

    iget v6, v1, Lcom/android/launcher3/K;->c:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    iget v6, v1, Lcom/android/launcher3/K;->b:I

    iget v7, v1, Lcom/android/launcher3/K;->d:I

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :pswitch_6
    iget v3, v1, Lcom/android/launcher3/K;->a:I

    :goto_d
    iget v5, v1, Lcom/android/launcher3/K;->a:I

    iget v6, v1, Lcom/android/launcher3/K;->c:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_b

    aget v5, v4, v3

    iget v6, v1, Lcom/android/launcher3/K;->b:I

    if-ne v5, v6, :cond_12

    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    iget-object v1, v11, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/android/launcher3/Q;->a()V

    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    iget v2, v1, Lcom/android/launcher3/K;->a:I

    iget v3, v1, Lcom/android/launcher3/K;->b:I

    iget v4, v1, Lcom/android/launcher3/K;->c:I

    iget v5, v1, Lcom/android/launcher3/K;->d:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto/16 :goto_5

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v5, v11, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v5, v5, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    packed-switch v10, :pswitch_data_2

    iget v5, v1, Lcom/android/launcher3/K;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/launcher3/K;->b:I

    goto/16 :goto_7

    :pswitch_7
    iget v5, v1, Lcom/android/launcher3/K;->a:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/android/launcher3/K;->a:I

    goto/16 :goto_7

    :pswitch_8
    iget v5, v1, Lcom/android/launcher3/K;->a:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/launcher3/K;->a:I

    goto/16 :goto_7

    :pswitch_9
    iget v5, v1, Lcom/android/launcher3/K;->b:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/android/launcher3/K;->b:I

    goto/16 :goto_7

    :cond_15
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/M;->b()V

    move v8, v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILcom/android/launcher3/M;)Z
    .locals 19

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v9, 0x1

    :cond_0
    return v9

    :cond_1
    const/16 v18, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v17, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->a(Landroid/graphics/Rect;[[ZZ)V

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->u:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->s:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/CellLayout;->a(IIII[I[[Z[[Z[I)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->s:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move v9, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/K;

    iget v3, v2, Lcom/android/launcher3/K;->a:I

    iget v4, v2, Lcom/android/launcher3/K;->b:I

    iget v5, v2, Lcom/android/launcher3/K;->c:I

    iget v6, v2, Lcom/android/launcher3/K;->d:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto :goto_5

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/K;

    if-nez v17, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/launcher3/K;->a:I

    iget v6, v2, Lcom/android/launcher3/K;->b:I

    iget v7, v2, Lcom/android/launcher3/K;->a:I

    iget v8, v2, Lcom/android/launcher3/K;->c:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/android/launcher3/K;->b:I

    iget v2, v2, Lcom/android/launcher3/K;->d:I

    add-int/2addr v2, v8

    invoke-direct {v3, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v17, v3

    goto/16 :goto_0

    :cond_3
    iget v3, v2, Lcom/android/launcher3/K;->a:I

    iget v5, v2, Lcom/android/launcher3/K;->b:I

    iget v6, v2, Lcom/android/launcher3/K;->a:I

    iget v7, v2, Lcom/android/launcher3/K;->c:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/launcher3/K;->b:I

    iget v2, v2, Lcom/android/launcher3/K;->d:I

    add-int/2addr v2, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6, v2}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/K;

    iget v3, v2, Lcom/android/launcher3/K;->a:I

    iget v4, v2, Lcom/android/launcher3/K;->b:I

    iget v5, v2, Lcom/android/launcher3/K;->c:I

    iget v6, v2, Lcom/android/launcher3/K;->d:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->u:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/K;

    iget v3, v2, Lcom/android/launcher3/K;->a:I

    sub-int/2addr v3, v10

    iget v4, v2, Lcom/android/launcher3/K;->b:I

    sub-int/2addr v4, v9

    iget v5, v2, Lcom/android/launcher3/K;->c:I

    iget v6, v2, Lcom/android/launcher3/K;->d:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto/16 :goto_2

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/K;

    iget v6, v2, Lcom/android/launcher3/K;->a:I

    add-int/2addr v6, v3

    iput v6, v2, Lcom/android/launcher3/K;->a:I

    iget v6, v2, Lcom/android/launcher3/K;->b:I

    add-int/2addr v6, v4

    iput v6, v2, Lcom/android/launcher3/K;->b:I

    goto/16 :goto_3

    :cond_7
    move/from16 v9, v18

    goto/16 :goto_4
.end method

.method private a([IIIIILandroid/view/View;[[Z)Z
    .locals 11

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/CellLayout;->b(Landroid/view/View;[[Z)V

    const/4 v5, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ltz p4, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x1

    sub-int v2, p4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget v2, p0, Lcom/android/launcher3/CellLayout;->f:I

    add-int/lit8 v3, p2, -0x1

    sub-int v3, v2, v3

    if-ltz p4, :cond_e

    add-int/lit8 v2, p2, -0x1

    add-int v4, p4, v2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    :goto_2
    const/4 v2, 0x0

    if-ltz p5, :cond_1

    const/4 v2, 0x0

    add-int/lit8 v3, p3, -0x1

    sub-int v3, p5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    add-int/lit8 v4, p3, -0x1

    sub-int v4, v3, v4

    if-ltz p5, :cond_d

    add-int/lit8 v3, p3, -0x1

    add-int v6, p5, v3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    add-int/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_4
    move v7, v2

    move v2, v5

    :goto_5
    if-ge v7, v3, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    const/4 v1, -0x1

    if-ne p4, v1, :cond_3

    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_c

    :cond_3
    const/4 p4, -0x1

    const/16 p5, -0x1

    move v5, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move v6, v1

    :goto_6
    if-lt v6, v8, :cond_7

    :goto_7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    move v5, v4

    :goto_8
    if-lt v5, p2, :cond_9

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    aput v6, p1, v2

    const/4 v2, 0x1

    aput v7, p1, v2

    :cond_8
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_9
    if-lt v4, p3, :cond_a

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_8

    :cond_a
    add-int v9, v6, v5

    aget-object v9, p7, v9

    add-int v10, v7, v4

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_b

    add-int v4, v6, v5

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    goto :goto_6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;[[Z)V

    return v2

    :cond_d
    move v3, v4

    goto :goto_4

    :cond_e
    move v8, v3

    goto :goto_2
.end method

.method static a([IIIII[[Z)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-lt v4, p4, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    move v6, v1

    :goto_2
    if-lt v6, p3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, p5, v6

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    move v5, v6

    :goto_4
    add-int v3, v6, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v5, v3, :cond_2

    if-lt v6, p3, :cond_4

    :cond_2
    if-eqz v0, :cond_8

    aput v6, p0, v1

    aput v4, p0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_5
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_5

    if-lt v4, p4, :cond_6

    :cond_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    aget-object v0, p5, v5

    aget-boolean v0, v0, v3

    if-nez v0, :cond_7

    move v0, v2

    :goto_6
    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private a(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->ap:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/CellLayout;->f:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/CellLayout;->g:I

    mul-int/2addr v4, v5

    if-lt v3, v4, :cond_2

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->b(Landroid/view/View;[[Z)V

    move/from16 v0, p1

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/CellLayout;->b:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/CellLayout;->j:I

    add-int/2addr v4, v5

    add-int/lit8 v5, p5, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v13, v3

    move/from16 v0, p2

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/CellLayout;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/CellLayout;->k:I

    add-int/2addr v4, v5

    add-int/lit8 v5, p6, -0x1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v14, v3

    if-eqz p9, :cond_3

    :goto_1
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    new-instance v15, Landroid/graphics/Rect;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Ljava/util/Stack;

    invoke-direct/range {v16 .. v16}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->f:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/CellLayout;->g:I

    move/from16 v18, v0

    if-lez p3, :cond_1

    if-lez p4, :cond_1

    if-lez p5, :cond_1

    if-lez p6, :cond_1

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    :cond_1
    :goto_2
    return-object p9

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/CellLayout;->ap:Ljava/util/Stack;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 p9, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    move v12, v3

    :goto_3
    add-int/lit8 v3, p4, -0x1

    sub-int v3, v18, v3

    if-lt v12, v3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;[[Z)V

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v9, v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, p9, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, p9, v3

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/Stack;)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    move v11, v3

    :goto_4
    add-int/lit8 v3, p3, -0x1

    sub-int v3, v17, v3

    if-lt v11, v3, :cond_7

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_3

    :cond_7
    const/4 v4, -0x1

    const/4 v3, -0x1

    if-eqz p8, :cond_20

    const/4 v3, 0x0

    move v4, v3

    :goto_5
    move/from16 v0, p3

    if-lt v4, v0, :cond_c

    const/4 v4, 0x1

    move/from16 v0, p3

    move/from16 v1, p5

    if-lt v0, v1, :cond_e

    const/4 v7, 0x1

    :goto_6
    move/from16 v0, p4

    move/from16 v1, p6

    if-lt v0, v1, :cond_f

    const/4 v3, 0x1

    :goto_7
    move v6, v3

    move v8, v4

    move/from16 v5, p4

    move/from16 v4, p3

    :goto_8
    if-eqz v7, :cond_10

    if-eqz v6, :cond_10

    move v6, v5

    move v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->q:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v8}, Lcom/android/launcher3/CellLayout;->c(II[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->ap:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    add-int v4, v11, v5

    add-int v7, v12, v6

    invoke-virtual {v3, v11, v12, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v7, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1b

    move v4, v7

    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    aget v7, v8, v7

    sub-int/2addr v7, v13

    int-to-double v0, v7

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    const/4 v7, 0x1

    aget v7, v8, v7

    sub-int/2addr v7, v14

    int-to-double v7, v7

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v21

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double v7, v7, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpg-double v19, v7, v9

    if-gtz v19, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_a
    const/4 v4, 0x0

    aput v11, p9, v4

    const/4 v4, 0x1

    aput v12, p9, v4

    if-eqz p10, :cond_b

    const/4 v4, 0x0

    aput v5, p10, v4

    const/4 v4, 0x1

    aput v6, p10, v4

    :cond_b
    invoke-virtual {v15, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide v3, v7

    :goto_b
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move-wide v9, v3

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_c
    move/from16 v0, p4

    if-lt v3, v0, :cond_d

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_5

    :cond_d
    add-int v5, v11, v4

    aget-object v5, p11, v5

    add-int v6, v12, v3

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_10
    if-eqz v8, :cond_14

    if-nez v7, :cond_14

    const/4 v3, 0x0

    move/from16 v23, v3

    move v3, v7

    move/from16 v7, v23

    :goto_d
    if-lt v7, v5, :cond_11

    if-nez v3, :cond_1f

    add-int/lit8 v4, v4, 0x1

    move v7, v5

    move v5, v3

    move/from16 v23, v4

    move v4, v6

    move/from16 v6, v23

    :goto_e
    move/from16 v0, p5

    if-lt v6, v0, :cond_18

    const/4 v3, 0x1

    :goto_f
    or-int/2addr v5, v3

    move/from16 v0, p6

    if-lt v7, v0, :cond_19

    const/4 v3, 0x1

    :goto_10
    or-int/2addr v4, v3

    if-eqz v8, :cond_1a

    const/4 v3, 0x0

    :goto_11
    move v8, v3

    move/from16 v23, v5

    move v5, v7

    move/from16 v7, v23

    move/from16 v24, v6

    move v6, v4

    move/from16 v4, v24

    goto/16 :goto_8

    :cond_11
    add-int v19, v11, v4

    add-int/lit8 v20, v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    add-int v19, v11, v4

    aget-object v19, p11, v19

    add-int v20, v12, v7

    aget-boolean v19, v19, v20

    if-eqz v19, :cond_13

    :cond_12
    const/4 v3, 0x1

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_14
    if-nez v6, :cond_1e

    const/4 v3, 0x0

    move/from16 v23, v3

    move v3, v6

    move/from16 v6, v23

    :goto_12
    if-lt v6, v4, :cond_15

    if-nez v3, :cond_1d

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    move v4, v3

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    goto :goto_e

    :cond_15
    add-int v19, v12, v5

    add-int/lit8 v20, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_16

    add-int v19, v11, v6

    aget-object v19, p11, v19

    add-int v20, v12, v5

    aget-boolean v19, v19, v20

    if-eqz v19, :cond_17

    :cond_16
    const/4 v3, 0x1

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_18
    const/4 v3, 0x0

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    goto :goto_10

    :cond_1a
    const/4 v3, 0x1

    goto :goto_11

    :cond_1b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_1c
    move-wide v3, v9

    goto/16 :goto_b

    :cond_1d
    move v6, v4

    move v4, v3

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    goto/16 :goto_e

    :cond_1e
    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    move/from16 v24, v7

    move v7, v5

    move/from16 v5, v24

    goto/16 :goto_e

    :cond_1f
    move v7, v5

    move v5, v3

    move/from16 v23, v4

    move v4, v6

    move/from16 v6, v23

    goto/16 :goto_e

    :cond_20
    move v5, v3

    move v6, v4

    goto/16 :goto_9
.end method

.method private a(IIIIIILandroid/view/View;[I[I)[I
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v11, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method private a(IIIILandroid/view/View;Z[I)[I
    .locals 12

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method private a(IIII[I[[Z[[Z[I)[I
    .locals 12

    if-eqz p8, :cond_1

    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, -0x80000000

    iget v7, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v8, p0, Lcom/android/launcher3/CellLayout;->g:I

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    add-int/lit8 v1, p4, -0x1

    sub-int v1, v8, v1

    if-lt v6, v1, :cond_2

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v3, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, p8, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, p8, v1

    :cond_0
    return-object p8

    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p8, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    :goto_2
    add-int/lit8 v2, p3, -0x1

    sub-int v2, v7, v2

    if-lt v5, v2, :cond_3

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-lt v4, p3, :cond_5

    sub-int v2, v5, p1

    sub-int v4, v5, p1

    mul-int/2addr v2, v4

    sub-int v4, v6, p2

    sub-int v9, v6, p2

    mul-int/2addr v4, v9

    add-int/2addr v2, v4

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->r:[I

    sub-int v9, v5, p1

    int-to-float v9, v9

    sub-int v10, v6, p2

    int-to-float v10, v10

    invoke-static {v9, v10, v2}, Lcom/android/launcher3/CellLayout;->b(FF[I)V

    const/4 v9, 0x0

    aget v9, p5, v9

    const/4 v10, 0x0

    aget v10, v2, v10

    mul-int/2addr v9, v10

    const/4 v10, 0x1

    aget v10, p5, v10

    const/4 v11, 0x1

    aget v2, v2, v11

    mul-int/2addr v2, v10

    add-int/2addr v2, v9

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-ltz v9, :cond_4

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    if-le v2, v1, :cond_8

    :cond_4
    const/4 v1, 0x0

    aput v5, p8, v1

    const/4 v1, 0x1

    aput v6, p8, v1

    move v1, v2

    move v2, v4

    :goto_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_5
    move/from16 v0, p4

    if-lt v2, v0, :cond_6

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_6
    add-int v9, v5, v4

    aget-object v9, p6, v9

    add-int v10, v6, v2

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_7

    if-eqz p7, :cond_8

    aget-object v9, p7, v4

    aget-boolean v9, v9, v2

    if-nez v9, :cond_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_4
.end method

.method public static a(II[I)[I
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v3

    iget-boolean v0, v3, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v3, Lcom/android/launcher3/al;->k:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, v3, Lcom/android/launcher3/al;->d:F

    float-to-int v5, v5

    div-int/2addr v4, v5

    iget v5, v3, Lcom/android/launcher3/al;->l:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v0

    iget v3, v3, Lcom/android/launcher3/al;->c:F

    float-to-int v3, v3

    div-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v3, p0

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, p1

    int-to-float v0, v0

    div-float v0, v4, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    aput v0, v4, v2

    return-object v4

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/launcher3/CellLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    return v0
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->b(Lcom/android/launcher3/CellLayout;)V

    return-void

    :cond_0
    move v2, v1

    :goto_2
    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/bD;

    if-eqz v1, :cond_5

    iget v4, v1, Lcom/android/launcher3/bD;->j:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/launcher3/bD;->k:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/launcher3/bD;->l:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    if-ne v4, v5, :cond_3

    iget v4, v1, Lcom/android/launcher3/bD;->m:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    if-eq v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher3/bD;->p:Z

    :cond_4
    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput v4, v1, Lcom/android/launcher3/bD;->j:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iput v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iput v4, v1, Lcom/android/launcher3/bD;->k:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput v4, v1, Lcom/android/launcher3/bD;->l:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iput v0, v1, Lcom/android/launcher3/bD;->m:I

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method private static b(FF[I)V
    .locals 8

    const/4 v7, 0x1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    div-float v0, p1, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    aput v4, p2, v4

    aput v4, p2, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p2, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    aput v0, p2, v7

    :cond_1
    return-void
.end method

.method private b(IIIILandroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->j:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->k:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v2, p3

    add-int/lit8 v3, p3, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->j:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->c:I

    mul-int/2addr v3, p4

    add-int/lit8 v4, p4, -0x1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->k:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private b(II[I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->j:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    aput v0, p3, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->k:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    return-void
.end method

.method static b(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->a(IIII[[ZZ)V

    goto :goto_0
.end method

.method private b(Lcom/android/launcher3/BubbleTextView;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/launcher3/CellLayout;->invalidate(IIII)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_2

    aget v2, p3, v0

    aput v1, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aput v2, p3, v0

    aget v2, p3, v1

    aput v1, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v2, p3, v1

    aget v2, p3, v1

    neg-int v2, v2

    aput v2, p3, v1

    aget v2, p3, v0

    neg-int v2, v2

    aput v2, p3, v0

    aget v2, p3, v0

    aput v1, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v2, p3, v0

    aget v2, p3, v1

    aput v1, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v2, p3, v1

    aget v2, p3, v1

    neg-int v2, v2

    aput v2, p3, v1

    aget v2, p3, v0

    neg-int v2, v2

    aput v2, p3, v0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p3, v1

    neg-int v2, v2

    aput v2, p3, v1

    aget v2, p3, v0

    neg-int v2, v2

    aput v2, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p3, v1

    neg-int v2, v2

    aput v2, p3, v1

    aget v2, p3, v0

    neg-int v2, v2

    aput v2, p3, v0

    aget v2, p3, v0

    aget v3, p3, v1

    aput v3, p3, v0

    aput v2, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p3, v1

    neg-int v2, v2

    aput v2, p3, v1

    aget v2, p3, v0

    neg-int v2, v2

    aput v2, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->a(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/M;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p3, v1

    neg-int v2, v2

    aput v2, p3, v1

    aget v2, p3, v0

    neg-int v2, v2

    aput v2, p3, v0

    aget v2, p3, v0

    aget v3, p3, v1

    aput v3, p3, v0

    aput v2, p3, v1

    goto :goto_1
.end method

.method private c()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private c(II[I)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(IIII[I)V

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/CellLayout;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->r:[I

    return-object v0
.end method

.method static synthetic d(Lcom/android/launcher3/CellLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->ah:F

    return v0
.end method

.method static synthetic e(Lcom/android/launcher3/CellLayout;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Z:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/android/launcher3/CellLayout;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->R:[F

    return-object v0
.end method

.method private g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-boolean p1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/launcher3/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic h(Lcom/android/launcher3/CellLayout;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->W:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(FF[I)F
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    aget v0, p3, v3

    aget v1, p3, v6

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->r:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->c(II[I)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->r:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->r:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final a(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->C:F

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method final a(FZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->H:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->H:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher3/CellLayout;->z:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->A:I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->I:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final a(II)V
    .locals 7

    iput p1, p0, Lcom/android/launcher3/CellLayout;->b:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->d:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->e:I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->j:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->k:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->g:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ex;->a(IIIIII)V

    return-void
.end method

.method public final a(IIIILandroid/graphics/Rect;)V
    .locals 9

    iget v0, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->j:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->k:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v5

    mul-int v6, p3, v0

    add-int/lit8 v7, p3, -0x1

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    mul-int v7, p4, v1

    add-int/lit8 v8, p4, -0x1

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    add-int/2addr v1, v3

    mul-int/2addr v1, p2

    add-int/2addr v1, v5

    add-int v2, v0, v6

    add-int v3, v1, v7

    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method final a(IIII[I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->j:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v3, p3

    add-int/lit8 v4, p3, -0x1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->j:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, p5, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->k:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    mul-int/2addr v2, p4

    add-int/lit8 v3, p4, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->k:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p5, v0

    return-void
.end method

.method public final a(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final a(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->w:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    return-void
.end method

.method final a(Landroid/view/View;Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    aget v1, v1, v3

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v0, :cond_2

    if-eq p4, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    aput p3, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    aput p4, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->r:[I

    invoke-direct {p0, p3, p4, v0}, Lcom/android/launcher3/CellLayout;->b(II[I)V

    aget v1, v0, v2

    aget v2, v0, v3

    if-eqz p1, :cond_4

    if-nez p8, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v0, p5

    add-int/lit8 v2, p5, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->j:I

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    :goto_1
    iget v2, p0, Lcom/android/launcher3/CellLayout;->T:I

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/launcher3/bB;->b()V

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/CellLayout;->T:I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->T:I

    aget-object v5, v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p7, :cond_3

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/graphics/Rect;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->T:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/bB;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->T:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->a()V

    goto/16 :goto_0

    :cond_4
    if-eqz p8, :cond_5

    if-eqz p9, :cond_5

    iget v0, p8, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v3, p5

    add-int/lit8 v4, p5, -0x1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->j:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-virtual {p9}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->b()I

    move-result v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/CellLayout;->c:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v3, p8, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v0, p5

    add-int/lit8 v3, p5, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->j:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->c:I

    mul-int/2addr v1, p6

    add-int/lit8 v3, p6, -0x1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->k:I

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    goto/16 :goto_1
.end method

.method final a(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/CellLayout;->b(Lcom/android/launcher3/BubbleTextView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/CellLayout;->b(Lcom/android/launcher3/BubbleTextView;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/launcher3/be;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/android/launcher3/CellLayout;->ao:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ex;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->c(IIII[I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(IIIILandroid/view/View;[IZ)Z
    .locals 13

    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIII[I)V

    const/4 v2, 0x0

    aget v3, v7, v2

    const/4 v2, 0x1

    aget v4, v7, v2

    const/4 v11, 0x1

    new-instance v12, Lcom/android/launcher3/M;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/android/launcher3/M;-><init>(Lcom/android/launcher3/CellLayout;B)V

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->a(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/M;)Lcom/android/launcher3/M;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->g(Z)V

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher3/M;->d:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;Z)V

    if-eqz p7, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->b()V

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->a()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v3}, Lcom/android/launcher3/ex;->requestLayout()V

    :cond_0
    iget-boolean v2, v2, Lcom/android/launcher3/M;->d:Z

    return v2

    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0, v3}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;IIIIZZ)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    if-nez p6, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    move-object v4, v0

    :goto_0
    invoke-virtual {v6, p1}, Lcom/android/launcher3/ex;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->W:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->W:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->W:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    iget v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    if-eqz p7, :cond_1

    iget v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    aget-object v1, v4, v1

    iget v7, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    const/4 v8, 0x0

    aput-boolean v8, v1, v7

    aget-object v1, v4, p2

    const/4 v4, 0x1

    aput-boolean v4, v1, p3

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    if-eqz p6, :cond_2

    iput p2, v0, Lcom/android/launcher3/bD;->j:I

    iput p2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput p3, v0, Lcom/android/launcher3/bD;->k:I

    iput p3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    :goto_1
    invoke-virtual {v6, v2}, Lcom/android/launcher3/ex;->a(Lcom/android/launcher3/CellLayout$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    iget v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    iput v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    if-ne v3, v4, :cond_3

    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    iput p2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iput p3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    int-to-long v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->W:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/I;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/I;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/J;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/launcher3/J;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p5

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v4, v0

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout;->af:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->c(Z)V

    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    if-ltz v0, :cond_6

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->f:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_6

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    if-ltz v0, :cond_6

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->g:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_6

    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    :cond_2
    iget v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/CellLayout;->g:I

    iput v0, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/launcher3/ex;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->c(Landroid/view/View;)V

    :cond_4
    :goto_1
    return v3

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_1
.end method

.method final a([III)Z
    .locals 8

    const/4 v4, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method final a([IIIII)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method final a(IIIIIILandroid/view/View;[I[II)[I
    .locals 15

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->c(IIII[I)[I

    move-result-object v13

    if-nez p9, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p9, v0

    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    move/from16 v0, p10

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x64

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v2, 0x0

    const/16 v3, -0x64

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v2, 0x1

    const/16 v3, -0x64

    aput v3, v1, v2

    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    const/4 v10, 0x1

    new-instance v11, Lcom/android/launcher3/M;

    const/4 v1, 0x0

    invoke-direct {v11, p0, v1}, Lcom/android/launcher3/M;-><init>(Lcom/android/launcher3/CellLayout;B)V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/CellLayout;->a(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/M;)Lcom/android/launcher3/M;

    move-result-object v9

    new-instance v8, Lcom/android/launcher3/M;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/android/launcher3/M;-><init>(Lcom/android/launcher3/CellLayout;B)V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->a(IIIIIILcom/android/launcher3/M;)Lcom/android/launcher3/M;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, v9, Lcom/android/launcher3/M;->d:Z

    if-eqz v3, :cond_a

    invoke-virtual {v9}, Lcom/android/launcher3/M;->c()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/M;->c()I

    move-result v4

    if-lt v3, v4, :cond_a

    move-object v3, v9

    :goto_1
    if-nez p10, :cond_c

    if-eqz v3, :cond_b

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;I)V

    const/4 v1, 0x0

    iget v2, v3, Lcom/android/launcher3/M;->e:I

    aput v2, v13, v1

    const/4 v1, 0x1

    iget v2, v3, Lcom/android/launcher3/M;->f:I

    aput v2, v13, v1

    const/4 v1, 0x0

    iget v2, v3, Lcom/android/launcher3/M;->g:I

    aput v2, p9, v1

    const/4 v1, 0x1

    iget v2, v3, Lcom/android/launcher3/M;->h:I

    aput v2, p9, v1

    :goto_2
    move-object v1, v13

    :goto_3
    return-object v1

    :cond_4
    iget-object v14, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    const/4 v1, 0x2

    new-array v6, v1, [I

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->c(IIII[I)[I

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aget v8, v6, v1

    const/4 v1, 0x1

    aget v9, v6, v1

    move-object v7, p0

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/CellLayout;->b(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aget v2, v6, v1

    const/4 v1, 0x1

    aget v3, v6, v1

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->ai:Ljava/util/ArrayList;

    move-object v1, p0

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->b(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v1, p1

    div-int v1, v1, p5

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v2, v2, p6

    iget v3, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-eq v8, v3, :cond_5

    iget v3, p0, Lcom/android/launcher3/CellLayout;->f:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_6

    :cond_5
    const/4 v1, 0x0

    :cond_6
    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-eq v9, v3, :cond_7

    iget v3, p0, Lcom/android/launcher3/CellLayout;->g:I

    move/from16 v0, p6

    if-ne v0, v3, :cond_8

    :cond_7
    const/4 v2, 0x0

    :cond_8
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v14, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v14, v1

    :goto_4
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->al:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->ak:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    goto/16 :goto_0

    :cond_9
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {v1, v2, v14}, Lcom/android/launcher3/CellLayout;->b(FF[I)V

    goto :goto_4

    :cond_a
    iget-boolean v3, v1, Lcom/android/launcher3/M;->d:Z

    if-eqz v3, :cond_15

    move-object v3, v1

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, p9, v4

    aput v5, p9, v3

    aput v5, v13, v2

    aput v5, v13, v1

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->g(Z)V

    if-eqz v3, :cond_13

    const/4 v1, 0x0

    iget v4, v3, Lcom/android/launcher3/M;->e:I

    aput v4, v13, v1

    const/4 v1, 0x1

    iget v4, v3, Lcom/android/launcher3/M;->f:I

    aput v4, v13, v1

    const/4 v1, 0x0

    iget v4, v3, Lcom/android/launcher3/M;->g:I

    aput v4, p9, v1

    const/4 v1, 0x1

    iget v4, v3, Lcom/android/launcher3/M;->h:I

    aput v4, p9, v1

    const/4 v1, 0x1

    move/from16 v0, p10

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_14

    :cond_d
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;Z)V

    const/4 v1, 0x2

    move/from16 v0, p10

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    move/from16 v0, p10

    if-ne v0, v1, :cond_12

    :cond_e
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->b()V

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    move v1, v2

    :goto_6
    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_f

    if-nez v1, :cond_10

    :cond_f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->g(Z)V

    :cond_10
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->requestLayout()V

    move-object v1, v13

    goto/16 :goto_3

    :cond_11
    const/4 v1, 0x0

    goto :goto_5

    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/M;Landroid/view/View;I)V

    move v1, v2

    goto :goto_6

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, v13, v3

    aput v6, v13, v2

    goto :goto_6

    :cond_14
    move v1, v2

    goto :goto_6

    :cond_15
    move-object v3, v2

    goto/16 :goto_1
.end method

.method final a(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public final b(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(II)V
    .locals 7

    iput p1, p0, Lcom/android/launcher3/CellLayout;->f:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->g:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->g:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->g:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->u:[[Z

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ap:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->j:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->k:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->g:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ex;->a(IIIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    return-void
.end method

.method public final b(Lcom/android/launcher3/be;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ex;->a(Z)V

    return-void
.end method

.method public final b([III)Z
    .locals 6

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->g:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method final b(IIII[I)[I
    .locals 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v6, v3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method public final c(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;[[Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->n:Z

    return-void
.end method

.method final c(IIII[I)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->buildLayer()V

    return-void
.end method

.method public final d(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->M:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->N:I

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;->b(Landroid/view/View;[[Z)V

    return-void
.end method

.method final d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->O:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->O:Z

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->O:Z

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->P:Z

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/launcher3/CellLayout;->A:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->K:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final e()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->af:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->ag:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final e(II)Landroid/view/View;
    .locals 7

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v3}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    if-gt v5, p1, :cond_1

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    add-int/2addr v5, v6

    if-ge p1, v5, :cond_1

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    if-gt v5, p2, :cond_1

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    add-int/2addr v0, v5

    if-ge p2, v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->m:Z

    return-void
.end method

.method public final f(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->af:Z

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ex;->b(Z)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->n:Z

    return v0
.end method

.method public final f(II)Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->g:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->t:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->D:Z

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->B:F

    return v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/L;

    return-object v0
.end method

.method final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->O:Z

    return v0
.end method

.method protected final i()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->m:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/CellLayout;->m:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setRotationY(F)V

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/CellLayout;->a(FZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    return-void
.end method

.method final k()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    return v0
.end method

.method final l()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->g:I

    return v0
.end method

.method final m()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->b:I

    return v0
.end method

.method final n()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->c:I

    return v0
.end method

.method final o()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->j:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->p:Lcom/android/launcher3/L;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/L;->f:J

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->D:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->B:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->P:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->F:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lcom/android/launcher3/CellLayout;->B:F

    iget v3, p0, Lcom/android/launcher3/CellLayout;->C:F

    mul-float/2addr v1, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->U:Landroid/graphics/Paint;

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    array-length v0, v0

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->c()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->V:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v0, v4, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v3, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    sget v3, Lcom/android/launcher3/be;->h:I

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v4

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    aget v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->y:[I

    aget v0, v0, v11

    if-ltz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/FolderIcon;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->y:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->y:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->s:[I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/launcher3/CellLayout;->b(II[I)V

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->y:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->y:[I

    aget v7, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->s:[I

    aget v7, v7, v2

    iget v8, p0, Lcom/android/launcher3/CellLayout;->b:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->s:[I

    aget v8, v8, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    iget v4, v4, Lcom/android/launcher3/al;->v:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v4, v1, 0x2

    sub-int v4, v7, v4

    int-to-float v4, v4

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v2, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->E:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->R:[F

    aget v4, v0, v1

    cmpl-float v0, v4, v6

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->Q:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->an:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->an:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v5

    invoke-static {v0, v5}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->an:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v7, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/be;

    iget v5, v0, Lcom/android/launcher3/be;->a:I

    iget v6, v0, Lcom/android/launcher3/be;->b:I

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->s:[I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/launcher3/CellLayout;->b(II[I)V

    iget v5, v0, Lcom/android/launcher3/be;->a:I

    iget v6, v0, Lcom/android/launcher3/be;->b:I

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->s:[I

    aget v6, v6, v2

    iget v7, p0, Lcom/android/launcher3/CellLayout;->b:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->s:[I

    aget v7, v7, v11

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v7

    iget v7, v4, Lcom/android/launcher3/al;->v:I

    add-int/2addr v5, v7

    sget-object v7, Lcom/android/launcher3/be;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/android/launcher3/be;->c()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v5, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2, v2, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v7, Lcom/android/launcher3/be;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/android/launcher3/be;->d()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v8

    mul-float/2addr v0, v8

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->p:Lcom/android/launcher3/L;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/L;->a:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/launcher3/L;->b:I

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/launcher3/L;->c:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/L;->d:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/L;->e:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->w:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->w:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v2, v1

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->p:Lcom/android/launcher3/L;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->o:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScrollX()I

    move-result v3

    add-int v5, v0, v3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScrollY()I

    move-result v0

    add-int v6, v2, v0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-gez v3, :cond_8

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->v:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->q:[I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    sub-int v1, v5, v1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v7, p0, Lcom/android/launcher3/CellLayout;->j:I

    add-int/2addr v5, v7

    div-int/2addr v1, v5

    aput v1, v0, v3

    const/4 v1, 0x1

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->k:I

    add-int/2addr v3, v5

    div-int/2addr v2, v3

    aput v2, v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->g:I

    const/4 v3, 0x0

    aget v3, v0, v3

    if-gez v3, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v0, v3

    :cond_2
    const/4 v3, 0x0

    aget v3, v0, v3

    if-lt v3, v1, :cond_3

    const/4 v3, 0x0

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    :cond_3
    const/4 v1, 0x1

    aget v1, v0, v1

    if-gez v1, :cond_4

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    :cond_4
    const/4 v1, 0x1

    aget v1, v0, v1

    if-lt v1, v2, :cond_5

    const/4 v1, 0x1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    :cond_5
    const/4 v1, 0x0

    iput-object v1, v4, Lcom/android/launcher3/L;->a:Landroid/view/View;

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, v4, Lcom/android/launcher3/L;->b:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v4, Lcom/android/launcher3/L;->c:I

    const/4 v0, 0x1

    iput v0, v4, Lcom/android/launcher3/L;->d:I

    const/4 v0, 0x1

    iput v0, v4, Lcom/android/launcher3/L;->e:I

    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/launcher3/CellLayout;->setTag(Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_b

    :cond_9
    iget-boolean v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    if-eqz v8, :cond_b

    invoke-virtual {v7, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v8

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v8, v11, v8

    mul-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_a

    iput-object v7, v4, Lcom/android/launcher3/L;->a:Landroid/view/View;

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput v1, v4, Lcom/android/launcher3/L;->b:I

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iput v1, v4, Lcom/android/launcher3/L;->c:I

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput v1, v4, Lcom/android/launcher3/L;->d:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iput v0, v4, Lcom/android/launcher3/L;->e:I

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    :goto_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, p4

    sub-int/2addr v5, p2

    add-int v6, v2, p5

    sub-int/2addr v6, p3

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v8, v11, v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v7, v12, v0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->e:I

    if-gez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/launcher3/CellLayout;->f:I

    div-int v0, v8, v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->g:I

    div-int v1, v7, v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->b:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    if-eq v1, v2, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/launcher3/CellLayout;->b:I

    iput v1, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->b:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->j:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->k:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v6, p0, Lcom/android/launcher3/CellLayout;->g:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ex;->a(IIIIII)V

    :cond_2
    iget v0, p0, Lcom/android/launcher3/CellLayout;->M:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/CellLayout;->N:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/android/launcher3/CellLayout;->M:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->N:I

    :goto_0
    iget v2, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->j:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/CellLayout;->k:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_5

    iget v0, p0, Lcom/android/launcher3/CellLayout;->M:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/launcher3/CellLayout;->N:I

    if-lez v0, :cond_6

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    :goto_2
    return-void

    :cond_3
    if-eqz v9, :cond_4

    if-nez v10, :cond_7

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v11, v12}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_7
    move v0, v7

    move v1, v8

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->J:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->K:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->L:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->L:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->L:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher3/CellLayout;->L:I

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method final p()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->k:I

    return v0
.end method

.method public final q()Lcom/android/launcher3/ex;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()V
    .locals 5

    iget v0, p0, Lcom/android/launcher3/CellLayout;->T:I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->b()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v2, v3

    aput v4, v0, v1

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->c()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->c()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ex;->removeViews(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ex;->removeViewsInLayout(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final s()V
    .locals 10

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->a()V

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v9

    move v8, v5

    :goto_0
    if-lt v8, v9, :cond_1

    iput-boolean v5, p0, Lcom/android/launcher3/CellLayout;->aa:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    if-eq v2, v3, :cond_3

    :cond_2
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IIIIZZ)Z

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->B:F

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final t()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->am:Lcom/android/launcher3/aG;

    invoke-virtual {v0}, Lcom/android/launcher3/aG;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->ac:Z

    return-void
.end method

.method final u()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->am:Lcom/android/launcher3/aG;

    invoke-virtual {v0}, Lcom/android/launcher3/aG;->b()V

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->ac:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher3/CellLayout;->ac:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->ab:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->T:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->b()V

    iget v0, p0, Lcom/android/launcher3/CellLayout;->T:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->S:[Lcom/android/launcher3/bB;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->T:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->s()V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/CellLayout;->d(Z)V

    return-void
.end method

.method public final v()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->f:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->b:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->f:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->j:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final w()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->g:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->g:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->k:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->v:Z

    return v0
.end method
