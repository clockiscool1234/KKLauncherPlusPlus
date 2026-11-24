.class public final Lcom/android/b/a/a;
.super Ljava/lang/Object;


# static fields
.field private static d:La/a/a/c/d;


# instance fields
.field private A:Lcom/android/b/a/c;

.field private B:Z

.field private C:I

.field private D:I

.field private E:Landroid/view/View;

.field protected a:I

.field protected b:I

.field protected c:I

.field private e:I

.field private f:Lcom/android/b/a/e;

.field private g:Lcom/android/a/c/a;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/util/LongSparseArray;

.field private final p:Ljava/lang/Object;

.field private final q:Lcom/android/b/a/d;

.field private final r:Lcom/android/b/a/d;

.field private final s:Lcom/android/b/a/d;

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:Z

.field private final y:Landroid/graphics/Rect;

.field private final z:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/b/a;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, La/b/a;-><init>(I)V

    sput-object v0, Lcom/android/b/a/a;->d:La/a/a/c/d;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/b/a/a;->h:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->m:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->n:Landroid/graphics/RectF;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    new-instance v0, Lcom/android/b/a/d;

    invoke-direct {v0, v3}, Lcom/android/b/a/d;-><init>(B)V

    iput-object v0, p0, Lcom/android/b/a/a;->q:Lcom/android/b/a/d;

    new-instance v0, Lcom/android/b/a/d;

    invoke-direct {v0, v3}, Lcom/android/b/a/d;-><init>(B)V

    iput-object v0, p0, Lcom/android/b/a/a;->r:Lcom/android/b/a/d;

    new-instance v0, Lcom/android/b/a/d;

    invoke-direct {v0, v3}, Lcom/android/b/a/d;-><init>(B)V

    iput-object v0, p0, Lcom/android/b/a/a;->s:Lcom/android/b/a/d;

    iput v1, p0, Lcom/android/b/a/a;->b:I

    iput v1, p0, Lcom/android/b/a/a;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/a;->y:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/b/a/a;->z:[Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/b/a/a;->E:Landroid/view/View;

    new-instance v0, Lcom/android/b/a/c;

    invoke-direct {v0, p0, v3}, Lcom/android/b/a/c;-><init>(Lcom/android/b/a/a;B)V

    iput-object v0, p0, Lcom/android/b/a/a;->A:Lcom/android/b/a/c;

    iget-object v0, p0, Lcom/android/b/a/a;->A:Lcom/android/b/a/c;

    invoke-virtual {v0}, Lcom/android/b/a/c;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    const/16 v2, 0x800

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x200

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/b/a/a;)I
    .locals 1

    iget v0, p0, Lcom/android/b/a/a;->e:I

    return v0
.end method

