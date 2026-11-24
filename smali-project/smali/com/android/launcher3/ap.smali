.class public final Lcom/android/launcher3/ap;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:I

.field private C:Landroid/view/VelocityTracker;

.field private c:Lcom/android/launcher3/Launcher;

.field private d:Landroid/os/Handler;

.field private e:Landroid/graphics/Rect;

.field private final f:[I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/android/launcher3/aH;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Lcom/android/launcher3/aF;

.field private o:Landroid/os/IBinder;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/android/launcher3/ay;

.field private s:I

.field private t:Lcom/android/launcher3/ar;

.field private u:Lcom/android/launcher3/aF;

.field private v:Landroid/view/inputmethod/InputMethodManager;

.field private w:[I

.field private x:J

.field private y:I

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/ap;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/ap;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ap;->e:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/ap;->f:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ap;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ap;->m:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/launcher3/ap;->s:I

    new-instance v0, Lcom/android/launcher3/ar;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ar;-><init>(Lcom/android/launcher3/ap;)V

    iput-object v0, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/ap;->w:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/ap;->x:J

    iput v3, p0, Lcom/android/launcher3/ap;->y:I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/ap;->z:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ap;->A:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/ap;->j:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x7f0e0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/ap;->B:I

    return-void
.end method

.method private a(Lcom/android/launcher3/az;)Landroid/graphics/PointF;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/ap;->B:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private a(II[I)Lcom/android/launcher3/aF;
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/ap;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/ap;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/aF;

    invoke-interface {v0}, Lcom/android/launcher3/aF;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v2}, Lcom/android/launcher3/aF;->a(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput p1, v4, Lcom/android/launcher3/aH;->a:I

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput p2, v4, Lcom/android/launcher3/aH;->b:I

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    aput p1, p3, v1

    const/4 v1, 0x1

    aput p2, p3, v1

    iget-object v1, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, p3}, Lcom/android/launcher3/DragLayer;->c(Landroid/view/View;[I)F

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/ap;)Lcom/android/launcher3/ay;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->r:Lcom/android/launcher3/ay;

    return-object v0
.end method

.method private a(II)V
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v0, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/aA;->b(II)V

    iget-object v0, p0, Lcom/android/launcher3/ap;->f:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ap;->a(II[I)Lcom/android/launcher3/aF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v3, v0, v6

    iput v3, v2, Lcom/android/launcher3/aH;->a:I

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v0, v0, v7

    iput v0, v2, Lcom/android/launcher3/aH;->b:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/ap;->d(Lcom/android/launcher3/aF;)V

    iget v0, p0, Lcom/android/launcher3/ap;->y:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/ap;->w:[I

    aget v2, v2, v6

    sub-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/ap;->w:[I

    aget v4, v4, v7

    sub-int/2addr v4, p2

    int-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/ap;->y:I

    iget-object v0, p0, Lcom/android/launcher3/ap;->w:[I

    aput p1, v0, v6

    iget-object v0, p0, Lcom/android/launcher3/ap;->w:[I

    aput p2, v0, v7

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ap;->b(II)V

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher3/ap;->f:[I

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v4, v1, v0

    iput v4, v3, Lcom/android/launcher3/aH;->a:I

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v1, v1, v2

    iput v1, v3, Lcom/android/launcher3/aH;->b:I

    iget-object v1, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    iget-object v3, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v1, v3}, Lcom/android/launcher3/aF;->e(Lcom/android/launcher3/aH;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v1, v3}, Lcom/android/launcher3/aF;->c(Lcom/android/launcher3/aH;)V

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput-boolean v2, v1, Lcom/android/launcher3/aH;->e:Z

    iget-object v1, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v1, v3}, Lcom/android/launcher3/aF;->e(Lcom/android/launcher3/aH;)V

    iget-object v1, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v1, v3}, Lcom/android/launcher3/aF;->a(Lcom/android/launcher3/aH;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget v3, v3, Lcom/android/launcher3/aH;->a:I

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget v3, v3, Lcom/android/launcher3/aH;->b:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/aF;->a(Lcom/android/launcher3/aH;Landroid/graphics/PointF;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v3, v0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    iget-object v0, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v3, v0, v4, v2, v1}, Lcom/android/launcher3/az;->a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V

    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static a(Lcom/android/launcher3/aH;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    invoke-interface {v0}, Lcom/android/launcher3/az;->g()V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/ap;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ap;->s:I

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/ap;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ap;->b(II)V

    return-void
.end method

.method private a(FF)[I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ap;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/launcher3/ap;->z:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/ap;->A:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/ap;->A:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/ap;->z:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/ap;->A:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/ap;->A:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/ap;->z:[I

    return-object v0
.end method

.method static synthetic b(Lcom/android/launcher3/ap;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private b(FF)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/ap;->f:[I

    float-to-int v0, p1

    float-to-int v4, p2

    invoke-direct {p0, v0, v4, v3}, Lcom/android/launcher3/ap;->a(II[I)Lcom/android/launcher3/aF;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v5, v3, v2

    iput v5, v4, Lcom/android/launcher3/aH;->a:I

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v3, v3, v1

    iput v3, v4, Lcom/android/launcher3/aH;->b:I

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput-boolean v1, v3, Lcom/android/launcher3/aH;->e:Z

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v3}, Lcom/android/launcher3/aF;->e(Lcom/android/launcher3/aH;)V

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v3}, Lcom/android/launcher3/aF;->a(Lcom/android/launcher3/aH;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v3}, Lcom/android/launcher3/aF;->b(Lcom/android/launcher3/aH;)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v3, v3, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v3, v0, v4, v2, v1}, Lcom/android/launcher3/az;->a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private b(II)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/ap;->y:I

    if-ge v3, v0, :cond_1

    const/16 v0, 0x384

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DragLayer;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    move v3, v2

    :goto_2
    if-eqz v4, :cond_4

    :goto_3
    iget v4, p0, Lcom/android/launcher3/ap;->j:I

    if-ge p1, v4, :cond_5

    iget v1, p0, Lcom/android/launcher3/ap;->s:I

    if-nez v1, :cond_0

    iput v2, p0, Lcom/android/launcher3/ap;->s:I

    iget-object v1, p0, Lcom/android/launcher3/ap;->r:Lcom/android/launcher3/ay;

    invoke-interface {v1, p1, p2, v3}, Lcom/android/launcher3/ay;->a(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/DragLayer;->d()V

    iget-object v1, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/ar;->a(I)V

    iget-object v1, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_4
    return-void

    :cond_1
    const/16 v0, 0x1f4

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/ap;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/ap;->j:I

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_6

    iget v3, p0, Lcom/android/launcher3/ap;->s:I

    if-nez v3, :cond_0

    iput v2, p0, Lcom/android/launcher3/ap;->s:I

    iget-object v2, p0, Lcom/android/launcher3/ap;->r:Lcom/android/launcher3/ay;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/launcher3/ay;->a(III)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/DragLayer;->d()V

    iget-object v2, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ar;->a(I)V

    iget-object v1, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/ap;->h()V

    goto :goto_4
.end method

.method static synthetic b(Lcom/android/launcher3/ap;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ap;->y:I

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/ap;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->w:[I

    return-object v0
.end method

.method private d(Lcom/android/launcher3/aF;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v1}, Lcom/android/launcher3/aF;->e(Lcom/android/launcher3/aH;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {p1, v0}, Lcom/android/launcher3/aF;->c(Lcom/android/launcher3/aH;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {p1, v0}, Lcom/android/launcher3/aF;->d(Lcom/android/launcher3/aH;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v1}, Lcom/android/launcher3/aF;->e(Lcom/android/launcher3/aH;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/ap;->g:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    invoke-direct {p0}, Lcom/android/launcher3/ap;->h()V

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v1, v1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-boolean v0, v0, Lcom/android/launcher3/aH;->k:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v1, v1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v1}, Lcom/android/launcher3/aA;->j()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput-object v2, v1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/ap;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v2, p0, Lcom/android/launcher3/ap;->C:Landroid/view/VelocityTracker;

    :cond_3
    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/aq;

    invoke-interface {v0}, Lcom/android/launcher3/aq;->c()V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/launcher3/ap;->s:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ap;->s:I

    iget-object v0, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ar;->a(I)V

    iget-object v0, p0, Lcom/android/launcher3/ap;->r:Lcom/android/launcher3/ay;

    invoke-interface {v0}, Lcom/android/launcher3/ay;->e()Z

    iget-object v0, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;IILcom/android/launcher3/az;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)Lcom/android/launcher3/aA;
    .locals 13

    iget-object v2, p0, Lcom/android/launcher3/ap;->v:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/launcher3/ap;->v:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/ap;->v:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/launcher3/ap;->o:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/android/launcher3/ap;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/launcher3/ap;->h:I

    sub-int v5, v2, p2

    iget v2, p0, Lcom/android/launcher3/ap;->i:I

    sub-int v6, v2, p3

    if-nez p8, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-nez p8, :cond_5

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/ap;->g:Z

    new-instance v4, Lcom/android/launcher3/aH;

    invoke-direct {v4}, Lcom/android/launcher3/aH;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/launcher3/aH;->e:Z

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget v7, p0, Lcom/android/launcher3/ap;->h:I

    add-int/2addr v3, p2

    sub-int v3, v7, v3

    iput v3, v4, Lcom/android/launcher3/aH;->c:I

    iget-object v3, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget v4, p0, Lcom/android/launcher3/ap;->i:I

    add-int v2, v2, p3

    sub-int v2, v4, v2

    iput v2, v3, Lcom/android/launcher3/aH;->d:I

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    move-object/from16 v0, p4

    iput-object v0, v2, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    move-object/from16 v0, p5

    iput-object v0, v2, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    new-instance v2, Lcom/android/launcher3/aA;

    iget-object v3, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v4, p1

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher3/aA;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v2, v12, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    if-eqz p7, :cond_1

    new-instance v3, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/aA;->a(Landroid/graphics/Point;)V

    :cond_1
    if-eqz p8, :cond_2

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/aA;->a(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/DragLayer;->performHapticFeedback(I)Z

    iget v3, p0, Lcom/android/launcher3/ap;->h:I

    iget v4, p0, Lcom/android/launcher3/ap;->i:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/aA;->a(II)V

    iget v3, p0, Lcom/android/launcher3/ap;->h:I

    iget v4, p0, Lcom/android/launcher3/ap;->i:I

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/ap;->a(II)V

    return-object v2

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/aq;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/aq;->a(Lcom/android/launcher3/az;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move v3, v2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p8

    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ap;->o:Landroid/os/IBinder;

    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ap;->q:Landroid/view/View;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/az;Ljava/lang/Object;ILandroid/graphics/Point;F)V
    .locals 11

    iget-object v4, p0, Lcom/android/launcher3/ap;->f:[I

    iget-object v1, p0, Lcom/android/launcher3/ap;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;[I)F

    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    iget v1, v0, Landroid/graphics/Point;->x:I

    move v2, v1

    :goto_0
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_1
    const/4 v3, 0x0

    aget v3, v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v3, v2

    const/4 v2, 0x1

    aget v2, v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/ap;->a(Landroid/graphics/Bitmap;IILcom/android/launcher3/az;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)Lcom/android/launcher3/aA;

    if-nez p5, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final a(Lcom/android/launcher3/aA;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/aA;->j()V

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-boolean v0, v0, Lcom/android/launcher3/aH;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ap;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/aq;

    invoke-interface {v0}, Lcom/android/launcher3/aq;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/aF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/launcher3/aq;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/launcher3/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ap;->r:Lcom/android/launcher3/ay;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v0, v0, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/ey;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/d;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v1, v1, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ap;->c()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/ap;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/ap;->a(FF)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    return v0

    :pswitch_1
    iput v3, p0, Lcom/android/launcher3/ap;->h:I

    iput v2, p0, Lcom/android/launcher3/ap;->i:I

    iput-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/launcher3/ap;->x:J

    iget-boolean v1, p0, Lcom/android/launcher3/ap;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v1, v1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    invoke-direct {p0, v1}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/az;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v4, v4, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/launcher3/DeleteDropTarget;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/ap;->a(Landroid/graphics/PointF;)V

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/ap;->g()V

    goto :goto_0

    :cond_1
    int-to-float v0, v3

    int-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/ap;->b(FF)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/ap;->c()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ap;->q:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ap;->p:Landroid/view/View;

    return-void
.end method

.method public final b(Lcom/android/launcher3/aF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ap;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/launcher3/ap;->g:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/ap;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/ap;->a(FF)[I

    move-result-object v3

    aget v4, v3, v0

    aget v3, v3, v1

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iput v4, p0, Lcom/android/launcher3/ap;->h:I

    iput v3, p0, Lcom/android/launcher3/ap;->i:I

    iget v2, p0, Lcom/android/launcher3/ap;->j:I

    if-lt v4, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/ap;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v5, p0, Lcom/android/launcher3/ap;->j:I

    sub-int/2addr v2, v5

    if-le v4, v2, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/launcher3/ap;->s:I

    iget-object v0, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/ap;->a(II)V

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/android/launcher3/ap;->s:I

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/ap;->a(II)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/ap;->a(II)V

    iget-object v0, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v0, v0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    invoke-direct {p0, v0}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/az;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v2, v2, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/launcher3/DeleteDropTarget;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/android/launcher3/ap;->a(Landroid/graphics/PointF;)V

    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher3/ap;->g()V

    goto :goto_1

    :cond_5
    int-to-float v0, v4

    int-to-float v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/ap;->b(FF)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher3/ap;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/ap;->t:Lcom/android/launcher3/ar;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/ap;->c()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final c()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ap;->u:Lcom/android/launcher3/aF;

    iget-object v1, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v1}, Lcom/android/launcher3/aF;->e(Lcom/android/launcher3/aH;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput-boolean v3, v0, Lcom/android/launcher3/aH;->k:Z

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput-boolean v2, v0, Lcom/android/launcher3/aH;->j:Z

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iput-boolean v2, v0, Lcom/android/launcher3/aH;->e:Z

    iget-object v0, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    iget-object v0, v0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/launcher3/az;->a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/ap;->g()V

    return-void
.end method

.method public final c(Lcom/android/launcher3/aF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ap;->n:Lcom/android/launcher3/aF;

    return-void
.end method

.method final d()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/ap;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/ap;->x:J

    goto :goto_0
.end method

.method final e()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/ap;->x:J

    return-void
.end method

.method public final f()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/ap;->f:[I

    iget-object v1, p0, Lcom/android/launcher3/ap;->w:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/ap;->w:[I

    aget v2, v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/ap;->a(II[I)Lcom/android/launcher3/aF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v3, v0, v3

    iput v3, v2, Lcom/android/launcher3/aH;->a:I

    iget-object v2, p0, Lcom/android/launcher3/ap;->k:Lcom/android/launcher3/aH;

    aget v0, v0, v4

    iput v0, v2, Lcom/android/launcher3/aH;->b:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/ap;->d(Lcom/android/launcher3/aF;)V

    return-void
.end method
