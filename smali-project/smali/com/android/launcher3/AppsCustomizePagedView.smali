.class public Lcom/android/launcher3/AppsCustomizePagedView;
.super Lcom/android/launcher3/em;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher3/az;
.implements Lcom/android/launcher3/dH;
.implements Lcom/android/launcher3/ej;
.implements Lcom/android/launcher3/el;


# static fields
.field private static ap:F

.field private static aq:F

.field private static ar:F

.field private static as:F


# instance fields
.field private O:Lcom/android/launcher3/r;

.field private P:Lcom/android/launcher3/Launcher;

.field private Q:Lcom/android/launcher3/ap;

.field private final R:Landroid/view/LayoutInflater;

.field private final S:Landroid/content/pm/PackageManager;

.field private T:I

.field private U:Lcom/android/launcher3/PagedViewIcon;

.field private V:Ljava/util/ArrayList;

.field private W:Ljava/util/ArrayList;

.field private Z:Z

.field a:Ljava/util/ArrayList;

.field private aA:Z

.field private aB:Ljava/util/ArrayList;

.field private aC:Ljava/util/ArrayList;

.field private aD:Landroid/graphics/Rect;

.field private aE:Lcom/android/launcher3/fr;

.field private aF:Z

.field private aG:Z

.field private aa:I

.field private ab:I

.field private ac:Landroid/graphics/Canvas;

.field private ad:Lcom/android/launcher3/bw;

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Lcom/android/launcher3/ee;

.field private al:I

.field private am:I

.field private an:Landroid/graphics/Rect;

.field private ao:Lcom/android/launcher3/fW;

.field private at:Landroid/view/animation/AccelerateInterpolator;

.field private au:Landroid/view/animation/DecelerateInterpolator;

.field private av:Ljava/lang/Runnable;

.field private aw:Ljava/lang/Runnable;

.field private ax:Lcom/android/launcher3/eq;

.field private ay:Z