.method private a(III)Lcom/android/b/a/b;
    .locals 3

    iget-object v1, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->q:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->a()Lcom/android/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/b/a/b;->j:I

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/b/a/b;->a(III)V

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/b/a/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/b/a/b;-><init>(Lcom/android/b/a/a;III)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/android/b/a/a;III)Lcom/android/b/a/b;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/b/a/a;->b(III)Lcom/android/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;IIIFI)V
    .locals 15

    move/from16 v0, p6

    neg-int v1, v0

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iget v3, p0, Lcom/android/b/a/a;->C:I

    int-to-double v3, v3

    iget v5, p0, Lcom/android/b/a/a;->D:I

    int-to-double v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v9, v7, v3

    mul-double v11, v1, v5

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    mul-double v11, v7, v3

    mul-double v13, v1, v5

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    mul-double v10, v1, v3

    mul-double v12, v7, v5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v1, v3

    mul-double v3, v7, v5

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    int-to-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, v2

    int-to-float v5, v9

    div-float v5, v5, p5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v3

    int-to-float v1, v1

    div-float v1, v1, p5

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    iget v5, p0, Lcom/android/b/a/a;->e:I

    shl-int v5, v5, p4

    const/4 v6, 0x0

    div-int/2addr v2, v5

    mul-int/2addr v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v6, 0x0

    div-int/2addr v3, v5

    mul-int/2addr v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lcom/android/b/a/a;->b:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/b/a/a;->c:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/android/b/a/a;Lcom/android/b/a/b;)V
    .locals 4

    iget-object v1, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/android/b/a/b;->j:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/b/a/b;->j:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Lcom/android/b/a/b;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget v0, p1, Lcom/android/b/a/b;->j:I

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    const/16 v0, 0x40

    iput v0, p1, Lcom/android/b/a/b;->j:I

    iget-object v0, p1, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/b/a/a;->d:La/a/a/c/d;

    iget-object v1, p1, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, La/a/a/c/d;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/b/a/a;->q:Lcom/android/b/a/d;

    invoke-virtual {v0, p1}, Lcom/android/b/a/d;->a(Lcom/android/b/a/b;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    if-eqz v1, :cond_3

    const/16 v0, 0x8

    :goto_1
    :try_start_2
    iput v0, p1, Lcom/android/b/a/b;->j:I

    if-nez v1, :cond_4

    monitor-exit v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/b/a/a;->r:Lcom/android/b/a/d;

    invoke-virtual {v0, p1}, Lcom/android/b/a/d;->a(Lcom/android/b/a/b;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/b/a/a;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method private a(Lcom/android/b/a/b;)V
    .locals 3

    iget-object v1, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/android/b/a/b;->j:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/b/a/b;->j:I

    iget-object v0, p0, Lcom/android/b/a/a;->s:Lcom/android/b/a/d;

    invoke-virtual {v0, p1}, Lcom/android/b/a/d;->a(Lcom/android/b/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/android/b/a/b;Lcom/android/a/c/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    :goto_0
    invoke-virtual {p1}, Lcom/android/b/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1, p3, p4}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/b/a/b;->p()Lcom/android/b/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/android/b/a/b;->e:I

    iget v2, v0, Lcom/android/b/a/b;->e:I

    if-ne v1, v2, :cond_2

    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    :goto_2
    iget v1, p1, Lcom/android/b/a/b;->f:I

    iget v2, v0, Lcom/android/b/a/b;->f:I

    if-ne v1, v2, :cond_3

    iget v1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    :goto_3
    move-object p1, v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/b/a/a;->e:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/b/a/a;->e:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/b/a/a;->e:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/android/b/a/a;->e:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method static synthetic b()La/a/a/c/d;
    .locals 1

    sget-object v0, Lcom/android/b/a/a;->d:La/a/a/c/d;

    return-object v0
.end method

.method private b(III)Lcom/android/b/a/b;
    .locals 3

    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/android/b/a/a;->c(III)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/android/b/a/a;)Lcom/android/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    return-object v0
.end method

.method private b(Lcom/android/b/a/b;)V
    .locals 3

    iget-object v1, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/android/b/a/b;->j:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x20

    iput v0, p1, Lcom/android/b/a/b;->j:I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x40

    iput v0, p1, Lcom/android/b/a/b;->j:I

    iget-object v0, p1, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/b/a/a;->d:La/a/a/c/d;

    iget-object v2, p1, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, La/a/a/c/d;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/b/a/b;->i:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/b/a/a;->q:Lcom/android/b/a/d;

    invoke-virtual {v0, p1}, Lcom/android/b/a/d;->a(Lcom/android/b/a/b;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/android/b/a/a;)I
    .locals 1

    iget v0, p0, Lcom/android/b/a/a;->h:I

    return v0
.end method

.method private static c(III)J
    .locals 5

    const/16 v4, 0x10

    int-to-long v0, p0

    shl-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    shl-long/2addr v0, v4

    int-to-long v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private c()V
    .locals 4

    iget-object v2, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->s:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->b()V

    iget-object v0, p0, Lcom/android/b/a/a;->r:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->b()V

    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/b;

    invoke-direct {p0, v0}, Lcom/android/b/a/a;->b(Lcom/android/b/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic d(Lcom/android/b/a/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/a;->B:Z

    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/b;

    invoke-virtual {v0}, Lcom/android/b/a/b;->n()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/b;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/b/a/a;)Lcom/android/b/a/d;
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/a;->s:Lcom/android/b/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/a;->x:Z

    iget-object v0, p0, Lcom/android/b/a/a;->A:Lcom/android/b/a/c;

    invoke-virtual {v0}, Lcom/android/b/a/c;->a()V

    iget-object v1, p0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/a;->r:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->b()V

    iget-object v0, p0, Lcom/android/b/a/a;->s:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->b()V

    iget-object v0, p0, Lcom/android/b/a/a;->q:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->a()Lcom/android/b/a/b;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_2

    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lcom/android/b/a/a;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    sget-object v0, Lcom/android/b/a/a;->d:La/a/a/c/d;

    invoke-virtual {v0}, La/a/a/c/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/b/a/b;->j()V

    iget-object v0, p0, Lcom/android/b/a/a;->q:Lcom/android/b/a/d;

    invoke-virtual {v0}, Lcom/android/b/a/d;->a()Lcom/android/b/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/b;

    invoke-virtual {v0}, Lcom/android/b/a/b;->j()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/android/b/a/a;->C:I

    iput p2, p0, Lcom/android/b/a/a;->D:I

    return-void
.end method

.method public final a(IIF)V
    .locals 1

    iget v0, p0, Lcom/android/b/a/a;->t:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/b/a/a;->u:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/b/a/a;->v:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/b/a/a;->t:I

    iput p2, p0, Lcom/android/b/a/a;->u:I

    iput p3, p0, Lcom/android/b/a/a;->v:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/a;->x:Z

    goto :goto_0
.end method

.method public final a(Lcom/android/b/a/e;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    invoke-direct {p0}, Lcom/android/b/a/a;->c()V

    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    if-nez v0, :cond_2

    iput v3, p0, Lcom/android/b/a/a;->b:I

    iput v3, p0, Lcom/android/b/a/a;->c:I

    iput v3, p0, Lcom/android/b/a/a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    :goto_0
    iput-boolean v2, p0, Lcom/android/b/a/a;->x:Z

    :cond_0
    iget v0, p0, Lcom/android/b/a/a;->w:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/android/b/a/a;->w:I

    iput-boolean v2, p0, Lcom/android/b/a/a;->x:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    invoke-interface {v0}, Lcom/android/b/a/e;->b()I

    move-result v0

    iput v0, p0, Lcom/android/b/a/a;->b:I

    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    invoke-interface {v0}, Lcom/android/b/a/e;->c()I

    move-result v0

    iput v0, p0, Lcom/android/b/a/a;->c:I

    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    invoke-interface {v0}, Lcom/android/b/a/e;->e()Lcom/android/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    iget-object v0, p0, Lcom/android/b/a/a;->f:Lcom/android/b/a/e;

    invoke-interface {v0}, Lcom/android/b/a/e;->a()I

    move-result v0

    iput v0, p0, Lcom/android/b/a/a;->e:I

    iget-object v0, p0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/b/a/a;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    invoke-virtual {v1}, Lcom/android/a/c/a;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/a/a/a;->a(F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/b/a/a;->a:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/b/a/a;->b:I

    iget v1, p0, Lcom/android/b/a/a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, p0, Lcom/android/b/a/a;->e:I

    move v1, v2

    :goto_1
    if-lt v0, v3, :cond_4

    iput v1, p0, Lcom/android/b/a/a;->a:I

    goto :goto_0

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Lcom/android/a/c/c;)Z
    .locals 20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->C:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->D:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/b/a/a;->x:Z

    if-nez v2, :cond_8

    :cond_0
    :goto_0
    const/4 v3, 0x1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-gtz v3, :cond_14

    :cond_2
    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->E:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/b/a/a;->k:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/b/a/a;->l:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/b/a/a;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->w:I

    const/4 v2, 0x0

    if-eqz v3, :cond_21

    const/4 v2, 0x2

    move v8, v2

    :goto_2
    if-eqz v8, :cond_4

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/a/c/c;->a(I)V

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->C:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->D:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v5, v2

    int-to-float v7, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lcom/android/a/c/c;->a(FF)V

    int-to-float v3, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5, v7, v9}, Lcom/android/a/c/c;->a(FFFF)V

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/a/c/c;->a(FF)V

    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->a:I

    if-eq v6, v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->e:I

    shl-int v7, v2, v6

    int-to-float v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->v:F

    mul-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/b/a/a;->y:Landroid/graphics/Rect;

    iget v3, v10, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    :goto_3
    iget v4, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-lt v3, v4, :cond_16

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/android/a/c/c;->b()V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/b/a/a;->l:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/b/a/a;->B:Z

    if-nez v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/b/a/a;->d()V

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/b/a/a;->l:Z

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    :goto_6
    return v2

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/b/a/a;->x:Z

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->v:F

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/android/a/a/a;->b(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->a:I

    invoke-static {v2, v3, v4}, Lcom/android/a/a/a;->a(III)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/b/a/a;->h:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->a:I

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/b/a/a;->y:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->u:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/b/a/a;->h:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/b/a/a;->v:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/b/a/a;->w:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/b/a/a;->a(Landroid/graphics/Rect;IIIFI)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->C:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->t:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->v:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/b/a/a;->i:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->D:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->u:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->v:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/b/a/a;->j:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->v:F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->h:I

    shl-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->h:I

    add-int/lit8 v2, v2, -0x1

    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->a:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v2, v9, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/b/a/a;->z:[Landroid/graphics/Rect;

    move v6, v9

    :goto_8
    if-lt v6, v10, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->w:I

    rem-int/lit8 v2, v2, 0x5a

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->s:Lcom/android/b/a/d;

    invoke-virtual {v2}, Lcom/android/b/a/d;->b()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->r:Lcom/android/b/a/d;

    invoke-virtual {v2}, Lcom/android/b/a/d;->b()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/b/a/a;->B:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v4, :cond_c

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v9

    :goto_a
    if-lt v3, v10, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->E:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->h:I

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->h:I

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->C:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->t:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->v:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/b/a/a;->i:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->D:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->u:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->v:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/b/a/a;->j:I

    goto/16 :goto_7

    :cond_b
    sub-int v2, v6, v9

    aget-object v3, v11, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->u:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/b/a/a;->w:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    add-int/lit8 v12, v6, 0x1

    shl-int/2addr v7, v12

    int-to-float v7, v7

    div-float v7, v2, v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/b/a/a;->a(Landroid/graphics/Rect;IIIFI)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/b/a/b;

    iget v6, v2, Lcom/android/b/a/b;->g:I

    if-lt v6, v9, :cond_d

    if-ge v6, v10, :cond_d

    sub-int/2addr v6, v9

    aget-object v6, v11, v6

    iget v7, v2, Lcom/android/b/a/b;->e:I

    iget v8, v2, Lcom/android/b/a/b;->f:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/b/a/a;->b(Lcom/android/b/a/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    move v2, v3

    move v3, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v2

    goto/16 :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/b/a/a;->e:I

    shl-int v6, v2, v3

    sub-int v2, v3, v9

    aget-object v7, v11, v2

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    move v5, v2

    :goto_b
    if-lt v5, v8, :cond_10

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_a

    :cond_10
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    move v4, v2

    :goto_c
    if-lt v4, v12, :cond_11

    add-int v2, v5, v6

    move v5, v2

    goto :goto_b

    :cond_11
    invoke-static {v4, v5, v3}, Lcom/android/b/a/a;->c(III)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/b/a/b;

    if-eqz v2, :cond_13

    iget v13, v2, Lcom/android/b/a/b;->j:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_12

    const/4 v13, 0x1

    iput v13, v2, Lcom/android/b/a/b;->j:I

    :cond_12
    :goto_d
    add-int v2, v4, v6

    move v4, v2

    goto :goto_c

    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/b/a/a;->a(III)Lcom/android/b/a/b;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/b/a/a;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v13, v14, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_d

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/b/a/a;->p:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->r:Lcom/android/b/a/d;

    invoke-virtual {v2}, Lcom/android/b/a/d;->a()Lcom/android/b/a/b;

    move-result-object v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/b/a/b;->n()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v2, Lcom/android/b/a/b;->j:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/b/a/b;->c(Lcom/android/a/c/c;)V

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_15
    const-string v4, "TiledImageRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tile in upload queue has invalid state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/b/a/b;->j:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->j:I

    int-to-float v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v9

    add-float v11, v4, v5

    iget v5, v10, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    :goto_e
    iget v12, v10, Landroid/graphics/Rect;->right:I

    if-lt v5, v12, :cond_17

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/b/a/a;->i:I

    int-to-float v12, v12

    int-to-float v13, v4

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/b/a/a;->m:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/b/a/a;->n:Landroid/graphics/RectF;

    add-float v15, v12, v9

    add-float v16, v11, v9

    move/from16 v0, v16

    invoke-virtual {v14, v12, v11, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/b/a/a;->e:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/b/a/a;->e:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v12, v15, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v6}, Lcom/android/b/a/a;->b(III)Lcom/android/b/a/b;

    move-result-object v12

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lcom/android/b/a/b;->n()Z

    move-result v15

    if-nez v15, :cond_18

    iget v15, v12, Lcom/android/b/a/b;->j:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/b/a/a;->k:I

    if-lez v15, :cond_1b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/b/a/a;->k:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/b/a/a;->k:I

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/b/a/b;->c(Lcom/android/a/c/c;)V

    :cond_18
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v13, v14}, Lcom/android/b/a/a;->a(Lcom/android/b/a/b;Lcom/android/a/c/c;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    if-eqz v12, :cond_1a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/b/a/a;->e:I

    shl-int/2addr v12, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    invoke-virtual {v15}, Lcom/android/a/c/a;->c()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/b/a/a;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/a/c/a;->d()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/b/a/a;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, v15

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    add-int v19, v5, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v15, v15, v19

    add-int/2addr v12, v3

    int-to-float v12, v12

    mul-float v12, v12, v16

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14}, Lcom/android/a/c/c;->a(Lcom/android/a/c/a;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1a
    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_1b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/b/a/a;->l:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v2

    if-eqz v8, :cond_1c

    invoke-interface/range {p1 .. p1}, Lcom/android/a/c/c;->b()V

    :cond_1c
    throw v2

    :cond_1d
    :try_start_5
    iget v15, v12, Lcom/android/b/a/b;->j:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-eq v15, v0, :cond_18

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/b/a/a;->l:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/b/a/a;->a(Lcom/android/b/a/b;)V

    goto/16 :goto_f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->g:Lcom/android/a/c/a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/b/a/a;->i:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/b/a/a;->j:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->b:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/b/a/a;->v:F

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/b/a/a;->c:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/b/a/a;->v:F

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/a/c/a;->a(Lcom/android/a/c/c;IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/a/a;->E:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_5

    :cond_20
    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_21
    move v8, v2

    goto/16 :goto_2
.end method
