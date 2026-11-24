.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/ez;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/aF;
.implements Lcom/android/launcher3/aq;
.implements Lcom/android/launcher3/ay;
.implements Lcom/android/launcher3/az;
.implements Lcom/android/launcher3/bz;
.implements Lcom/android/launcher3/dH;


# static fields
.field private static af:Z

.field private static an:Landroid/graphics/Rect;

.field private static ao:Landroid/graphics/Rect;

.field private static synthetic bH:[I


# instance fields
.field private O:Landroid/animation/ObjectAnimator;

.field private P:Landroid/animation/ObjectAnimator;

.field private Q:F

.field private R:Landroid/animation/ValueAnimator;

.field private S:Landroid/graphics/drawable/Drawable;

.field private T:Z

.field private U:F

.field private V:J

.field private W:J

.field private Z:Landroid/animation/LayoutTransition;

.field a:Z

.field private aA:[I

.field private aB:[F

.field private aC:[F

.field private aD:Landroid/graphics/Matrix;

.field private aE:Lcom/android/launcher3/eC;

.field private aF:F

.field private aG:F

.field private aH:Lcom/android/launcher3/fU;

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:Lcom/android/launcher3/bs;

.field private aN:Landroid/graphics/Bitmap;

.field private final aO:Landroid/graphics/Rect;

.field private final aP:[I

.field private aQ:[I

.field private aR:Z

.field private aS:F

.field private aT:Z

.field private aU:Z

.field private aV:I

.field private aW:F

.field private aX:Ljava/lang/Runnable;

.field private aY:Ljava/lang/Runnable;

.field private aZ:Landroid/graphics/Point;

.field private final aa:Landroid/app/WallpaperManager;

.field private ab:Landroid/os/IBinder;

.field private ac:I

.field private ad:I

.field private ae:Lcom/android/launcher3/ex;

.field private ag:Ljava/util/HashMap;

.field private ah:Ljava/util/ArrayList;

.field private ai:Ljava/lang/Runnable;

.field private aj:Lcom/android/launcher3/L;

.field private ak:[I

.field private al:I

.field private am:I

.field private ap:Lcom/android/launcher3/cr;

.field private aq:Z

.field private ar:F

.field private as:Ljava/lang/String;

.field private at:Lcom/android/launcher3/CellLayout;

.field private au:Lcom/android/launcher3/CellLayout;

.field private av:Lcom/android/launcher3/CellLayout;

.field private aw:Lcom/android/launcher3/Launcher;

.field private ax:Lcom/android/launcher3/bw;

.field private ay:Lcom/android/launcher3/ap;

.field private az:[I

.field b:Z

.field private bA:F

.field private bB:Ljava/lang/Runnable;

.field private bC:Z

.field private bD:Z

.field private final bE:Ljava/lang/Runnable;

.field private bF:Z

.field private final bG:Lcom/android/launcher3/fX;

.field private ba:I

.field private final bb:Lcom/android/launcher3/a;

.field private final bc:Lcom/android/launcher3/a;

.field private bd:Lcom/android/launcher3/be;

.field private be:Lcom/android/launcher3/FolderIcon;

.field private bf:Z

.field private bg:Z

.field private bh:Lcom/android/launcher3/aG;

.field private bi:F

.field private bj:F

.field private bk:F

.field private bl:I

.field private bm:I

.field private bn:I

.field private bo:Landroid/util/SparseArray;

.field private final bp:Ljava/util/ArrayList;

.field private bq:I

.field private br:F

.field private bs:F

.field private bt:F

.field private bu:F

.field private bv:[F

.field private bw:[F

.field private bx:[F

.field private by:[F

.field private bz:I

.field c:Lcom/android/launcher3/fV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Workspace;->an:Landroid/graphics/Rect;

    sput-object v0, Lcom/android/launcher3/Workspace;->ao:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ez;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->Q:F

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->T:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->U:F

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/launcher3/Workspace;->V:J

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/launcher3/Workspace;->W:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ak:[I

    iput v6, p0, Lcom/android/launcher3/Workspace;->al:I

    iput v6, p0, Lcom/android/launcher3/Workspace;->am:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->ar:F

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->as:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->az:[I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aB:[F

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aC:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aD:Landroid/graphics/Matrix;

    sget-object v0, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->aI:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->a:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->b:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->aJ:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->aK:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->aL:Z

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aO:Landroid/graphics/Rect;

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aP:[I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aQ:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->aW:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aZ:Landroid/graphics/Point;

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bb:Lcom/android/launcher3/a;

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bc:Lcom/android/launcher3/a;

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->bd:Lcom/android/launcher3/be;

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->be:Lcom/android/launcher3/FolderIcon;

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->bf:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->bg:Z

    iput v1, p0, Lcom/android/launcher3/Workspace;->bl:I

    iput v6, p0, Lcom/android/launcher3/Workspace;->bm:I

    iput v6, p0, Lcom/android/launcher3/Workspace;->bn:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bp:Ljava/util/ArrayList;

    iput v6, p0, Lcom/android/launcher3/Workspace;->bz:I

    new-instance v0, Lcom/android/launcher3/fw;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fw;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bE:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/fX;

    invoke-direct {v0}, Lcom/android/launcher3/fX;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bG:Lcom/android/launcher3/fX;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->bF:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->F:Z

    invoke-static {p1}, Lcom/android/launcher3/bs;->a(Landroid/content/Context;)Lcom/android/launcher3/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aM:Lcom/android/launcher3/bs;

    new-instance v0, Lcom/android/launcher3/aG;

    invoke-direct {v0, p1}, Lcom/android/launcher3/aG;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bh:Lcom/android/launcher3/aG;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->A()V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/al;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/al;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->aT:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->G:Z

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aa:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    sget-object v4, Lnl/ndsc/kitkatlauncher/A;->k:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const v5, 0x7f0e000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher3/Workspace;->aF:F

    invoke-virtual {v0}, Lcom/android/launcher3/al;->b()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->aG:F

    const v0, 0x7f0e001f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->ba:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->ad:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->ac:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    iget v0, p0, Lcom/android/launcher3/Workspace;->ad:I

    iput v0, p0, Lcom/android/launcher3/Workspace;->i:I

    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(I)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->e()Lcom/android/launcher3/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ax:Lcom/android/launcher3/bw;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->aG:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->b(F)V

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->S:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/android/launcher3/fV;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fV;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->c:Lcom/android/launcher3/fV;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aZ:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const v0, 0x3f0ccccd    # 0.55f

    iget v1, v3, Lcom/android/launcher3/al;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/Workspace;->bi:F

    const/high16 v0, 0x43fa0000    # 500.0f

    iget v1, p0, Lcom/android/launcher3/Workspace;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->d:I

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->ay()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(JI)J
    .locals 3

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "11683562 - insertNewWorkspaceScreen(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->q:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    return-wide p1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aM:Lcom/android/launcher3/bs;

    invoke-virtual {v2, v1, p2, v0, v0}, Lcom/android/launcher3/bs;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private static a(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/graphics/Rect;)V

    return-object v5
.end method

.method static a(Lcom/android/launcher3/Launcher;I)Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v1, v0, Lcom/android/launcher3/al;->d:F

    float-to-int v1, v1

    iget v4, v0, Lcom/android/launcher3/al;->c:F

    float-to-int v4, v4

    if-nez p1, :cond_1

    sget-object v5, Lcom/android/launcher3/Workspace;->an:Landroid/graphics/Rect;

    if-nez v5, :cond_0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/launcher3/Workspace;->an:Landroid/graphics/Rect;

    div-int v1, v3, v1

    div-int/2addr v0, v4

    invoke-virtual {v2, v1, v0, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    sget-object v0, Lcom/android/launcher3/Workspace;->an:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_1
    if-ne p1, v7, :cond_3

    sget-object v5, Lcom/android/launcher3/Workspace;->ao:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    invoke-virtual {v0, v7}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sput-object v3, Lcom/android/launcher3/Workspace;->ao:Landroid/graphics/Rect;

    div-int v1, v2, v1

    div-int/2addr v0, v4

    invoke-virtual {v3, v1, v0, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    sget-object v0, Lcom/android/launcher3/Workspace;->ao:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FFZ)Lcom/android/launcher3/CellLayout;
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v5

    const/4 v3, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-lt v4, v5, :cond_1

    move-object v0, v3

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, -0x12d

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v6, 0x0

    aput p1, v1, v6

    const/4 v6, 0x1

    aput p2, v1, v6

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->aD:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->aD:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;[F)V

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-lez v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->aC:[F

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x0

    aget v8, v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    aget v8, v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x0

    aput p1, v1, v7

    const/4 v7, 0x1

    aput p2, v1, v7

    const/4 v7, 0x0

    aget v1, v1, v7

    const/4 v7, 0x0

    aget v7, v6, v7

    sub-float/2addr v1, v7

    const/4 v7, 0x1

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v6, v6, v8

    sub-float v6, v7, v6

    mul-float/2addr v1, v1

    mul-float/2addr v6, v6

    add-float/2addr v1, v6

    cmpg-float v6, v1, v2

    if-gez v6, :cond_3

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private a(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->S:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getBackgroundAlpha()F

    move-result v0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/fN;

    invoke-direct {v1, p0}, Lcom/android/launcher3/fN;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private a(IILjava/lang/Runnable;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - fadeAndRemoveEmptyScreen()"

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "alpha"

    new-array v1, v5, [F

    aput v3, v1, v6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v0, "backgroundAlpha"

    new-array v2, v5, [F

    aput v3, v2, v6

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v3, -0xc9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    new-instance v3, Lcom/android/launcher3/fK;

    invoke-direct {v3, p0, v0, p4}, Lcom/android/launcher3/fK;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Z)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->ai:Ljava/lang/Runnable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/android/launcher3/fL;

    invoke-direct {v1, p0, p3}, Lcom/android/launcher3/fL;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(Landroid/view/View;JJIIIIZZ)V
    .locals 6

    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p4, p5}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping child, screenId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, -0xc9

    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderIcon;->a(Z)V

    :cond_3
    if-eqz p11, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    long-to-int v2, p4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->a(I)I

    move-result p6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    long-to-int v2, p4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->b(I)I

    move-result p7

    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v2, :cond_c

    :cond_4
    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v4, p6, p7, p8, p9}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_2
    if-gez p8, :cond_5

    if-gez p9, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/bD;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/bD;)I

    move-result v3

    instance-of v1, p1, Lcom/android/launcher3/Folder;

    if-eqz v1, :cond_d

    const/4 v5, 0x0

    :goto_3
    if-eqz p10, :cond_e

    const/4 v2, 0x0

    :goto_4
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to add to item at ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to CellLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    instance-of v0, p1, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->q:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_7
    instance-of v0, p1, Lcom/android/launcher3/aF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    check-cast p1, Lcom/android/launcher3/aF;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aF;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->a(II)I

    move-object v0, v1

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La/a/a/c/d;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->a(Z)V

    :cond_a
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/by;

    invoke-direct {v1}, Lcom/android/launcher3/by;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput p6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput p7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iput p8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput p9, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    move-object v4, v1

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_e
    const/4 v2, -0x1

    goto/16 :goto_4
.end method

.method private a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aO:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, v2, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FolderIcon;->a(Z)V

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/FolderIcon;->a(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    move v0, v2

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/view/View;[F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget v0, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    aget v0, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method private a(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    if-lt v0, v4, :cond_0

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_1

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    instance-of v6, v0, Lcom/android/launcher3/ey;

    if-eqz v6, :cond_3

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v6, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v0, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    instance-of v0, v1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v6

    move v1, v2

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_3

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ey;

    if-eqz v0, :cond_8

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v7, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v0, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_8

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private a(Lcom/android/launcher3/Hotseat;[F)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aget v1, p2, v4

    float-to-int v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aget v1, p2, v3

    float-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aA:[I

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;[IZ)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aA:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DragLayer;->c(Landroid/view/View;[I)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p2, v4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p2, v3

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->aW:F

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->aV:I

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/be;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->bd:Lcom/android/launcher3/be;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->aX:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->ak:[I

    return-void
.end method

.method private a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/launcher3/bD;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/bD;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/bD;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lcom/android/launcher3/ey;

    check-cast p3, Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ax:Lcom/android/launcher3/bw;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/ey;->b(Lcom/android/launcher3/bw;)V

    iget-object v0, v0, Lcom/android/launcher3/d;->q:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ax:Lcom/android/launcher3/bw;

    invoke-virtual {p3, p2, v0}, Lcom/android/launcher3/BubbleTextView;->a(Lcom/android/launcher3/ey;Lcom/android/launcher3/bw;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/HashSet;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->Z()V

    return-void

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/android/launcher3/fH;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/fH;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/cO;->a(Ljava/util/Collection;Lcom/android/launcher3/df;)Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v8}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_4
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/bk;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/bk;->b(Lcom/android/launcher3/ey;)V

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    instance-of v2, v0, Lcom/android/launcher3/aF;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    check-cast v0, Lcom/android/launcher3/aF;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/aF;)V

    goto :goto_2
.end method

.method private a(ZIZ)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/fU;ZII)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aC()V

    new-instance v1, Lcom/android/launcher3/fP;

    invoke-direct {v1, p0}, Lcom/android/launcher3/fP;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private a(IILandroid/graphics/Rect;)Z
    .locals 7

    const v6, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aput p1, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aA:[I

    invoke-virtual {v0, p0, v3, v1}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;[IZ)F

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/al;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget v4, v3, Lcom/android/launcher3/al;->m:I

    iget v5, v3, Lcom/android/launcher3/al;->C:I

    sub-int/2addr v4, v5

    iget v3, v3, Lcom/android/launcher3/al;->n:I

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->aA:[I

    aget v4, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v4, v3, Lcom/android/launcher3/al;->n:I

    iget v5, v3, Lcom/android/launcher3/al;->C:I

    sub-int/2addr v4, v5

    iget v3, v3, Lcom/android/launcher3/al;->m:I

    invoke-direct {v0, v2, v4, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/Workspace;->bi:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    aget v0, p3, v2

    aget v3, p3, v1

    invoke-virtual {p2, v0, v3}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    if-ne v4, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    if-ne v3, v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-eqz p5, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->bf:Z

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/ey;

    iget v0, p1, Lcom/android/launcher3/bD;->g:I

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/launcher3/bD;->g:I

    if-eq v0, v1, :cond_5

    move v0, v2

    :goto_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/Workspace;->bi:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    aget v0, p3, v2

    aget v1, p3, v3

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    if-ne v4, v5, :cond_1

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    if-eq v4, v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderIcon;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private a(IIIILcom/android/launcher3/aA;[F)[F
    .locals 4

    if-nez p6, :cond_0

    const/4 v0, 0x2

    new-array p6, v0, [F

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p2

    sub-int/2addr v0, p3

    sub-int/2addr v1, p4

    const/4 v2, 0x0

    invoke-virtual {p5}, Lcom/android/launcher3/aA;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p6, v2

    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/android/launcher3/aA;->d()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p6, v0

    return-object p6
.end method

.method private static a(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6

    move-object v0, p4

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->c(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/Workspace;IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 1

    invoke-static/range {p1 .. p6}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private aA()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private aB()V
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aJ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v8

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aQ:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->b([I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aQ:[I

    aget v1, v0, v6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aQ:[I

    aget v0, v0, v5

    if-ne v1, v0, :cond_4

    add-int/lit8 v2, v8, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v9, -0x12d

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_2

    :cond_0
    return-void

    :cond_1
    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/launcher3/Workspace;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eq v1, v0, :cond_3

    if-gt v3, v7, :cond_3

    if-gt v7, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/launcher3/CellLayout;->a(Z)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v2, v0

    move v3, v1

    goto :goto_0
.end method

.method private aC()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->d(Z)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v3, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-eq v2, v3, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v1, -0x12d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->ax()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private aD()V
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->aI:Z

    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->d(Z)V

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aT:Z

    if-nez v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v3, -0x12d

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->b(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->b(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private aE()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bd:Lcom/android/launcher3/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bd:Lcom/android/launcher3/be;

    invoke-virtual {v0}, Lcom/android/launcher3/be;->b()V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->bd:Lcom/android/launcher3/be;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bb:Lcom/android/launcher3/a;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bb:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    return-void
.end method

.method private aF()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->be:Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->be:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->be:Lcom/android/launcher3/FolderIcon;

    :cond_0
    return-void
.end method

.method private aG()Lcom/android/launcher3/CellLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method private aH()Ljava/util/ArrayList;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private aI()Ljava/util/ArrayList;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static synthetic aJ()[I
    .locals 3

    sget-object v0, Lcom/android/launcher3/Workspace;->bH:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnl/ndsc/kitkatlauncher/a/b;->values()[Lnl/ndsc/kitkatlauncher/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->a:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->c:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->b:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->d:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/android/launcher3/Workspace;->bH:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic aw()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Workspace;->af:Z

    return v0
.end method

.method private ax()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->Z:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private ay()V
    .locals 5

    new-instance v0, Lcom/android/launcher3/fM;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fM;-><init>(Lcom/android/launcher3/Workspace;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/fM;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private az()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->P:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/Workspace;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ab:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic b(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->bm:I

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bB:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/Workspace;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aa:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private c(II)V
    .locals 5

    const/4 v3, 0x1

    if-le p1, p2, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    :goto_1
    if-le v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_0
.end method

.method private c(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->s()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->u()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->t()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->e(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aE()V

    invoke-direct {p0, v1, v1}, Lcom/android/launcher3/Workspace;->d(II)V

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->bn:I

    return-void
.end method

.method private d(J)J
    .locals 3

    const-wide/16 v0, -0xc9

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private d(II)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->al:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->am:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->al:I

    iput p2, p0, Lcom/android/launcher3/Workspace;->am:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->s(I)V

    :cond_1
    return-void
.end method

.method private d(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->d(Z)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->d(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    return-void
.end method

.method private d(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v3, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v3, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-nez p1, :cond_0

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->a:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->I()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->aJ:Z

    if-eq v0, v2, :cond_1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->aJ:Z

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aJ:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aB()V

    :cond_1
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->a(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/android/launcher3/Workspace;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aU:Z

    return v0
.end method

.method static synthetic e(Lcom/android/launcher3/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->aV:I

    return v0
.end method

.method private e(Z)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bc:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    :cond_0
    iput v1, p0, Lcom/android/launcher3/Workspace;->bm:I

    iput v1, p0, Lcom/android/launcher3/Workspace;->bn:I

    return-void
.end method

.method static synthetic f(Lcom/android/launcher3/Workspace;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->aW:F

    return v0
.end method

.method private static f(Lcom/android/launcher3/aH;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/cF;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/eq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bd:Lcom/android/launcher3/be;

    return-object v0
.end method

.method static synthetic h(Lcom/android/launcher3/Workspace;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aB:[F

    return-object v0
.end method

.method static synthetic i(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/android/launcher3/Workspace;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ak:[I

    return-object v0
.end method

.method static synthetic k(Lcom/android/launcher3/Workspace;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic l(Lcom/android/launcher3/Workspace;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic m(Lcom/android/launcher3/Workspace;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/android/launcher3/Workspace;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ai:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic o(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aD()V

    return-void
.end method

.method static synthetic p(Lcom/android/launcher3/Workspace;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bv:[F

    return-object v0
.end method

.method static synthetic q(Lcom/android/launcher3/Workspace;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bx:[F

    return-object v0
.end method


# virtual methods
.method protected final H()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/launcher3/ez;->H()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aq:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->aq:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    invoke-interface {v0}, Lcom/android/launcher3/cr;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->W:J

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->c(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aq:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->aq:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->e()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->c(Z)V

    goto :goto_0
.end method

.method protected final J()V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/launcher3/ez;->J()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Z)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->aT:Z

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher3/Workspace;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher3/Workspace;->i:I

    iget v2, p0, Lcom/android/launcher3/Workspace;->k:I

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/Workspace;->c(II)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher3/Workspace;->i:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher3/Workspace;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/Workspace;->c(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->b(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected final X()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/ez;->X()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->az()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method protected final Y()V
    .locals 6

    invoke-super {p0}, Lcom/android/launcher3/ez;->Y()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aA()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->m()Lcom/android/launcher3/cO;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->ax()V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final Z()V
    .locals 12

    const-wide/16 v10, -0xc9

    const/4 v9, 0x1

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - stripEmptyScreens()"

    invoke-static {v0, v1, v9}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v9, p0, Lcom/android/launcher3/Workspace;->aK:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->m()Lcom/android/launcher3/cO;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_4
    if-ltz v2, :cond_0

    sub-int v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->i(I)V

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-string v1, "Launcher.Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "11683562 -   removing id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v9}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-le v0, v5, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_8

    add-int/lit8 v0, v2, 0x1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    move v2, v0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ai:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public final a(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final a(J)J
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    const-wide/16 v1, -0xc9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/android/launcher3/CellLayout;)J
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_0
.end method

.method final a(Lcom/android/launcher3/fU;Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/fU;ZII)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/android/launcher3/fU;ZII)Landroid/animation/Animator;
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/Workspace;->bz:I

    if-eq v3, v2, :cond_1

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->bv:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->bw:[F

    new-array v3, v2, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->bx:[F

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->by:[F

    :cond_1
    if-eqz p2, :cond_c

    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object v3, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v2, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne v5, v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    sget-object v4, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    sget-object v4, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    if-ne v5, v4, :cond_e

    const/4 v4, 0x1

    :goto_3
    sget-object v6, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    if-ne v5, v6, :cond_f

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->ap()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v7, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne v6, v7, :cond_10

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    sget-object v6, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_11

    const/4 v6, 0x1

    :goto_6
    sget-object v7, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    move-object/from16 v0, p1

    if-ne v0, v7, :cond_12

    const/4 v7, 0x1

    :goto_7
    sget-object v8, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    move-object/from16 v0, p1

    if-ne v0, v8, :cond_13

    const/4 v8, 0x1

    :goto_8
    sget-object v9, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    move-object/from16 v0, p1

    if-ne v0, v9, :cond_14

    const/4 v9, 0x1

    move/from16 v20, v9

    :goto_9
    if-nez v7, :cond_2

    if-eqz v20, :cond_15

    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v19, v9

    :goto_a
    if-nez v20, :cond_3

    if-eqz v8, :cond_16

    :cond_3
    const/4 v9, 0x0

    move/from16 v18, v9

    :goto_b
    if-eqz v20, :cond_17

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v17, v9

    :goto_c
    if-nez v6, :cond_18

    const/4 v9, 0x0

    move/from16 v16, v9

    :goto_d
    if-eqz v20, :cond_19

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/al;->a()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->w()I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/Workspace;->aG:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->L()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    sub-int v12, v10, v11

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->N:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v10, v9

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x2

    neg-int v10, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->N:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    :goto_e
    int-to-float v0, v9

    move/from16 v21, v0

    if-eqz v2, :cond_1a

    if-eqz v8, :cond_1a

    const/4 v9, 0x1

    move v15, v9

    :goto_f
    if-eqz v4, :cond_1b

    if-eqz v6, :cond_1b

    const/4 v4, 0x1

    move v14, v4

    :goto_10
    if-eqz v2, :cond_1c

    if-eqz v20, :cond_1c

    const/4 v2, 0x1

    move v13, v2

    :goto_11
    if-eqz v5, :cond_1d

    if-eqz v6, :cond_1d

    const/4 v2, 0x1

    move v4, v2

    :goto_12
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/Workspace;->bu:F

    if-eqz v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->Q()V

    :cond_4
    :goto_13
    sget-object v2, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_6

    if-eqz v7, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->aF:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/Workspace;->bu:F

    :cond_5
    :goto_14
    if-eqz v15, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/Workspace;->d(Z)V

    :cond_6
    if-eqz v15, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v12, v2

    :goto_15
    const/4 v2, -0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->T()I

    move-result p4

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->bG:Lcom/android/launcher3/fX;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/launcher3/Workspace;->a(IILandroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    move v5, v2

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-lt v5, v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->z()Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->j()Landroid/view/ViewGroup;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, La/a/a/c/d;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    move v5, v2

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v11

    if-eqz p2, :cond_37

    int-to-long v14, v12

    invoke-virtual {v3, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/dI;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/Workspace;->bu:F

    invoke-virtual {v2, v6}, Lcom/android/launcher3/dI;->b(F)Lcom/android/launcher3/dI;

    move-result-object v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/Workspace;->bu:F

    invoke-virtual {v6, v12}, Lcom/android/launcher3/dI;->c(F)Lcom/android/launcher3/dI;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/launcher3/dI;->a(F)Lcom/android/launcher3/dI;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->bG:Lcom/android/launcher3/fX;

    invoke-virtual {v6, v12}, Lcom/android/launcher3/dI;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v2, 0x0

    move v6, v2

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-lt v6, v2, :cond_2f

    if-eqz v11, :cond_35

    if-eqz v5, :cond_35

    new-instance v2, Lcom/android/launcher3/dI;

    invoke-direct {v2, v11}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dI;->d(F)Lcom/android/launcher3/dI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dI;->a()Lcom/android/launcher3/dI;

    move-result-object v2

    new-instance v6, Lcom/android/launcher3/fQ;

    invoke-direct {v6, v11}, Lcom/android/launcher3/fQ;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_19
    new-instance v6, Lcom/android/launcher3/dI;

    invoke-direct {v6, v10}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/launcher3/dI;->d(F)Lcom/android/launcher3/dI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/dI;->a()Lcom/android/launcher3/dI;

    move-result-object v6

    new-instance v11, Lcom/android/launcher3/fQ;

    invoke-direct {v11, v10}, Lcom/android/launcher3/fQ;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v10, Lcom/android/launcher3/dI;

    invoke-direct {v10, v8}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/launcher3/dI;->d(F)Lcom/android/launcher3/dI;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/dI;->a()Lcom/android/launcher3/dI;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/Workspace;->bF:Z

    if-nez v11, :cond_8

    new-instance v11, Lcom/android/launcher3/fQ;

    invoke-direct {v11, v8}, Lcom/android/launcher3/fQ;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    new-instance v8, Lcom/android/launcher3/dI;

    invoke-direct {v8, v9}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/launcher3/dI;->d(F)Lcom/android/launcher3/dI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/dI;->a()Lcom/android/launcher3/dI;

    move-result-object v8

    new-instance v11, Lcom/android/launcher3/fQ;

    invoke-direct {v11, v9}, Lcom/android/launcher3/fQ;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v13, :cond_36

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v4, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v4, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v6, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_9
    :goto_1a
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/Workspace;->bF:Z

    if-nez v4, :cond_a

    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_b
    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->c(Z)V

    if-eqz v7, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/Workspace;->a(FZ)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v6, 0x4

    goto/16 :goto_5

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v9, 0x0

    move/from16 v20, v9

    goto/16 :goto_9

    :cond_15
    const/4 v9, 0x0

    move/from16 v19, v9

    goto/16 :goto_a

    :cond_16
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v18, v9

    goto/16 :goto_b

    :cond_17
    const/4 v9, 0x0

    move/from16 v17, v9

    goto/16 :goto_c

    :cond_18
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v16, v9

    goto/16 :goto_d

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_e

    :cond_1a
    const/4 v9, 0x0

    move v15, v9

    goto/16 :goto_f

    :cond_1b
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_10

    :cond_1c
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_11

    :cond_1d
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_12

    :cond_1e
    if-eqz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->P()V

    goto/16 :goto_13

    :cond_1f
    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->aG:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/Workspace;->bu:F

    goto/16 :goto_14

    :cond_20
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->aG:F

    const v5, 0x3e99999a    # 0.3f

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/Workspace;->bu:F

    goto/16 :goto_14

    :cond_21
    if-nez v13, :cond_22

    if-eqz v4, :cond_23

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v12, v2

    goto/16 :goto_15

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0e0010

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v12, v2

    goto/16 :goto_15

    :cond_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    move/from16 v0, p4

    if-ne v5, v0, :cond_27

    const/4 v9, 0x1

    :goto_1c
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/ex;->getAlpha()F

    move-result v11

    if-eqz v8, :cond_28

    const/4 v10, 0x0

    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->aI:Z

    move/from16 v22, v0

    if-nez v22, :cond_26

    if-nez v15, :cond_25

    if-eqz v14, :cond_26

    :cond_25
    if-eqz v14, :cond_2c

    if-eqz v9, :cond_2c

    const/4 v9, 0x0

    :goto_1e
    invoke-virtual {v2, v9}, Lcom/android/launcher3/CellLayout;->b(F)V

    move v11, v9

    :cond_26
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->bw:[F

    aput v11, v9, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->by:[F

    aput v10, v9, v5

    if-eqz p2, :cond_2d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->bv:[F

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result v2

    aput v2, v9, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->bx:[F

    aput v19, v2, v5

    :goto_1f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_16

    :cond_27
    const/4 v9, 0x0

    goto :goto_1c

    :cond_28
    if-eqz v6, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher3/Workspace;->aT:Z

    if-eqz v10, :cond_2b

    move/from16 v0, p4

    if-eq v5, v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v10

    if-ge v5, v10, :cond_2a

    :cond_29
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_2a
    const/4 v10, 0x0

    goto :goto_1d

    :cond_2b
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_2c
    if-nez v9, :cond_3e

    const/4 v10, 0x0

    move v9, v10

    goto :goto_1e

    :cond_2d
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    invoke-virtual {v2, v10}, Lcom/android/launcher3/CellLayout;->b(F)V

    goto :goto_1f

    :cond_2e
    const/4 v2, 0x1

    move v5, v2

    goto/16 :goto_17

    :cond_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/ex;->getAlpha()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->bw:[F

    aget v14, v14, v6

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_31

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->by:[F

    aget v14, v14, v6

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->bx:[F

    aget v12, v12, v6

    invoke-virtual {v2, v12}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->by:[F

    aget v12, v12, v6

    invoke-virtual {v2, v12}, Lcom/android/launcher3/CellLayout;->b(F)V

    :cond_30
    :goto_20
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_18

    :cond_31
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->bw:[F

    aget v14, v14, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->by:[F

    aget v15, v15, v6

    cmpl-float v14, v14, v15

    if-nez v14, :cond_32

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->by:[F

    aget v14, v14, v6

    cmpl-float v12, v12, v14

    if-eqz v12, :cond_33

    :cond_32
    new-instance v12, Lcom/android/launcher3/dI;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/android/launcher3/dI;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->by:[F

    aget v14, v14, v6

    invoke-virtual {v12, v14}, Lcom/android/launcher3/dI;->d(F)Lcom/android/launcher3/dI;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->bG:Lcom/android/launcher3/fX;

    invoke-virtual {v14, v15}, Lcom/android/launcher3/dI;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_33
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->bv:[F

    aget v12, v12, v6

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-nez v12, :cond_34

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->bx:[F

    aget v12, v12, v6

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-eqz v12, :cond_30

    :cond_34
    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v12}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->bG:Lcom/android/launcher3/fX;

    invoke-virtual {v12, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/android/launcher3/fx;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v6}, Lcom/android/launcher3/fx;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v12, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_20

    :cond_35
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    goto/16 :goto_19

    :cond_36
    if-eqz v4, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v4, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_1a

    :cond_37
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v9}, Lcom/android/launcher3/fQ;->a(Landroid/view/View;)V

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v10}, Lcom/android/launcher3/fQ;->a(Landroid/view/View;)V

    if-eqz v11, :cond_38

    if-eqz v5, :cond_38

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v11}, Lcom/android/launcher3/fQ;->a(Landroid/view/View;)V

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->bF:Z

    if-nez v2, :cond_39

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v8}, Lcom/android/launcher3/fQ;->a(Landroid/view/View;)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v4, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne v2, v4, :cond_3b

    const/4 v2, 0x0

    move v4, v2

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v5, -0x12d

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->bu:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->bu:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setTranslationY(F)V

    goto/16 :goto_1b

    :cond_3b
    const/4 v2, 0x4

    move v4, v2

    goto :goto_21

    :cond_3c
    if-eqz v20, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/Workspace;->a(FZ)V

    goto/16 :goto_0

    :cond_3d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/Workspace;->a(FZ)V

    goto/16 :goto_0

    :cond_3e
    move v9, v11

    goto/16 :goto_1e

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final a(Ljava/lang/Object;)Lcom/android/launcher3/Folder;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/ex;

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/launcher3/Folder;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->e()Lcom/android/launcher3/bk;

    move-result-object v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->e()Lcom/android/launcher3/bk;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/bk;->a:Z

    if-nez v5, :cond_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final a(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->c(F)V

    return-void
.end method

.method public final a(IZ)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    return-void
.end method

.method final a(Landroid/view/View;JJIIII)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method final a(Landroid/view/View;JJIIIIZ)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZZ)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->bC:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/fF;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/fF;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bB:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bB:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    move v1, v2

    :goto_1
    if-eqz p4, :cond_8

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->bD:Z

    if-eqz v0, :cond_8

    :cond_1
    if-eq p1, p0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v4, v4, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/aF;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/aF;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/aF;)V

    :cond_3
    invoke-virtual {p0, v2, v6, v3, v2}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    :cond_4
    :goto_2
    iget-boolean v0, p2, Lcom/android/launcher3/aH;->j:Z

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->bD:Z

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iput-object v6, p0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/launcher3/cB;->p()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid state: cellLayout == null in Workspace#onDropCompleted. Please file a bug. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-wide v4, v0, Lcom/android/launcher3/L;->f:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/az;)V
    .locals 12

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v2, v0, v11}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->aP:[I

    invoke-virtual {v2, p1, v5}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;[I)F

    move-result v9

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aP:[I

    aget v2, v2, v6

    int-to-float v2, v2

    int-to-float v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    sub-float/2addr v5, v7

    div-float/2addr v5, v8

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->aP:[I

    aget v5, v5, v11

    int-to-float v5, v5

    int-to-float v7, v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    sub-float v0, v7, v0

    div-float/2addr v0, v8

    sub-float v0, v5, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v5

    instance-of v7, p1, Lcom/android/launcher3/BubbleTextView;

    if-nez v7, :cond_0

    instance-of v7, p1, Lcom/android/launcher3/PagedViewIcon;

    if-eqz v7, :cond_4

    :cond_0
    iget v3, v5, Lcom/android/launcher3/al;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v7, v4, v3

    add-int v10, v5, v3

    add-int/2addr v0, v5

    new-instance v3, Landroid/graphics/Point;

    const/4 v8, -0x1

    invoke-direct {v3, v8, v11}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    move v3, v0

    :goto_1
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->a()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/bD;

    if-nez v0, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    instance-of v4, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v4, :cond_7

    iget v4, v5, Lcom/android/launcher3/al;->w:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-direct {v8, v6, v5, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v3

    move v3, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/ap;->a(Landroid/graphics/Bitmap;IILcom/android/launcher3/az;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)Lcom/android/launcher3/aA;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/launcher3/az;->j()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/aA;->a(F)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ex;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ae:Lcom/android/launcher3/ex;

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_7
    move-object v8, v3

    move-object v7, v3

    move v3, v0

    goto/16 :goto_1
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/cr;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x12d

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/Workspace;->c(J)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected custom content screen to exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v3

    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v1, v3}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    iput-boolean v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    iput-boolean v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->i:Z

    instance-of v1, p1, Lcom/android/launcher3/bz;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/bz;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->N:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/launcher3/bz;->a_(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    iput-object p3, p0, Lcom/android/launcher3/Workspace;->as:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    return-void
.end method

.method final a(Lcom/android/launcher3/L;)V
    .locals 3

    iget-object v1, p1, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p0}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Lcom/android/launcher3/az;)V

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/Launcher;F)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/Workspace;->bA:F

    return-void
.end method

.method public final a(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aC()V

    return-void
.end method

.method public final a(Lcom/android/launcher3/aH;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method final a(Lcom/android/launcher3/ap;)V
    .locals 2

    new-instance v0, Lcom/android/launcher3/eC;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/eC;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->aE:Lcom/android/launcher3/eC;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Z)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/az;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->b:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Z)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->E()V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->u()V

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->a()V

    invoke-static {}, Lcom/android/launcher3/UninstallShortcutReceiver;->a()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/fI;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fI;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->a(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/aA;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 28

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v7}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    new-array v6, v4, [I

    const/4 v4, 0x2

    new-array v8, v4, [F

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/ep;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher3/bD;->m:I

    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x1

    aget v5, v5, v12

    move-object/from16 v0, p2

    invoke-static {v0, v11, v5, v9, v10}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v5, 0x0

    iget v10, v9, Landroid/graphics/Rect;->left:I

    aput v10, v6, v5

    const/4 v5, 0x1

    iget v10, v9, Landroid/graphics/Rect;->top:I

    aput v10, v6, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->aq()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6, v10}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;[IZ)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->ar()V

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v4, v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v4, v11

    :goto_1
    const/4 v11, 0x0

    aget v12, v6, v11

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v6, v11

    const/4 v11, 0x1

    aget v12, v6, v11

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    sub-float v9, v13, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v9, v13

    sub-float v9, v12, v9

    float-to-int v9, v9

    aput v9, v6, v11

    const/4 v9, 0x0

    mul-float/2addr v5, v10

    aput v5, v8, v9

    const/4 v5, 0x1

    mul-float/2addr v4, v10

    aput v4, v8, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v12, v4, -0xc8

    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    const-string v4, "Launcher.Workspace"

    const-string v5, "6557954 Animate widget drop, final view is appWidgetHostView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    if-eqz p7, :cond_5

    :cond_1
    if-eqz p6, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher3/bD;->m:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v9, v0, v10}, Lcom/android/launcher3/Workspace;->a(IILcom/android/launcher3/bD;Z)[I

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v9, 0x0

    aget v9, v4, v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x1

    aget v10, v4, v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    aget v11, v4, v11

    const/4 v13, 0x1

    aget v13, v4, v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->measure(II)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    aget v14, v4, v14

    const/4 v15, 0x1

    aget v4, v4, v15

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v10, v14, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/launcher3/aA;->a(Landroid/graphics/Bitmap;)V

    int-to-float v4, v12

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/aA;->a(I)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v13

    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v4

    const/4 v7, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3dcccccd    # 0.1f

    const/4 v10, 0x0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;[IFFFILjava/lang/Runnable;I)V

    :goto_3
    return-void

    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/bD;->g:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    if-eqz p7, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    aget v9, v8, v9

    const/4 v10, 0x1

    aget v10, v8, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v8, v5

    aput v9, v8, v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_7

    const/16 v25, 0x2

    :goto_4
    new-instance v24, Lcom/android/launcher3/fE;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/fE;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    iget v15, v7, Landroid/graphics/Rect;->left:I

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    const/4 v4, 0x0

    aget v17, v6, v4

    const/4 v4, 0x1

    aget v18, v6, v4

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v22, v8, v4

    const/4 v4, 0x1

    aget v23, v8, v4

    move-object/from16 v14, p3

    move/from16 v26, v12

    move-object/from16 v27, p0

    invoke-virtual/range {v13 .. v27}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_3

    :cond_7
    const/16 v25, 0x0

    goto :goto_4
.end method

.method public final a(Lcom/android/launcher3/eo;Landroid/graphics/Bitmap;Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iget v0, p1, Lcom/android/launcher3/eo;->l:I

    iget v1, p1, Lcom/android/launcher3/eo;->m:I

    invoke-virtual {p0, v0, v1, p1, v9}, Lcom/android/launcher3/Workspace;->a(IILcom/android/launcher3/bD;Z)[I

    move-result-object v0

    aget v4, v0, v9

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    add-int/lit8 v6, v4, -0x2

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v0, -0x2

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, p2, v5, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aM:Lcom/android/launcher3/bs;

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/bs;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    return-void
.end method

.method final a(Lcom/android/launcher3/ey;Lcom/android/launcher3/CellLayout;JJZII)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    const v1, 0x7f040003

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/launcher3/Launcher;->a(ILandroid/view/ViewGroup;Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a([IIIII)Z

    const/4 v0, 0x0

    aget v8, v1, v0

    const/4 v0, 0x1

    aget v9, v1, v0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, v6

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v12, p7

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZ)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    aget v6, v1, v2

    const/4 v2, 0x1

    aget v7, v1, v2

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/Workspace;->a(ZIZ)V

    return-void
.end method

.method public final a(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(ZLjava/lang/Runnable;IZ)V
    .locals 10

    const/16 v9, 0x190

    const/16 v8, 0x96

    const-wide/16 v6, -0xc9

    const/4 v5, 0x1

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - removeExtraEmptyScreen()"

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez p3, :cond_1

    new-instance v0, Lcom/android/launcher3/fJ;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/launcher3/fJ;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    int-to-long v1, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - convertFinalScreenToEmptyScreenIfNecessary()"

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/launcher3/Workspace;->b(II)V

    invoke-direct {p0, v9, v8, p2, p4}, Lcom/android/launcher3/Workspace;->a(IILjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x12d

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->f()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->m()Lcom/android/launcher3/cO;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "11683562 -   extra empty screen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0, v8, p2, p4}, Lcom/android/launcher3/Workspace;->a(IILjava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->Z()V

    :cond_6
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0
.end method

.method protected final a([I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    const/4 v0, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method public final a(III)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->aL:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v3

    if-nez p3, :cond_4

    const/4 v0, -0x1

    :goto_3
    add-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/CellLayout;)V

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->a(I)J

    move-result-wide v3

    const-wide/16 v5, -0x12d

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method final a(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/aA;Ljava/lang/Runnable;)Z
    .locals 14

    iget v1, p0, Lcom/android/launcher3/Workspace;->bi:F

    cmpl-float v1, p6, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v1, v1, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v2, v2, Lcom/android/launcher3/L;->b:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v2, v2, Lcom/android/launcher3/L;->c:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p4

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->bf:Z

    if-nez v1, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->bf:Z

    if-nez p5, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-wide v5, v1, Lcom/android/launcher3/L;->f:J

    :goto_2
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ey;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/ey;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/ey;

    if-nez p7, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v1, v1, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v2, v2, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_5
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    aget v7, p5, v2

    const/4 v2, 0x1

    aget v8, p5, v2

    move-object/from16 v2, p4

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/FolderIcon;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher3/ey;->j:I

    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher3/ey;->k:I

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/launcher3/ey;->j:I

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/launcher3/ey;->k:I

    if-eqz p8, :cond_7

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v9

    move-object/from16 v5, p8

    move-object v6, v12

    move v7, v13

    move-object/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;Landroid/view/View;Lcom/android/launcher3/ey;Lcom/android/launcher3/aA;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v5

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v10}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;)V

    invoke-virtual {v1, v9}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/ey;)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method final a(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/aH;Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/Workspace;->bi:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    aget v0, p2, v1

    aget v3, p2, v2

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->bg:Z

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->bg:Z

    instance-of v3, v0, Lcom/android/launcher3/FolderIcon;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    iget-object v3, p4, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderIcon;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p4}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/aH;)V

    if-nez p5, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v0, v0, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v1, v1, Lcom/android/launcher3/L;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/aH;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_a

    if-nez v18, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->aI:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->bA:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v3, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/aH;->a:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/aH;->b:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/aH;->c:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/aH;->d:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/aA;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Hotseat;[F)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v2, v3, Lcom/android/launcher3/L;->d:I

    iget v12, v3, Lcom/android/launcher3/L;->e:I

    move/from16 v17, v2

    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/eq;

    if-eqz v2, :cond_d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/eq;

    iget v4, v2, Lcom/android/launcher3/eq;->n:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/eq;

    iget v5, v2, Lcom/android/launcher3/eq;->o:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v6}, Lcom/android/launcher3/CellLayout;->a(FF[I)F

    move-result v10

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/bD;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v8, v18

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;[F)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/bD;

    iget v3, v2, Lcom/android/launcher3/bD;->l:I

    iget v12, v2, Lcom/android/launcher3/bD;->m:I

    move/from16 v17, v3

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/bD;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1, v3, v10}, Lcom/android/launcher3/Workspace;->a(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x2

    new-array v15, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v8, v2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/16 v16, 0x4

    move-object/from16 v6, v18

    move v9, v4

    move v10, v5

    move/from16 v11, v17

    invoke-virtual/range {v6 .. v16}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Hotseat;->a(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Hotseat;->c(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->a(Z)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v2

    const-wide/16 v4, -0xc9

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    const-string v2, "Launcher.Workspace"

    const-string v3, "11683562 - commitExtraEmptyScreen()"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, -0xc9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->c(J)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v5, -0xc9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    const-wide/16 v5, -0xc9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider;->c()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->h(I)Lcom/android/launcher3/dW;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/PageIndicator;->a(ILcom/android/launcher3/dW;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->m()Lcom/android/launcher3/cO;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_d
    move v5, v12

    move/from16 v4, v17

    goto/16 :goto_4
.end method

.method public final a(IILcom/android/launcher3/bD;Z)[I
    .locals 5

    const v2, 0x7fffffff

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-static {v0, v3, v3, p1, p2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v1, v4

    if-eqz p4, :cond_0

    aget v0, v1, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/Workspace;->aF:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v3

    aget v0, v1, v4

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/Workspace;->aF:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v1, v4

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    aput v2, v1, v3

    aput v2, v1, v4

    move-object v0, v1

    goto :goto_0
.end method

.method public final a_(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->N:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/bz;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/bz;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->N:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/launcher3/bz;->a_(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final aa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    return v0
.end method

.method public final ab()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->bA:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final ac()V
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v6

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v8

    move v3, v4

    :goto_1
    if-lt v3, v8, :cond_1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v3}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/cF;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/cF;

    iget-object v2, v1, Lcom/android/launcher3/cF;->e:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher3/cE;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/cE;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/cF;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/cF;)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method protected final ad()Lcom/android/launcher3/cr;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    return-object v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/ez;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public final ae()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->J:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    :cond_0
    return-void
.end method

.method public final af()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final ag()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ah()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final ai()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->v()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Workspace;->af:Z

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->ay()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aa:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->aU:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->aW:F

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aj()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ak()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->d(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final al()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->a()V

    return-void
.end method

.method public final am()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->d:Lcom/android/launcher3/fU;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final an()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/Workspace;->p:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/launcher3/Workspace;->a(ZIZ)V

    goto :goto_0
.end method

.method final ao()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ah()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v2, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ap()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v1, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->u()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->t()V

    goto :goto_0
.end method

.method public final aq()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->bt:F

    iget v0, p0, Lcom/android/launcher3/Workspace;->bu:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->bu:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public final ar()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->bt:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->bt:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public final as()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final at()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->bC:Z

    return-void
.end method

.method public final au()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->bo:Landroid/util/SparseArray;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->bp:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->t(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final av()V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/ex;

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/launcher3/aF;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    check-cast v0, Lcom/android/launcher3/aF;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/aF;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public final b(J)Lcom/android/launcher3/CellLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method final b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/ex;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/Workspace;->bq:I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/Workspace;->bs:F

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/Workspace;->br:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->m(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setScrollX(I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setTranslationX(F)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method protected final b(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v11, 0x3f060a92

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/launcher3/Workspace;->bj:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/Workspace;->bk:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    div-float v5, v4, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/Workspace;->r:I

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/Workspace;->r:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->O()V

    :cond_3
    iget-wide v6, p0, Lcom/android/launcher3/Workspace;->V:J

    iget-wide v8, p0, Lcom/android/launcher3/Workspace;->W:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v4

    if-eqz v4, :cond_8

    cmpg-float v3, v3, v10

    if-gez v3, :cond_7

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->C()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->a(I)J

    move-result-wide v1

    const-wide/16 v3, -0x12d

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    :cond_5
    const v0, 0x3f860a92

    cmpl-float v0, v5, v0

    if-gtz v0, :cond_0

    cmpl-float v0, v5, v11

    if-lez v0, :cond_9

    sub-float v0, v5, v11

    div-float/2addr v0, v11

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/android/launcher3/ez;->a(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    cmpl-float v3, v3, v10

    if-gtz v3, :cond_4

    move v1, v2

    goto :goto_2

    :cond_9
    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method final b(Lcom/android/launcher3/CellLayout;)V
    .locals 14

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v13

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    const/16 v0, -0x64

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v4, -0x1

    const/16 v0, -0x65

    move v10, v0

    :goto_0
    move v11, v12

    :goto_1
    if-lt v11, v13, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/bD;

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/launcher3/bD;->p:Z

    if-eqz v0, :cond_1

    iput-boolean v12, v1, Lcom/android/launcher3/bD;->p:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    int-to-long v2, v10

    iget v6, v1, Lcom/android/launcher3/bD;->j:I

    iget v7, v1, Lcom/android/launcher3/bD;->k:I

    iget v8, v1, Lcom/android/launcher3/bD;->l:I

    iget v9, v1, Lcom/android/launcher3/bD;->m:I

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIII)V

    :cond_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :cond_2
    move v10, v0

    goto :goto_0
.end method

.method public final b(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/android/launcher3/aH;)V
    .locals 30

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/aH;->a:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/aH;->b:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/aH;->c:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/aH;->d:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/aA;[F)[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Hotseat;[F)V

    :cond_0
    :goto_0
    const/16 v28, -0x1

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_11

    const/4 v3, 0x2

    new-array v13, v3, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    aput v4, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    aput v4, v13, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    new-instance v21, Lcom/android/launcher3/fB;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/fB;-><init>(Lcom/android/launcher3/Workspace;)V

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/launcher3/bD;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/bD;->m:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v5, v4, Lcom/android/launcher3/L;->d:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v6, v4, Lcom/android/launcher3/L;->e:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, -0x65

    :goto_1
    int-to-long v0, v4

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->i:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->a(I)J

    move-result-wide v8

    cmp-long v4, v24, v8

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v8, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    if-eq v4, v8, :cond_3

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->c(J)I

    move-result v4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->aY:Ljava/lang/Runnable;

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->aY:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :cond_2
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/Workspace;->aY:Ljava/lang/Runnable;

    const/16 v8, 0x3b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/launcher3/Workspace;->b(II)V

    :cond_3
    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/launcher3/eo;

    if-eqz v4, :cond_e

    move-object/from16 v19, v3

    check-cast v19, Lcom/android/launcher3/eo;

    const/4 v11, 0x1

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/launcher3/eo;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x0

    aget v3, v13, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->a(FF[I)F

    move-result v9

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/bD;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/bD;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v4, v9}, Lcom/android/launcher3/Workspace;->a(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_4
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/bD;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget v10, v3, Lcom/android/launcher3/bD;->l:I

    iget v11, v3, Lcom/android/launcher3/bD;->m:I

    iget v4, v3, Lcom/android/launcher3/bD;->n:I

    if-lez v4, :cond_5

    iget v4, v3, Lcom/android/launcher3/bD;->o:I

    if-lez v4, :cond_5

    iget v10, v3, Lcom/android/launcher3/bD;->n:I

    iget v11, v3, Lcom/android/launcher3/bD;->o:I

    :cond_5
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v9, v4

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/launcher3/bD;->m:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/16 v17, 0x3

    invoke-virtual/range {v7 .. v17}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v4, 0x0

    aget v4, v16, v4

    iget v6, v3, Lcom/android/launcher3/bD;->l:I

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    aget v4, v16, v4

    iget v6, v3, Lcom/android/launcher3/bD;->m:I

    if-eq v4, v6, :cond_27

    :cond_6
    const/4 v4, 0x1

    :goto_3
    const/4 v5, 0x0

    aget v5, v16, v5

    iput v5, v3, Lcom/android/launcher3/bD;->l:I

    const/4 v5, 0x1

    aget v5, v16, v5

    iput v5, v3, Lcom/android/launcher3/bD;->m:I

    move v5, v4

    :cond_7
    new-instance v8, Lcom/android/launcher3/fD;

    move-object/from16 v9, p0

    move-object/from16 v10, v19

    move-object v11, v3

    move-wide/from16 v12, v22

    move-wide/from16 v14, v24

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher3/fD;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/eo;Lcom/android/launcher3/bD;JJ)V

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/launcher3/eo;->g:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_d

    move-object/from16 v4, v19

    check-cast v4, Lcom/android/launcher3/eq;

    iget-object v15, v4, Lcom/android/launcher3/eq;->t:Landroid/appwidget/AppWidgetHostView;

    :goto_4
    instance-of v4, v15, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    move-object v4, v15

    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    iget v6, v3, Lcom/android/launcher3/bD;->l:I

    iget v3, v3, Lcom/android/launcher3/bD;->m:I

    invoke-static {v4, v5, v6, v3}, Lcom/android/launcher3/e;->a(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/launcher3/eo;->g:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    check-cast v19, Lcom/android/launcher3/eq;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/launcher3/eq;->s:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    const/4 v14, 0x1

    :cond_9
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/16 v16, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, v18

    move-object v11, v7

    move-object v13, v8

    invoke-virtual/range {v9 .. v16}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/aA;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    invoke-static {v7, v3}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;[F)V

    goto/16 :goto_0

    :cond_c
    const/16 v4, -0x64

    goto/16 :goto_1

    :cond_d
    const/4 v15, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/bD;->g:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown item type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/bD;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v8, -0x1

    cmp-long v3, v3, v8

    if-nez v3, :cond_26

    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher3/d;

    if-eqz v3, :cond_26

    new-instance v4, Lcom/android/launcher3/ey;

    check-cast v18, Lcom/android/launcher3/d;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/android/launcher3/ey;-><init>(Lcom/android/launcher3/d;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    const v9, 0x7f040003

    move-object v3, v4

    check-cast v3, Lcom/android/launcher3/ey;

    invoke-virtual {v8, v9, v7, v3}, Lcom/android/launcher3/Launcher;->a(ILandroid/view/ViewGroup;Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    :goto_7
    if-eqz v13, :cond_f

    const/4 v3, 0x0

    aget v3, v13, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->a(FF[I)F

    move-result v9

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/aH;->i:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/aH;->i:Ljava/lang/Runnable;

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    move-wide/from16 v5, v22

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/aA;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/aH;Z)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_f
    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-virtual/range {v7 .. v17}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v4, 0x0

    aget v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v4, 0x1

    aget v15, v3, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/bD;->l:I

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/bD;->m:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZ)V

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/CellLayout;->b(Landroid/view/View;)V

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/launcher3/ex;->a(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    iget v9, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v10, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    move-object/from16 v4, v19

    move-wide/from16 v5, v22

    move-wide/from16 v7, v24

    invoke-static/range {v3 .. v10}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->aq()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->ar()V

    goto/16 :goto_5

    :pswitch_1
    const v4, 0x7f04000f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    move-object/from16 v3, v18

    check-cast v3, Lcom/android/launcher3/bk;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->ax:Lcom/android/launcher3/bw;

    invoke-static {v4, v8, v7, v3}, Lcom/android/launcher3/FolderIcon;->a(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/bk;)Lcom/android/launcher3/FolderIcon;

    move-result-object v3

    move-object/from16 v19, v18

    move-object/from16 v20, v3

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->a([III)Z

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v9, v3, Lcom/android/launcher3/L;->a:Landroid/view/View;

    const/16 v27, 0x0

    if-eqz v7, :cond_25

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/launcher3/aH;->j:Z

    if-nez v3, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-eq v3, v7, :cond_12

    const/4 v3, 0x1

    move/from16 v23, v3

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v7}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/16 v3, -0x65

    :goto_a
    int-to-long v10, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-gez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-wide v3, v3, Lcom/android/launcher3/L;->f:J

    move-wide/from16 v24, v3

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v5, v3, Lcom/android/launcher3/L;->d:I

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget v6, v3, Lcom/android/launcher3/L;->e:I

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v8, 0x1

    aget v4, v4, v8

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v8, 0x1

    aget v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-virtual {v7, v3, v4, v8}, Lcom/android/launcher3/CellLayout;->a(FF[I)F

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Workspace;->aL:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object v12, v7

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/aA;Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    goto/16 :goto_5

    :cond_12
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_9

    :cond_13
    const/16 v3, -0x64

    goto/16 :goto_a

    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v3

    move-wide/from16 v24, v3

    goto/16 :goto_b

    :cond_15
    const/4 v5, 0x1

    goto :goto_c

    :cond_16
    const/4 v6, 0x1

    goto :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v17, v0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v18, v14

    move-object/from16 v19, p1

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/aH;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/bD;

    iget v15, v3, Lcom/android/launcher3/bD;->l:I

    iget v0, v3, Lcom/android/launcher3/bD;->m:I

    move/from16 v16, v0

    iget v4, v3, Lcom/android/launcher3/bD;->n:I

    if-lez v4, :cond_19

    iget v4, v3, Lcom/android/launcher3/bD;->o:I

    if-lez v4, :cond_19

    iget v15, v3, Lcom/android/launcher3/bD;->n:I

    iget v0, v3, Lcom/android/launcher3/bD;->o:I

    move/from16 v16, v0

    :cond_19
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    float-to-int v13, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v8, 0x1

    aget v4, v4, v8

    float-to-int v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v20, v0

    const/16 v22, 0x2

    move-object v12, v7

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v9

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ltz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ltz v4, :cond_1d

    const/4 v4, 0x1

    move v6, v4

    :goto_e
    if-eqz v6, :cond_24

    instance-of v4, v9, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_24

    const/4 v4, 0x0

    aget v4, v21, v4

    iget v5, v3, Lcom/android/launcher3/bD;->l:I

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    aget v4, v21, v4

    iget v5, v3, Lcom/android/launcher3/bD;->m:I

    if-eq v4, v5, :cond_24

    :cond_1a
    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v4, v21, v4

    iput v4, v3, Lcom/android/launcher3/bD;->l:I

    const/4 v4, 0x1

    aget v4, v21, v4

    iput v4, v3, Lcom/android/launcher3/bD;->m:I

    move-object v4, v9

    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    const/4 v12, 0x0

    aget v12, v21, v12

    const/4 v13, 0x1

    aget v13, v21, v13

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher3/e;->a(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    move/from16 v22, v5

    :goto_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->i:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->a(I)J

    move-result-wide v4

    cmp-long v4, v4, v24

    if-eqz v4, :cond_1b

    if-nez v29, :cond_1b

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->c(J)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->o(I)V

    :cond_1b
    move/from16 v26, v28

    if-eqz v6, :cond_1e

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/bD;

    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Workspace;->b(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v6, 0x0

    aget v14, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v6, 0x1

    aget v15, v5, v6

    iget v0, v4, Lcom/android/launcher3/bD;->l:I

    move/from16 v16, v0

    iget v0, v4, Lcom/android/launcher3/bD;->m:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v8, p0

    move-wide/from16 v12, v24

    invoke-direct/range {v8 .. v19}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIIIZZ)V

    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v6, v3, Lcom/android/launcher3/bD;->l:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v6, v3, Lcom/android/launcher3/bD;->m:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    const-wide/16 v12, -0x65

    cmp-long v6, v10, v12

    if-eqz v6, :cond_23

    instance-of v6, v9, Lcom/android/launcher3/cE;

    if-eqz v6, :cond_23

    move-object v6, v9

    check-cast v6, Lcom/android/launcher3/cE;

    invoke-virtual {v6}, Lcom/android/launcher3/cE;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    const/4 v12, 0x3

    iput v12, v8, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v8, :cond_23

    iget v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v8, :cond_23

    new-instance v8, Lcom/android/launcher3/fy;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4, v6, v7}, Lcom/android/launcher3/fy;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/bD;Lcom/android/launcher3/cE;Lcom/android/launcher3/CellLayout;)V

    new-instance v6, Lcom/android/launcher3/fz;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8}, Lcom/android/launcher3/fz;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    iget v0, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    move/from16 v18, v0

    iget v0, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    move/from16 v19, v0

    iget v0, v3, Lcom/android/launcher3/bD;->l:I

    move/from16 v20, v0

    iget v0, v3, Lcom/android/launcher3/bD;->m:I

    move/from16 v21, v0

    move-object v13, v4

    move-wide v14, v10

    move-wide/from16 v16, v24

    invoke-static/range {v12 .. v21}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIII)V

    move-object/from16 v27, v6

    move/from16 v3, v26

    :goto_11
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    new-instance v7, Lcom/android/launcher3/fA;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v7, v0, v1}, Lcom/android/launcher3/fA;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/Workspace;->a:Z

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v4}, Lcom/android/launcher3/aA;->g()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/bD;

    iget v6, v4, Lcom/android/launcher3/bD;->g:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_20

    if-eqz v22, :cond_1f

    const/4 v8, 0x2

    :goto_12
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/aA;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :goto_13
    invoke-static {v9}, Lcom/android/launcher3/CellLayout;->b(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_1d
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_e

    :cond_1e
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x0

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x1

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    aput v3, v4, v5

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v9}, Lcom/android/launcher3/CellLayout;->c(Landroid/view/View;)V

    move/from16 v3, v26

    goto :goto_11

    :cond_1f
    const/4 v8, 0x0

    goto :goto_12

    :cond_20
    if-gez v3, :cond_21

    const/4 v6, -0x1

    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object v5, v9

    move-object/from16 v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_13

    :cond_21
    const/16 v6, 0x12c

    goto :goto_14

    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/aH;->k:Z

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_23
    move-object/from16 v6, v27

    goto/16 :goto_10

    :cond_24
    move/from16 v22, v26

    goto/16 :goto_f

    :cond_25
    move/from16 v22, v26

    move/from16 v3, v28

    goto/16 :goto_11

    :cond_26
    move-object/from16 v4, v18

    goto/16 :goto_6

    :cond_27
    move v4, v5

    goto/16 :goto_3

    :cond_28
    move v4, v11

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final b(Ljava/util/ArrayList;)V
    .locals 8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/fG;

    invoke-direct {v0, p0, v2, v4}, Lcom/android/launcher3/fG;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-static {v3, v0}, Lcom/android/launcher3/cO;->a(Ljava/util/Collection;Lcom/android/launcher3/df;)Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/launcher3/Workspace;->a(Ljava/util/HashSet;)V

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->bC:Z

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->bD:Z

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bB:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bB:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(J)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->b:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->d(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->e(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/UninstallShortcutReceiver;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ae:Lcom/android/launcher3/ex;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->t()V

    return-void
.end method

.method public final c(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aD()V

    return-void
.end method

.method public final c(Lcom/android/launcher3/aH;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bh:Lcom/android/launcher3/aG;

    invoke-virtual {v0}, Lcom/android/launcher3/aG;->a()V

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->bf:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->bg:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aG()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->az()V

    :cond_0
    return-void
.end method

.method final c(Ljava/util/ArrayList;)V
    .locals 3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->a(Ljava/util/HashSet;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v0, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final c(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, La/a/a/c/d;->h(Landroid/content/Context;)Lnl/ndsc/kitkatlauncher/a/b;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/Workspace;->aJ()[I

    move-result-object v3

    invoke-virtual {v2}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-lez v2, :cond_1

    div-int/lit8 v0, v2, 0x2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->e(IZ)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->e(IZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->e(IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/ez;->computeScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->c:Lcom/android/launcher3/fV;

    invoke-virtual {v0}, Lcom/android/launcher3/fV;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/ez;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->l()V

    :cond_1
    return-void
.end method

.method public final d(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->a(ZIZ)V

    return-void
.end method

.method public final d(Lcom/android/launcher3/aH;)V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->aL:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v2, Lcom/android/launcher3/fU;->c:Lcom/android/launcher3/fU;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/launcher3/bD;

    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/bD;->l:I

    if-ltz v1, :cond_2

    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/bD;->m:I

    if-gez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Improper spans found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/aH;->a:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/aH;->b:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/aH;->c:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/aH;->d:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/aA;[F)[F

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    if-nez v1, :cond_a

    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    move-object/from16 v0, p0

    if-eq v1, v0, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Workspace;->f(Lcom/android/launcher3/aH;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_19

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/launcher3/aH;->a:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/aH;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher3/Workspace;->a(IILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v8

    move-object v1, v8

    :goto_3
    if-nez v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/launcher3/aH;->a:I

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/aH;->b:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->a(FFZ)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    if-eq v1, v2, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/CellLayout;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v3, Lcom/android/launcher3/fU;->b:Lcom/android/launcher3/fU;

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aE:Lcom/android/launcher3/eC;

    iget-object v1, v1, Lcom/android/launcher3/eC;->a:Lcom/android/launcher3/a;

    invoke-virtual {v1}, Lcom/android/launcher3/a;->a()V

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Hotseat;[F)V

    :goto_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/bD;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/bD;->m:I

    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/bD;->n:I

    if-lez v1, :cond_6

    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/bD;->o:I

    if-lez v1, :cond_6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/bD;->n:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/bD;->o:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Workspace;->a(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x1

    aget v13, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/Workspace;->d(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->ak:[I

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/launcher3/CellLayout;->a(FF[I)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v6, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/Workspace;->bl:I

    if-nez v6, :cond_11

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->bb:Lcom/android/launcher3/a;

    invoke-virtual {v6}, Lcom/android/launcher3/a;->b()Z

    move-result v6

    if-nez v6, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->bb:Lcom/android/launcher3/a;

    new-instance v5, Lcom/android/launcher3/fR;

    const/4 v6, 0x0

    aget v6, v8, v6

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7, v6, v8}, Lcom/android/launcher3/fR;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->bb:Lcom/android/launcher3/a;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/a;->a(J)V

    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v6, 0x0

    aget v1, v1, v6

    float-to-int v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v7, 0x1

    aget v1, v1, v7

    float-to-int v7, v1

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher3/bD;->m:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->ak:[I

    move-object v10, v12

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/view/View;[I)Z

    move-result v22

    if-nez v22, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->aN:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v4, 0x0

    aget v4, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v5, 0x1

    aget v5, v2, v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher3/bD;->m:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v2}, Lcom/android/launcher3/aA;->c()Landroid/graphics/Point;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v2}, Lcom/android/launcher3/aA;->d()Landroid/graphics/Rect;

    move-result-object v10

    move-object v2, v12

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bl:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bl:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    if-nez v22, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->s()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aj:Lcom/android/launcher3/L;

    iget-object v12, v1, Lcom/android/launcher3/L;->a:Landroid/view/View;

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aE:Lcom/android/launcher3/eC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/eC;->a(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Workspace;->f(Lcom/android/launcher3/aH;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/launcher3/aH;->a:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/aH;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher3/Workspace;->a(IILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->a()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    :goto_9
    if-nez v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->aG()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    if-eq v1, v2, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/CellLayout;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->aB:[F

    invoke-static {v1, v2}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;[F)V

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v8, v9}, Lcom/android/launcher3/Workspace;->a(Ljava/lang/Object;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/Workspace;->bl:I

    if-nez v8, :cond_13

    check-cast v1, Lcom/android/launcher3/FolderIcon;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->be:Lcom/android/launcher3/FolderIcon;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->be:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/FolderIcon;->b(Ljava/lang/Object;)V

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->r()V

    :cond_12
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->s(I)V

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bl:I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_14

    if-nez v6, :cond_14

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->s(I)V

    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bl:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    if-nez v5, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->s(I)V

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bl:I

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bl:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->bc:Lcom/android/launcher3/a;

    invoke-virtual {v1}, Lcom/android/launcher3/a;->b()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bm:I

    if-ne v1, v2, :cond_17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/Workspace;->bn:I

    if-eq v1, v13, :cond_8

    :cond_17
    const/4 v1, 0x2

    new-array v14, v1, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->aB:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v7, v1

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/bD;->l:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/bD;->m:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->ak:[I

    const/4 v15, 0x0

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v15}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[II)[I

    new-instance v13, Lcom/android/launcher3/fT;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->aB:[F

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher3/bD;->l:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher3/bD;->m:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    move-object/from16 v20, v0

    move-object/from16 v14, p0

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v21}, Lcom/android/launcher3/fT;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/aA;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->bc:Lcom/android/launcher3/a;

    invoke-virtual {v1, v13}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->bc:Lcom/android/launcher3/a;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/a;->a(J)V

    goto/16 :goto_8

    :cond_18
    move-object v1, v8

    goto/16 :goto_9

    :cond_19
    move-object v1, v8

    goto/16 :goto_3
.end method

.method final d(Ljava/util/ArrayList;)V
    .locals 8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v2, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/ex;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    instance-of v2, v0, Lcom/android/launcher3/bk;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/android/launcher3/FolderIcon;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->a()Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/bD;

    invoke-direct {p0, v5, v2, v1}, Lcom/android/launcher3/Workspace;->a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    instance-of v2, v0, Lcom/android/launcher3/ey;

    if-eqz v2, :cond_3

    invoke-direct {p0, v5, v0, v1}, Lcom/android/launcher3/Workspace;->a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Landroid/view/View;)V

    goto :goto_3
.end method

.method protected final d(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d_()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/ez;->d_()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->l()V

    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->bo:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ab()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ez;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected final e(I)V
    .locals 10

    const-wide/16 v8, -0x12d

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v6

    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->e(I)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->C:I

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/android/launcher3/Workspace;->C:I

    iget v3, p0, Lcom/android/launcher3/Workspace;->l:I

    if-gt v0, v3, :cond_b

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->aT:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->aH:Lcom/android/launcher3/fU;

    sget-object v5, Lcom/android/launcher3/fU;->a:Lcom/android/launcher3/fU;

    if-ne v3, v5, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->aI:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v0

    move v3, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v3, v0, :cond_c

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->m(I)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->n(I)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->m(I)I

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->m(I)I

    move-result v0

    sub-int v0, v5, v0

    int-to-float v0, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    div-float v5, v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v5, v0

    :goto_3
    iget v0, p0, Lcom/android/launcher3/Workspace;->ar:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    :cond_1
    iput v3, p0, Lcom/android/launcher3/Workspace;->ar:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setBackgroundAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/Hotseat;->setTranslationX(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->y()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/PageIndicator;->setTranslationX(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aB()V

    iget v0, p0, Lcom/android/launcher3/Workspace;->C:I

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_5
    iget v0, p0, Lcom/android/launcher3/Workspace;->C:I

    iget v3, p0, Lcom/android/launcher3/Workspace;->l:I

    if-le v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->z()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_6
    move v0, v1

    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/android/launcher3/Workspace;->C:I

    if-gez v3, :cond_10

    move v4, v2

    :goto_5
    if-nez v6, :cond_7

    if-nez v4, :cond_8

    :cond_7
    if-eqz v6, :cond_11

    if-nez v4, :cond_11

    :cond_8
    move v3, v1

    :goto_6
    if-eqz v4, :cond_12

    const/high16 v0, 0x3f400000    # 0.75f

    move v1, v0

    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher3/Workspace;->a(ILandroid/view/View;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/CellLayout;->a(FZ)V

    const/high16 v4, -0x3e400000    # -24.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setRotationY(F)V

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->aR:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/launcher3/Workspace;->aS:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->aR:Z

    iput v1, p0, Lcom/android/launcher3/Workspace;->aS:F

    iget v3, p0, Lcom/android/launcher3/Workspace;->e:F

    iget v4, p0, Lcom/android/launcher3/Workspace;->ba:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->setCameraDistance(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setPivotX(F)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setPivotY(F)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->e(Z)V

    :cond_a
    :goto_8
    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher3/Workspace;->a(ILandroid/view/View;I)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v7, v5

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/ex;->setAlpha(F)V

    :cond_d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_e
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move v4, v1

    goto/16 :goto_5

    :cond_11
    move v3, v0

    goto :goto_6

    :cond_12
    const/high16 v0, 0x3e800000    # 0.25f

    move v1, v0

    goto :goto_7

    :cond_13
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aR:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->aR:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->i()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->i()V

    goto :goto_8

    :cond_14
    move v3, v4

    move v5, v4

    goto/16 :goto_3
.end method

.method public final e(IZ)V
    .locals 3

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Moving to screen "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->o(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->i(I)V

    goto :goto_0
.end method

.method public final e(Lcom/android/launcher3/aH;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bh:Lcom/android/launcher3/aG;

    invoke-virtual {v0}, Lcom/android/launcher3/aG;->b()V

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    :goto_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->bl:I

    if-ne v0, v2, :cond_4

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->bf:Z

    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->aL:Z

    invoke-direct {p0, v3}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/CellLayout;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aE:Lcom/android/launcher3/eC;

    iget-object v0, v0, Lcom/android/launcher3/eC;->a:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->J:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aA()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->au:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->at:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->av:Lcom/android/launcher3/CellLayout;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/launcher3/Workspace;->bl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->bg:Z

    goto :goto_1
.end method

.method public final e()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aG()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->d(Lcom/android/launcher3/CellLayout;)V

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->aL:Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final f()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->U:F

    return v0
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->Q:F

    return v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/ez;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method protected final h(I)Lcom/android/launcher3/dW;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->a(I)J

    move-result-wide v0

    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/android/launcher3/dW;

    const v1, 0x7f02003d

    const v2, 0x7f02003c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/dW;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->h(I)Lcom/android/launcher3/dW;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method final k()Lcom/android/launcher3/Folder;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DragLayer;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/launcher3/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/launcher3/Folder;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->e()Lcom/android/launcher3/bk;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/bk;->a:Z

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->p:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, -0x12d

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/Workspace;->b(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected custom content screen to exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    :cond_1
    iput-object v5, p0, Lcom/android/launcher3/Workspace;->ap:Lcom/android/launcher3/cr;

    iget v0, p0, Lcom/android/launcher3/Workspace;->ac:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->ad:I

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->b()V

    iget v0, p0, Lcom/android/launcher3/Workspace;->j:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/launcher3/Workspace;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->j:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->ax()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->i(I)V

    goto :goto_0
.end method

.method protected final o()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/launcher3/ez;->o()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->f()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aX:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aX:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->aX:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aY:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aY:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->aY:Ljava/lang/Runnable;

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->aK:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->Z()V

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->aK:Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/ez;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ab:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ay:Lcom/android/launcher3/ap;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ab:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ap;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    instance-of v0, p2, Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClickable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ez;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/ez;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ab:Landroid/os/IBinder;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->U:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->T:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->U:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->bj:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->bk:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->V:J

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/launcher3/Workspace;->p:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->az:[I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    aget v1, v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v4, v5

    aget v1, v4, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v4, v6

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aa:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_1

    const-string v2, "android.wallpaper.tap"

    :goto_1
    aget v3, v4, v5

    aget v4, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->c:Lcom/android/launcher3/fV;

    invoke-virtual {v0}, Lcom/android/launcher3/fV;->a()V

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->c:Lcom/android/launcher3/fV;

    invoke-virtual {v0}, Lcom/android/launcher3/fV;->b()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/ez;->onLayout(ZIIII)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ez;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/ez;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->i:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->b(I)V

    return-void
.end method

.method public final p()V
    .locals 6

    const-wide/16 v4, -0x12d

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->g()V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ah:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->c(Landroid/view/View;)V

    iget v0, p0, Lcom/android/launcher3/Workspace;->ac:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->ad:I

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->aw:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->b()V

    iget v0, p0, Lcom/android/launcher3/Workspace;->j:I

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->j:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->C()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->i(I)V

    goto :goto_0
.end method

.method public final q()V
    .locals 7

    const-wide/16 v5, -0xc9

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "Launcher.Workspace"

    const-string v1, "11683562 - addExtraEmptyScreenOnDrag()"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->ai:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ae:Lcom/android/launcher3/ex;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ae:Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    move v3, v2

    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/Workspace;->d(J)J

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public final r(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget v1, p0, Lcom/android/launcher3/Workspace;->bq:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setScrollX(I)V

    iget v1, p0, Lcom/android/launcher3/Workspace;->bs:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setTranslationX(F)V

    iget v1, p0, Lcom/android/launcher3/Workspace;->br:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 5

    const-wide/16 v3, -0xc9

    const/4 v0, 0x1

    const-string v1, "Launcher.Workspace"

    const-string v2, "11683562 - addExtraEmptyScreen()"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/Workspace;->d(J)J

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s(I)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/launcher3/Workspace;->bl:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aF()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->e(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aE()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->bl:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->e(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aE()V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aF()V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->e(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aF()V

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->aE()V

    goto :goto_0
.end method

.method public final s()Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->ag:Ljava/util/HashMap;

    const-wide/16 v3, -0xc9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Workspace;->U:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/Workspace;->U:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/Workspace;->Q:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final t()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/launcher3/Workspace;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->k:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->ag()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->D()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->as:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->i:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final t(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bo:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->bp:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->bo:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->a(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method protected final u()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Landroid/view/View$OnClickListener;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher3/fO;

    invoke-direct {v0, p0}, Lcom/android/launcher3/fO;-><init>(Lcom/android/launcher3/Workspace;)V

    goto :goto_0
.end method