.field private az:Landroid/widget/Toast;

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x45cb2000    # 6500.0f

    sput v0, Lcom/android/launcher3/AppsCustomizePagedView;->ap:F

    const v0, 0x3f3d70a4    # 0.74f

    sput v0, Lcom/android/launcher3/AppsCustomizePagedView;->aq:F

    const v0, 0x3f266666    # 0.65f

    sput v0, Lcom/android/launcher3/AppsCustomizePagedView;->ar:F

    const/high16 v0, 0x41b00000    # 22.0f

    sput v0, Lcom/android/launcher3/AppsCustomizePagedView;->as:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/em;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    iput v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->an:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/fW;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/android/launcher3/fW;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ao:Lcom/android/launcher3/fW;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->at:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->au:Landroid/view/animation/DecelerateInterpolator;

    iput-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->av:Ljava/lang/Runnable;

    iput-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aw:Ljava/lang/Runnable;

    iput v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    iput v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    iput-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    iput-boolean v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ay:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aD:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/B;

    invoke-direct {v0}, Lcom/android/launcher3/B;-><init>()V

    new-instance v0, Lcom/android/launcher3/en;

    invoke-direct {v0}, Lcom/android/launcher3/en;-><init>()V

    new-instance v0, Lcom/android/launcher3/F;

    invoke-direct {v0}, Lcom/android/launcher3/F;-><init>()V

    new-instance v0, Lcom/android/launcher3/F;

    invoke-direct {v0}, Lcom/android/launcher3/F;-><init>()V

    new-instance v0, Lcom/android/launcher3/es;

    invoke-direct {v0}, Lcom/android/launcher3/es;-><init>()V

    new-instance v0, Lcom/android/launcher3/es;

    invoke-direct {v0}, Lcom/android/launcher3/es;-><init>()V

    new-instance v0, Lcom/android/launcher3/en;

    invoke-direct {v0}, Lcom/android/launcher3/en;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->R:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->S:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->e()Lcom/android/launcher3/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ad:Lcom/android/launcher3/bw;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ac:Landroid/graphics/Canvas;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->a:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/al;->j:I

    iput v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aj:I

    iput v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ai:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aa:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ab:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/android/launcher3/ee;

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/ee;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ak:Lcom/android/launcher3/ee;

    iput-boolean v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->G:Z

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method private Z()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->am:I

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->x:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->al:I

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private a(Landroid/view/View;ZZ)V
    .locals 3

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher3/n;

    invoke-direct {v2, p0}, Lcom/android/launcher3/n;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->e(Z)V

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/AppsCustomizePagedView;ILjava/util/ArrayList;III)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->s(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xc8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v0, Lcom/android/launcher3/z;

    new-instance v5, Lcom/android/launcher3/o;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher3/o;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;I)V

    new-instance v6, Lcom/android/launcher3/p;

    invoke-direct {v6, p0}, Lcom/android/launcher3/p;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/z;-><init>(ILjava/util/ArrayList;IILcom/android/launcher3/y;Lcom/android/launcher3/y;Lcom/android/launcher3/fr;)V

    new-instance v1, Lcom/android/launcher3/h;

    sget-object v2, Lcom/android/launcher3/A;->a:Lcom/android/launcher3/A;

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/h;-><init>(ILcom/android/launcher3/A;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->t(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/h;->a(I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/launcher3/z;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/h;

    iget v2, v0, Lcom/android/launcher3/h;->a:I

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AppsCustomizePagedView;->f(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AppsCustomizePagedView;->g(I)I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v8}, Lcom/android/launcher3/h;->cancel(Z)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->t(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/h;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/AppsCustomizePagedView;Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/h;->a()V

    :cond_0
    iget-object v1, p2, Lcom/android/launcher3/z;->b:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/h;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/h;->a()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/fr;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/AppsCustomizePagedView;Lcom/android/launcher3/z;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/z;Z)V

    return-void
.end method

.method private a(Lcom/android/launcher3/z;Z)V
    .locals 7

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/android/launcher3/z;->a:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/eh;

    iget-object v1, p1, Lcom/android/launcher3/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ac()V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Lcom/android/launcher3/z;->a(Z)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/launcher3/eh;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/PagedViewWidget;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/android/launcher3/aJ;

    invoke-direct {v6, v2}, Lcom/android/launcher3/aJ;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Lcom/android/launcher3/PagedViewWidget;->a(Lcom/android/launcher3/aJ;)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/h;

    iget v2, v0, Lcom/android/launcher3/h;->a:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->t(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/h;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v4}, Lcom/android/launcher3/z;->a(Z)V

    throw v0
.end method

.method private aa()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aG:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->Z()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->requestLayout()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aG:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ab()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->W()V

    goto :goto_1
.end method

.method private ab()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/h;->cancel(Z)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->E:Ljava/util/ArrayList;

    iget v3, v0, Lcom/android/launcher3/h;->a:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Lcom/android/launcher3/h;->a:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/eh;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher3/eh;

    invoke-virtual {v0}, Lcom/android/launcher3/eh;->a()V

    goto :goto_0
.end method

.method private ac()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v5

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->A:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->b([I)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->A:[I

    aget v2, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->A:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v0, -0x1

    if-ne v2, v1, :cond_2

    add-int/lit8 v4, v5, -0x1

    if-ge v1, v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_0
    :goto_0
    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_3

    :goto_2
    if-lt v3, v5, :cond_6

    return-void

    :cond_1
    if-lez v2, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v6

    if-gt v2, v4, :cond_4

    if-gt v4, v1, :cond_4

    if-eq v4, v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/launcher3/AppsCustomizePagedView;->d(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    invoke-virtual {v6, v3, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v4

    if-gt v2, v3, :cond_8

    if-gt v3, v1, :cond_8

    if-eq v3, v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/launcher3/AppsCustomizePagedView;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v6

    if-eq v6, v8, :cond_8

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private ad()Lcom/android/launcher3/AppsCustomizeTabHost;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    const v1, 0x7f100041

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic b(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/ee;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ak:Lcom/android/launcher3/ee;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    iput-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aw:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->av:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    iput v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    iput-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    invoke-static {}, Lcom/android/launcher3/PagedViewWidget;->b()V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->l()Lcom/android/launcher3/cD;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/cD;->deleteAppWidgetId(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->av:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->l()Lcom/android/launcher3/cD;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->c:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/cD;->deleteAppWidgetId(I)V

    :cond_4
    iget-object v0, v0, Lcom/android/launcher3/eq;->t:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/launcher3/AppsCustomizePagedView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aA:Z

    return v0
.end method

.method static synthetic d(Lcom/android/launcher3/AppsCustomizePagedView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/android/launcher3/AppsCustomizePagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    return v0
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher3/cO;->g()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private g(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v1, v2

    :goto_1
    if-lt v1, v7, :cond_2

    const/4 v0, -0x1

    :goto_2
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v0, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private r(I)V
    .locals 15

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->z()Z

    move-result v8

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->x:I

    mul-int/2addr v0, v1

    mul-int v7, p1, v0

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/i;

    invoke-virtual {v0}, Lcom/android/launcher3/i;->a()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v3, v7

    :goto_0
    if-lt v3, v9, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ac()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/d;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->R:Landroid/view/LayoutInflater;

    const v2, 0x7f040004

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v1, v6, p0}, Lcom/android/launcher3/PagedViewIcon;->a(Lcom/android/launcher3/d;Lcom/android/launcher3/ej;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sub-int v4, v3, v7

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    rem-int v2, v4, v2

    iget v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    div-int v12, v4, v5

    if-eqz v8, :cond_1

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    :goto_1
    const/4 v2, -0x1

    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v4, v5, v12, v13, v14}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/i;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/android/launcher3/d;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1
.end method

.method private s(I)I
    .locals 4

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->k:I

    if-ltz v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->k:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v0, 0x7fffffff

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    return v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/h;

    iget v0, v0, Lcom/android/launcher3/h;->a:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private t(I)I
    .locals 3

    const/16 v1, 0x13

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->s(I)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-gt v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/em;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->y:Z

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->d(F)V

    return-void
.end method

.method protected final a(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->c(F)V

    return-void
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->t:I

    return-void
.end method

.method public final a(IZ)V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v1, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    mul-int v4, v0, v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->u:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->v:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ai:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    div-int v2, v0, v1

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->af:I

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->s:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->t:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aj:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    div-int v3, v0, v1

    mul-int v1, p1, v4

    move v0, v1

    :goto_0
    add-int v5, v1, v4

    iget-object v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v0, v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/eh;

    invoke-virtual {v4}, Lcom/android/launcher3/eh;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/eh;->setColumnCount(I)V

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_1

    new-instance v0, Lcom/android/launcher3/q;

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/q;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;IILcom/android/launcher3/eh;ZILjava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Lcom/android/launcher3/eh;->a(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->R:Landroid/view/LayoutInflater;

    const v6, 0x7f040007

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedViewWidget;

    instance-of v6, v1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_5

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v6, Lcom/android/launcher3/eq;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v1, v8, v9}, Lcom/android/launcher3/eq;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v8, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-static {v8, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v8, v9

    iput v9, v6, Lcom/android/launcher3/eo;->l:I

    const/4 v9, 0x1

    aget v9, v8, v9

    iput v9, v6, Lcom/android/launcher3/eo;->m:I

    iget-object v9, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-static {v9, v1}, Lcom/android/launcher3/Launcher;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v9, v10

    iput v10, v6, Lcom/android/launcher3/eo;->n:I

    const/4 v10, 0x1

    aget v9, v9, v10

    iput v9, v6, Lcom/android/launcher3/eo;->o:I

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v10

    invoke-virtual {v0, v1, v9, v8, v10}, Lcom/android/launcher3/PagedViewWidget;->a(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher3/fr;)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedViewWidget;->a(Lcom/android/launcher3/el;)V

    :cond_2
    :goto_3
    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    rem-int v1, v5, v1

    iget v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    div-int v6, v5, v6

    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    sget-object v9, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v6, v9}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v9

    sget-object v10, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v10}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    iput v2, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v3, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    const v9, 0x800033

    invoke-virtual {v8, v9}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ai:I

    iput v1, v8, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    :cond_3
    if-lez v6, :cond_4

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aj:I

    iput v1, v8, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    :cond_4
    invoke-virtual {v4, v0, v8}, Lcom/android/launcher3/eh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_5
    instance-of v6, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_2

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v6, Lcom/android/launcher3/ep;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v6, v8}, Lcom/android/launcher3/ep;-><init>(Landroid/content/pm/ActivityInfo;)V

    const/4 v8, 0x1

    iput v8, v6, Lcom/android/launcher3/eo;->g:I

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v6, Lcom/android/launcher3/eo;->a:Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/launcher3/AppsCustomizePagedView;->S:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v9

    invoke-virtual {v0, v8, v1, v9}, Lcom/android/launcher3/PagedViewWidget;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/fr;)V

    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->r(I)V

    goto/16 :goto_2
.end method

.method final a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->an:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    if-eqz v0, :cond_0

    invoke-direct {p0, v7}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Z)V

    :cond_0
    new-instance v2, Lcom/android/launcher3/eq;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/eq;

    invoke-direct {v2, v0}, Lcom/android/launcher3/eq;-><init>(Lcom/android/launcher3/eq;)V

    iput-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    iget-object v3, v2, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    iget v4, v2, Lcom/android/launcher3/eq;->l:I

    iget v5, v2, Lcom/android/launcher3/eq;->m:I

    iget-object v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aD:Landroid/graphics/Rect;

    invoke-static {v0, v4, v5, v6}, Lcom/android/launcher3/e;->a(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    iget-object v4, v2, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    invoke-static {v0, v4, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v1, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "appWidgetMinWidth"

    iget-object v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aD:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "appWidgetMinHeight"

    iget-object v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aD:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "appWidgetMaxWidth"

    iget-object v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aD:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v4, v6, v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "appWidgetMaxHeight"

    iget-object v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aD:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v1, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iput-object v0, v2, Lcom/android/launcher3/eq;->u:Landroid/os/Bundle;

    :goto_1
    return-void

    :cond_1
    iput v7, p0, Lcom/android/launcher3/AppsCustomizePagedView;->b:I

    new-instance v1, Lcom/android/launcher3/k;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher3/k;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;Landroid/os/Bundle;Lcom/android/launcher3/eq;)V

    iput-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aw:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aw:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/launcher3/l;

    invoke-direct {v0, p0, v3, v2}, Lcom/android/launcher3/l;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher3/eq;)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->av:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->av:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v2, p4}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Landroid/view/View;ZZ)V

    if-nez p4, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->B()I

    move-result v0

    check-cast p1, Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p2, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/bD;

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/bD;)V

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/launcher3/bD;->l:I

    iget v1, v1, Lcom/android/launcher3/bD;->m:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher3/CellLayout;->a([III)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->a(Z)V

    :cond_1
    iput-boolean v2, p2, Lcom/android/launcher3/aH;->k:Z

    :cond_2
    invoke-direct {p0, p4}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Z)V

    iput-boolean v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ay:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/android/launcher3/Launcher;F)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->Q:Lcom/android/launcher3/ap;

    return-void
.end method

.method public final a(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aA:Z

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ab()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/launcher3/PagedViewIcon;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedViewIcon;->b()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    return-void
.end method

.method public final a(Lcom/android/launcher3/r;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->c(IZ)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->aa()V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_4

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/cB;->a(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v4, :cond_3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-static {v5, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    aget v6, v4, v8

    aget v7, v5, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget v4, v4, v9

    aget v5, v5, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v2, Lcom/android/launcher3/al;->d:F

    float-to-int v5, v5

    if-gt v6, v5, :cond_2

    iget v5, v2, Lcom/android/launcher3/al;->c:F

    float-to-int v5, v5

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Widget "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can not fit on this device ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Widget "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has invalid dimensions ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aF:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aF:Z

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->aa()V

    goto :goto_0
.end method

.method protected final a_(III)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/em;->a_(III)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/h;

    iget v2, v0, Lcom/android/launcher3/h;->a:I

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->k:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    if-ge v2, v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->k:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    if-gt v2, v3, :cond_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->t(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/h;->a(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/android/launcher3/h;->a(I)V

    goto :goto_0
.end method

.method final b()Lcom/android/launcher3/fr;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aE:Lcom/android/launcher3/fr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/fr;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/fr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aE:Lcom/android/launcher3/fr;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aE:Lcom/android/launcher3/fr;

    return-object v0
.end method

.method final b(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    goto :goto_0
.end method

.method public final b(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher3/cO;->g()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->aa()V

    :cond_0
    return-void
.end method

.method protected final b(Landroid/view/View;)Z
    .locals 14

    invoke-super {p0, p1}, Lcom/android/launcher3/em;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/PagedViewIcon;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Lcom/android/launcher3/az;)V

    :cond_1
    new-instance v0, Lcom/android/launcher3/m;

    invoke-direct {v0, p0}, Lcom/android/launcher3/m;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/PagedViewWidget;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ay:Z

    const v0, 0x7f100009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/eo;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ay:Z

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    instance-of v0, v6, Lcom/android/launcher3/eq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v13, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ax:Lcom/android/launcher3/eq;

    iget v4, v13, Lcom/android/launcher3/eo;->l:I

    iget v5, v13, Lcom/android/launcher3/eo;->m:I

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v5, v13, v1}, Lcom/android/launcher3/Workspace;->a(IILcom/android/launcher3/bD;Z)[I

    move-result-object v1

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/launcher3/aJ;

    invoke-virtual {v11}, Lcom/android/launcher3/aJ;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v11}, Lcom/android/launcher3/aJ;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v0, 0x1

    new-array v9, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/eq;->a:Landroid/content/ComponentName;

    iget v2, v13, Lcom/android/launcher3/eq;->d:I

    iget v3, v13, Lcom/android/launcher3/eq;->e:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/fr;->a(Landroid/content/ComponentName;IIIIIILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v0, 0x0

    aget v0, v9, v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/launcher3/fr;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v1, v3

    invoke-virtual {v11}, Lcom/android/launcher3/aJ;->getIntrinsicWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v11}, Lcom/android/launcher3/aJ;->getIntrinsicWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v6, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v13

    :goto_2
    instance-of v0, v4, Lcom/android/launcher3/eq;

    if-eqz v0, :cond_6

    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/eq;

    iget v0, v0, Lcom/android/launcher3/eq;->d:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->E()V

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v4, v8, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/eo;Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->Q:Lcom/android/launcher3/ap;

    sget v5, Lcom/android/launcher3/ap;->b:I

    move-object v1, v10

    move-object v3, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/ap;->a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/az;Ljava/lang/Object;ILandroid/graphics/Point;F)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ep;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ad:Lcom/android/launcher3/bw;

    iget-object v0, v0, Lcom/android/launcher3/ep;->b:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/bw;->a(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ac:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ac:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/fr;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ac:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ac:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput v0, v6, Lcom/android/launcher3/eo;->m:I

    iput v0, v6, Lcom/android/launcher3/eo;->l:I

    move-object v4, v6

    move-object v2, v1

    move-object v6, v12

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    move-object v6, v12

    move-object v4, v13

    goto/16 :goto_2
.end method

.method final c()I
    .locals 6

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v3, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/i;

    invoke-virtual {v0}, Lcom/android/launcher3/i;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->x:I

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int v1, v2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    :cond_0
    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v3, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/eh;

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    iget v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/android/launcher3/eh;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int v1, v2, v4

    add-int/2addr v1, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid ContentType"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final c(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aA:Z

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->B:Z

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/z;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/z;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->f(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->aa()V

    :cond_0
    return-void
.end method

.method final c_()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->Z:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->Z:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ak:Lcom/android/launcher3/ee;

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->aa:I

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ab:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/ee;->a(II)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;[I)F

    aget v2, v1, v6

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ak:Lcom/android/launcher3/ee;

    invoke-virtual {v4}, Lcom/android/launcher3/ee;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aget v4, v0, v6

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v6

    aget v2, v1, v5

    aget v0, v0, v5

    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/DragLayer;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    aput v0, v1, v5

    :cond_0
    return-void
.end method

.method protected final d(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->g(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->aa()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ay:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Z)V

    :cond_0
    return-void
.end method

.method protected final e(I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->z()Z

    move-result v7

    invoke-super {p0, p1}, Lcom/android/launcher3/em;->e(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ac()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(ILandroid/view/View;I)F

    move-result v9

    const/4 v1, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v1, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ao:Lcom/android/launcher3/fW;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/fW;->getInterpolation(F)F

    move-result v2

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    sget v5, Lcom/android/launcher3/AppsCustomizePagedView;->aq:F

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->at:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    invoke-virtual {v2, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    :goto_2
    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->e:F

    sget v5, Lcom/android/launcher3/AppsCustomizePagedView;->ap:F

    mul-float/2addr v4, v5

    invoke-virtual {v8, v4}, Landroid/view/View;->setCameraDistance(F)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v7, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/launcher3/AppsCustomizePagedView;->ar:F

    sub-float/2addr v4, v5

    move v6, v4

    :goto_3
    if-eqz v7, :cond_7

    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    move v5, v4

    :goto_4
    if-eqz v7, :cond_a

    const/4 v4, 0x0

    cmpg-float v4, v9, v4

    if-gez v4, :cond_9

    const/4 v4, 0x1

    :goto_5
    if-nez v0, :cond_c

    if-eqz v5, :cond_c

    int-to-float v1, v10

    mul-float/2addr v1, v6

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    sget v1, Lcom/android/launcher3/AppsCustomizePagedView;->as:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_e

    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ao:Lcom/android/launcher3/fW;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/launcher3/fW;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_1

    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->at:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->au:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v9

    invoke-virtual {v2, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_2

    :cond_5
    sget v4, Lcom/android/launcher3/AppsCustomizePagedView;->ar:F

    move v6, v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    cmpg-float v4, v9, v4

    if-gez v4, :cond_8

    const/4 v4, 0x1

    move v5, v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-lez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_d

    if-eqz v4, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v6

    int-to-float v2, v10

    mul-float/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    sget v1, Lcom/android/launcher3/AppsCustomizePagedView;->as:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_d
    int-to-float v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v8, v4}, Landroid/view/View;->setPivotY(F)V

    int-to-float v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v8, v4}, Landroid/view/View;->setPivotX(F)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_6

    :cond_e
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public final e(Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->g(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->f(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->aa()V

    :cond_0
    return-void
.end method

.method protected final f(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, p1, -0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final g(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Landroid/view/View;ZZ)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ay:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()F
    .locals 2

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/al;->t:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/al;->o:I

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public final k()V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ab()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/eh;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/launcher3/eh;

    invoke-virtual {v0}, Lcom/android/launcher3/eh;->a()V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->E:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final l()Lcom/android/launcher3/r;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    return-object v0
.end method

.method public final m()V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/high16 v8, -0x80000000

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->N()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ab()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v3, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->al:I

    if-lt v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->M()V

    return-void

    :cond_1
    new-instance v3, Lcom/android/launcher3/i;

    invoke-direct {v3, v2}, Lcom/android/launcher3/i;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    iget v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->x:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/i;->b(II)V

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Landroid/view/ViewGroup;I)V

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->af:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    invoke-virtual {v3, v6}, Lcom/android/launcher3/i;->setMinimumWidth(I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/i;->measure(II)V

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->an:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->an:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->an:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/launcher3/AppsCustomizePagedView;->an:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher3/i;->setPadding(IIII)V

    invoke-static {v3, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Landroid/view/ViewGroup;I)V

    new-instance v4, Lcom/android/launcher3/ec;

    invoke-direct {v4, v9, v9}, Lcom/android/launcher3/ec;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v3, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne v0, v3, :cond_3

    :goto_1
    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->am:I

    if-ge v1, v0, :cond_0

    new-instance v0, Lcom/android/launcher3/eh;

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher3/eh;-><init>(Landroid/content/Context;II)V

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->af:I

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    invoke-virtual {v0, v5}, Lcom/android/launcher3/eh;->setMinimumWidth(I)V

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/eh;->measure(II)V

    new-instance v3, Lcom/android/launcher3/ec;

    invoke-direct {v3, v9, v9}, Lcom/android/launcher3/ec;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid ContentType"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    return v0
.end method

.method protected final o()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/em;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->B:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/PagedViewIcon;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedViewIcon;->a()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    iget-object v2, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->P:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->c()Lcom/android/launcher3/eD;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/eD;->a(Landroid/content/Intent;Lcom/android/launcher3/ey;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/PagedViewWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->az:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->az:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->az:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->az:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    const v0, 0x7f100009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v5, [F

    aput v1, v4, v6

    invoke-static {v0, v3, v4}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x7d

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v3, "translationY"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/em;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ab()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/em;->onFinishInflate()V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/al;->j:I

    iget v2, v0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/android/launcher3/al;->j:I

    iget v0, v0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->setPadding(IIII)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/b;->b(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->B()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->A()V

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->setMeasuredDimension(II)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ak:Lcom/android/launcher3/ee;

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->u:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->s:I

    iget v5, p0, Lcom/android/launcher3/AppsCustomizePagedView;->v:I

    iget v6, p0, Lcom/android/launcher3/AppsCustomizePagedView;->t:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/ee;->setPadding(IIII)V

    iget v2, v0, Lcom/android/launcher3/al;->F:I

    iput v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    iget v0, v0, Lcom/android/launcher3/al;->E:I

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->x:I

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->Z()V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->af:I

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ae:I

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->af:I

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ak:Lcom/android/launcher3/ee;

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/ee;->measure(II)V

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ad()Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->d()Z

    move-result v2

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->c(IZ)V

    if-nez v2, :cond_1

    new-instance v0, Lcom/android/launcher3/j;

    invoke-direct {v0, p0}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/AppsCustomizePagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/em;->onMeasure(II)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->w:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->x:I

    mul-int/2addr v3, v4

    div-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ag:I

    iget v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->ah:I

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/2addr v0, v3

    goto :goto_0
.end method

.method public final p()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->T:I

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ad()Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    invoke-static {v2}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->b(Lcom/android/launcher3/r;)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->q(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->q(I)V

    goto :goto_0
.end method

.method public final q()V
    .locals 5

    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->V:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "AppsCustomizePagedView"

    const-string v0, "mWidgets"

    iget-object v2, p0, Lcom/android/launcher3/AppsCustomizePagedView;->W:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" previewImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/AppsCustomizePagedView;->S:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final r()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->ab()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedViewIcon;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->U:Lcom/android/launcher3/PagedViewIcon;

    :cond_0
    return-void
.end method

.method protected final t()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->k:I

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v2, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    if-ne v1, v2, :cond_1

    const v2, 0x7f0a0052

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->al:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/AppsCustomizePagedView;->i:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->O:Lcom/android/launcher3/r;

    sget-object v2, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne v1, v2, :cond_2

    const v2, 0x7f0a0053

    iget v1, p0, Lcom/android/launcher3/AppsCustomizePagedView;->am:I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid ContentType"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
