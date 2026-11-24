.class public final Lcom/android/launcher3/al;
.super Ljava/lang/Object;


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field private H:F

.field private I:F

.field private J:I

.field private K:F

.field private L:Z

.field private M:I

.field private N:Landroid/graphics/Rect;

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:F

.field private U:F

.field private V:I

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field a:F

.field private aa:I

.field private ab:I

.field private ac:F

.field private ad:Ljava/util/ArrayList;

.field private ae:Landroid/content/Context;

.field private af:Z

.field b:F

.field c:F

.field d:F

.field e:F

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;FFIIIILandroid/content/res/Resources;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/al;->ad:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {p1}, La/a/a/c/d;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/al;->af:Z

    invoke-virtual/range {p9 .. p9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f080007

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/al;->L:Z

    iput p3, p0, Lcom/android/launcher3/al;->a:F

    iput p4, p0, Lcom/android/launcher3/al;->b:F

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/al;->N:Landroid/graphics/Rect;

    const v1, 0x7f090008

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->j:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/al;->M:I

    const v1, 0x7f09000b

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->ab:I

    const v1, 0x7f09000e

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->O:I

    const v1, 0x7f09000d

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->X:I

    const v1, 0x7f09000f

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->P:I

    const v1, 0x7f090010

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->Q:I

    const v1, 0x7f090011

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->R:I

    const v1, 0x7f090012

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->S:I

    const v1, 0x7f0e0003

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/al;->T:F

    const v1, 0x7f0e0004

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/al;->U:F

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3, p4, v3}, Lcom/android/launcher3/al;->a(FFLjava/util/ArrayList;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->c:F

    iget-object v1, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    iget v4, p0, Lcom/android/launcher3/al;->c:F

    float-to-int v4, v4

    invoke-static {v1, v4}, La/a/a/c/d;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->c:F

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p3, p4, v3}, Lcom/android/launcher3/al;->a(FFLjava/util/ArrayList;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->d:F

    iget-object v1, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    iget v4, p0, Lcom/android/launcher3/al;->d:F

    float-to-int v4, v4

    invoke-static {v1, v4}, La/a/a/c/d;->b(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->d:F

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p3, p4, v3}, Lcom/android/launcher3/al;->a(FFLjava/util/ArrayList;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->e:F

    iget v1, p0, Lcom/android/launcher3/al;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->D:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p3, p4, v3}, Lcom/android/launcher3/al;->a(FFLjava/util/ArrayList;)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->H:F

    iget v1, p0, Lcom/android/launcher3/al;->H:F

    invoke-static {v1, v2}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->t:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p3, p4, v3}, Lcom/android/launcher3/al;->a(FFLjava/util/ArrayList;)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->I:F

    iget v1, p0, Lcom/android/launcher3/al;->I:F

    sput v1, La/a/a/c/d;->b:F

    iget-object v1, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {v1}, La/a/a/c/d;->o(Landroid/content/Context;)F

    const v1, 0x7f09000c

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->J:I

    iget v1, p0, Lcom/android/launcher3/al;->I:F

    invoke-static {v1, v2}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->u:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p3, p4, v3}, Lcom/android/launcher3/al;->a(FFLjava/util/ArrayList;)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/al;->K:F

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p9

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/al;->a(Landroid/content/Context;Landroid/content/res/Resources;IIII)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/al;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/al;

    new-instance v5, Lcom/android/launcher3/ao;

    iget v6, v1, Lcom/android/launcher3/al;->a:F

    iget v7, v1, Lcom/android/launcher3/al;->b:F

    iget v1, v1, Lcom/android/launcher3/al;->c:F

    invoke-direct {v5, v6, v7, v1}, Lcom/android/launcher3/ao;-><init>(FFF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/al;

    new-instance v5, Lcom/android/launcher3/ao;

    iget v6, v1, Lcom/android/launcher3/al;->a:F

    iget v7, v1, Lcom/android/launcher3/al;->b:F

    iget v1, v1, Lcom/android/launcher3/al;->d:F

    invoke-direct {v5, v6, v7, v1}, Lcom/android/launcher3/ao;-><init>(FFF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/al;

    new-instance v5, Lcom/android/launcher3/ao;

    iget v6, v1, Lcom/android/launcher3/al;->a:F

    iget v7, v1, Lcom/android/launcher3/al;->b:F

    iget v1, v1, Lcom/android/launcher3/al;->e:F

    invoke-direct {v5, v6, v7, v1}, Lcom/android/launcher3/ao;-><init>(FFF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/al;

    new-instance v5, Lcom/android/launcher3/ao;

    iget v6, v1, Lcom/android/launcher3/al;->a:F

    iget v7, v1, Lcom/android/launcher3/al;->b:F

    iget v1, v1, Lcom/android/launcher3/al;->H:F

    invoke-direct {v5, v6, v7, v1}, Lcom/android/launcher3/ao;-><init>(FFF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/al;

    new-instance v5, Lcom/android/launcher3/ao;

    iget v6, v1, Lcom/android/launcher3/al;->a:F

    iget v7, v1, Lcom/android/launcher3/al;->b:F

    iget v1, v1, Lcom/android/launcher3/al;->I:F

    invoke-direct {v5, v6, v7, v1}, Lcom/android/launcher3/ao;-><init>(FFF)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/al;

    new-instance v4, Lcom/android/launcher3/ao;

    iget v5, v1, Lcom/android/launcher3/al;->a:F

    iget v6, v1, Lcom/android/launcher3/al;->b:F

    iget v1, v1, Lcom/android/launcher3/al;->K:F

    invoke-direct {v4, v5, v6, v1}, Lcom/android/launcher3/ao;-><init>(FFF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method

.method constructor <init>(Ljava/lang/String;FFFFFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/al;->ad:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    rem-float v0, p8, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All Device Profiles must have an odd number of hotseat spaces"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lcom/android/launcher3/al;->a:F

    iput p3, p0, Lcom/android/launcher3/al;->b:F

    iput p4, p0, Lcom/android/launcher3/al;->c:F

    iput p5, p0, Lcom/android/launcher3/al;->d:F

    iput p6, p0, Lcom/android/launcher3/al;->H:F

    iput p7, p0, Lcom/android/launcher3/al;->I:F

    iput p8, p0, Lcom/android/launcher3/al;->e:F

    iput p9, p0, Lcom/android/launcher3/al;->K:F

    return-void
.end method

.method private a(FFLjava/util/ArrayList;)F
    .locals 10

    const/4 v4, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v2, 0x0

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Lcom/android/launcher3/am;

    invoke-direct {v0, p0, v5}, Lcom/android/launcher3/am;-><init>(Lcom/android/launcher3/al;Landroid/graphics/PointF;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v2

    move v3, v4

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_2

    :goto_2
    return v2

    :cond_0
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ao;

    int-to-float v6, v3

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    iget-object v6, v0, Lcom/android/launcher3/ao;->b:Landroid/graphics/PointF;

    invoke-direct {p0, v5, v6, v9}, Lcom/android/launcher3/al;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v6

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v7, v6, v7

    if-nez v7, :cond_1

    iget v2, v0, Lcom/android/launcher3/ao;->a:F

    goto :goto_2

    :cond_1
    add-float v0, v1, v6

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ao;

    int-to-float v3, v4

    cmpg-float v3, v3, v8

    if-gez v3, :cond_3

    iget-object v3, v0, Lcom/android/launcher3/ao;->b:Landroid/graphics/PointF;

    invoke-direct {p0, v5, v3, v9}, Lcom/android/launcher3/al;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    iget v0, v0, Lcom/android/launcher3/ao;->a:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F
    .locals 7

    invoke-static {p1, p2}, Lcom/android/launcher3/al;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double v0, v1, v3

    double-to-float v0, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/al;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 1

    invoke-static {p1, p2}, Lcom/android/launcher3/al;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    return v0
.end method

.method private static a(Landroid/view/ViewGroup;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {v1}, La/a/a/c/d;->n(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {v2}, La/a/a/c/d;->o(Landroid/content/Context;)F

    move-result v2

    const-string v3, "KLP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current scale = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    mul-float v0, p1, v1

    mul-float v1, p1, v2

    :goto_0
    const-string v2, "KLP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current iconScale = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KLP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current iconTextScale = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/launcher3/al;->H:F

    invoke-static {v2, p4}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/al;->o:I

    iget v2, p0, Lcom/android/launcher3/al;->I:F

    invoke-static {v2, p4}, Lcom/android/launcher3/aI;->b(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/al;->p:I

    iput p2, p0, Lcom/android/launcher3/al;->q:I

    iget v1, p0, Lcom/android/launcher3/al;->K:F

    invoke-static {v1, p4}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/al;->B:I

    iget v0, p0, Lcom/android/launcher3/al;->H:F

    invoke-static {v0, p4}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    sput v0, La/a/a/c/d;->a:F

    iget v0, p0, Lcom/android/launcher3/al;->I:F

    sput v0, La/a/a/c/d;->b:F

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Dynamic.iconSizePx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, La/a/a/c/d;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Dynamic.iconTextSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, La/a/a/c/d;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090009

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->Z:I

    const v0, 0x7f09000a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->aa:I

    iget v0, p0, Lcom/android/launcher3/al;->Z:I

    iget v1, p0, Lcom/android/launcher3/al;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->Y:I

    iget v0, p0, Lcom/android/launcher3/al;->aa:I

    invoke-direct {p0}, Lcom/android/launcher3/al;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->G:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/android/launcher3/al;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/al;->o:I

    iput v1, p0, Lcom/android/launcher3/al;->r:I

    iget v1, p0, Lcom/android/launcher3/al;->o:I

    iget v2, p0, Lcom/android/launcher3/al;->q:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->s:I

    const v0, 0x7f090027

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/al;->o:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/al;->o:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->ac:F

    iget v0, p0, Lcom/android/launcher3/al;->o:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->C:I

    iget v0, p0, Lcom/android/launcher3/al;->o:I

    iput v0, p0, Lcom/android/launcher3/al;->z:I

    iget v0, p0, Lcom/android/launcher3/al;->o:I

    iput v0, p0, Lcom/android/launcher3/al;->A:I

    iget v0, p0, Lcom/android/launcher3/al;->r:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->x:I

    iget v0, p0, Lcom/android/launcher3/al;->s:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->y:I

    iget v0, p0, Lcom/android/launcher3/al;->j:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher3/al;->v:I

    iget v0, p0, Lcom/android/launcher3/al;->o:I

    iget v1, p0, Lcom/android/launcher3/al;->v:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->w:I

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current allAppsIconSizePx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/al;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    const v0, 0x7f090024

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget v0, p0, Lcom/android/launcher3/al;->t:I

    iput v0, p0, Lcom/android/launcher3/al;->V:I

    iget v0, p0, Lcom/android/launcher3/al;->t:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/launcher3/al;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->W:I

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v0, 0x7f0e0001

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v0, 0x7f0e0002

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-boolean v0, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iget-boolean v4, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v4, :cond_3

    :goto_3
    iget v1, p0, Lcom/android/launcher3/al;->n:I

    iget v4, p0, Lcom/android/launcher3/al;->ab:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/launcher3/al;->W:I

    iget v5, p0, Lcom/android/launcher3/al;->X:I

    add-int/2addr v4, v5

    div-int/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/al;->E:I

    iget v1, p0, Lcom/android/launcher3/al;->E:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->E:I

    iget v0, p0, Lcom/android/launcher3/al;->m:I

    iget v1, p0, Lcom/android/launcher3/al;->V:I

    iget v4, p0, Lcom/android/launcher3/al;->X:I

    add-int/2addr v1, v4

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/al;->F:I

    iget v0, p0, Lcom/android/launcher3/al;->F:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->F:I

    iget-object v0, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    iget v1, p0, Lcom/android/launcher3/al;->E:I

    invoke-static {v0, v1}, La/a/a/c/d;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->E:I

    iget-object v0, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    iget v1, p0, Lcom/android/launcher3/al;->F:I

    invoke-static {v0, v1}, La/a/a/c/d;->d(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/al;->F:I

    return-void

    :cond_0
    move v1, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v0, v7, v8}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v0, v6, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher3/al;->m:I

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, v7, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/al;->n:I

    :goto_0
    iget v2, p0, Lcom/android/launcher3/al;->J:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/al;->a(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;Z)V

    iget v0, p0, Lcom/android/launcher3/al;->s:I

    int-to-float v0, v0

    iget v6, p0, Lcom/android/launcher3/al;->c:F

    mul-float/2addr v0, v6

    invoke-direct {p0}, Lcom/android/launcher3/al;->e()Landroid/graphics/Rect;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/al;->n:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v7, v6

    int-to-float v7, v6

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    int-to-float v1, v6

    div-float/2addr v1, v0

    move v2, v5

    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/al;->a(FILandroid/content/res/Resources;Landroid/util/DisplayMetrics;Z)V

    iget-object v0, p0, Lcom/android/launcher3/al;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_1
    iget v0, v8, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher3/al;->n:I

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/an;

    invoke-interface {v0, p0}, Lcom/android/launcher3/an;->a(Lcom/android/launcher3/al;)V

    goto :goto_1
.end method

.method private d()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/al;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/al;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private e()Landroid/graphics/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a()Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/launcher3/al;->T:F

    iget v1, p0, Lcom/android/launcher3/al;->n:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/launcher3/al;->Q:I

    iget v2, p0, Lcom/android/launcher3/al;->P:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/al;->n:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/al;->n:I

    invoke-direct {v1, v3, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method final a(I)Landroid/graphics/Rect;
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {v0}, La/a/a/c/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/launcher3/al;->ab:I

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v2, p0, Lcom/android/launcher3/al;->af:Z

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/android/launcher3/al;->G:I

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/al;->L:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/al;->i:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/al;->m:I

    iget v3, p0, Lcom/android/launcher3/al;->G:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/al;->j:I

    iget v5, p0, Lcom/android/launcher3/al;->m:I

    iget v6, p0, Lcom/android/launcher3/al;->n:I

    iget v7, p0, Lcom/android/launcher3/al;->j:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/launcher3/al;->L:Z

    if-eqz v2, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/al;->i:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/launcher3/al;->C:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/al;->j:I

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-object v5

    :cond_1
    iget v2, p0, Lcom/android/launcher3/al;->j:I

    iget v3, p0, Lcom/android/launcher3/al;->G:I

    iget v5, p0, Lcom/android/launcher3/al;->n:I

    iget v6, p0, Lcom/android/launcher3/al;->j:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher3/al;->g:Z

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    iget v2, p0, Lcom/android/launcher3/al;->k:I

    iget v3, p0, Lcom/android/launcher3/al;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_3
    iget v3, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/al;->d:F

    iget v5, p0, Lcom/android/launcher3/al;->r:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/al;->d:F

    add-float/2addr v3, v8

    mul-float/2addr v3, v9

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/al;->j:I

    add-int/2addr v3, v2

    invoke-direct {p0}, Lcom/android/launcher3/al;->d()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/al;->m:I

    iget v7, p0, Lcom/android/launcher3/al;->j:I

    add-int/2addr v2, v7

    sub-int v2, v6, v2

    iget v6, p0, Lcom/android/launcher3/al;->G:I

    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/launcher3/al;->k:I

    iget v3, p0, Lcom/android/launcher3/al;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/android/launcher3/al;->M:I

    iget-object v3, p0, Lcom/android/launcher3/al;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/launcher3/al;->d()I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/al;->m:I

    iget v6, p0, Lcom/android/launcher3/al;->M:I

    iget-object v7, p0, Lcom/android/launcher3/al;->N:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/al;->G:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    iget v2, p0, Lcom/android/launcher3/al;->C:I

    iget v3, p0, Lcom/android/launcher3/al;->j:I

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    iget-boolean v2, p0, Lcom/android/launcher3/al;->g:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/launcher3/al;->ac:F

    sub-float/2addr v2, v8

    div-float/2addr v2, v9

    add-float v6, v8, v2

    if-nez p1, :cond_7

    iget v2, p0, Lcom/android/launcher3/al;->k:I

    iget v3, p0, Lcom/android/launcher3/al;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    :goto_4
    if-eqz p1, :cond_8

    iget v2, p0, Lcom/android/launcher3/al;->k:I

    iget v7, p0, Lcom/android/launcher3/al;->l:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_5
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/launcher3/al;->C:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/android/launcher3/al;->d:F

    iget v8, p0, Lcom/android/launcher3/al;->r:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/al;->d:F

    mul-float/2addr v6, v8

    iget v8, p0, Lcom/android/launcher3/al;->r:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    iget v6, p0, Lcom/android/launcher3/al;->c:F

    mul-float/2addr v6, v9

    iget v7, p0, Lcom/android/launcher3/al;->s:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v2, v3, 0x2

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_7
    iget v2, p0, Lcom/android/launcher3/al;->k:I

    iget v3, p0, Lcom/android/launcher3/al;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/android/launcher3/al;->k:I

    iget v7, p0, Lcom/android/launcher3/al;->l:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_9
    iget v1, p0, Lcom/android/launcher3/al;->M:I

    iget-object v2, p0, Lcom/android/launcher3/al;->N:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/launcher3/al;->M:I

    iget-object v4, p0, Lcom/android/launcher3/al;->N:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/al;->C:I

    add-int/2addr v0, v4

    invoke-virtual {v5, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/al;->e()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/al;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/al;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/launcher3/al;->ab:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/al;->l:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/al;->k:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/al;->ab:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher3/al;->l:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v1

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/al;->l:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/al;->k:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v1

    iget v4, p0, Lcom/android/launcher3/al;->ab:I

    add-int/2addr v4, v2

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Landroid/content/res/Resources;IIII)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/al;->f:Z

    const v0, 0x7f080003

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/al;->g:Z

    const v0, 0x7f080004

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/al;->h:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_2

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/al;->i:Z

    :goto_2
    iput p3, p0, Lcom/android/launcher3/al;->k:I

    iput p4, p0, Lcom/android/launcher3/al;->l:I

    iput p5, p0, Lcom/android/launcher3/al;->m:I

    iput p6, p0, Lcom/android/launcher3/al;->n:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/al;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/al;->i:Z

    goto :goto_2
.end method

.method public final a(Lcom/android/launcher3/Launcher;)V
    .locals 13

    const/16 v12, 0x51

    const/4 v11, -0x1

    const/16 v10, 0x8

    const/4 v9, -0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/al;->c()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->k()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_a

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/android/launcher3/al;->G:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v1, v1, 0x2

    iget v5, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v1, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f10004f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/launcher3/al;->af:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f100043

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800035

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/android/launcher3/al;->k:I

    iget v2, p0, Lcom/android/launcher3/al;->Y:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/launcher3/al;->o:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/launcher3/al;->G:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    const v0, 0x7f100037

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dX;

    invoke-virtual {v0}, Lcom/android/launcher3/dX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v2, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v2, :cond_c

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dX;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/launcher3/dX;->setPadding(IIII)V

    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/al;->L:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/al;->h:Z

    if-eqz v1, :cond_d

    :cond_3
    iget v1, p0, Lcom/android/launcher3/al;->O:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dX;->k(I)V

    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_e

    const v2, 0x800005

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/launcher3/al;->C:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x7f10001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f100042

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v4, :cond_10

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {v0}, La/a/a/c/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const v0, 0x7f100041

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppsCustomizeTabHost;

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/android/launcher3/al;->ab:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/launcher3/al;->t:I

    int-to-float v4, v4

    sget v5, Lcom/android/launcher3/aI;->a:F

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    const v1, 0x7f100006

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher3/al;->ae:Landroid/content/Context;

    invoke-static {v1}, La/a/a/c/d;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppsCustomizePagedView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_8

    iget v4, p0, Lcom/android/launcher3/al;->m:I

    iget v5, p0, Lcom/android/launcher3/al;->V:I

    iget v6, p0, Lcom/android/launcher3/al;->F:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/al;->F:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    div-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/al;->n:I

    iget v6, p0, Lcom/android/launcher3/al;->W:I

    iget v7, p0, Lcom/android/launcher3/al;->E:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/al;->E:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    div-int/2addr v5, v6

    add-int v6, v4, v5

    int-to-float v6, v6

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v6, v4, v5

    int-to-float v6, v6

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/al;->F:I

    iget v7, p0, Lcom/android/launcher3/al;->V:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    mul-int/2addr v4, v6

    iget v6, p0, Lcom/android/launcher3/al;->m:I

    sub-int v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    iget-boolean v6, p0, Lcom/android/launcher3/al;->g:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v6, :cond_7

    :cond_6
    iget v6, p0, Lcom/android/launcher3/al;->V:I

    div-int/lit8 v6, v6, 0x4

    if-le v4, v6, :cond_7

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_7
    sub-int v4, v2, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(I)V

    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->j()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/al;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v3, p0, Lcom/android/launcher3/al;->m:I

    invoke-static {v1}, Lcom/android/launcher3/al;->a(Landroid/view/ViewGroup;)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/al;->R:I

    mul-int/2addr v5, v4

    add-int/lit8 v4, v4, -0x1

    iget v6, p0, Lcom/android/launcher3/al;->S:I

    mul-int/2addr v4, v6

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    :cond_a
    const/16 v5, 0x31

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v5, p0, Lcom/android/launcher3/al;->Y:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-boolean v5, p0, Lcom/android/launcher3/al;->af:Z

    if-nez v5, :cond_b

    iget v1, p0, Lcom/android/launcher3/al;->G:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lcom/android/launcher3/al;->d()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v1, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v5, 0x41d80000    # 27.0f

    invoke-static {v5, v1}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_d
    iget v1, p0, Lcom/android/launcher3/al;->O:I

    invoke-direct {p0}, Lcom/android/launcher3/al;->e()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_2

    :cond_e
    iget-boolean v2, p0, Lcom/android/launcher3/al;->g:Z

    if-eqz v2, :cond_f

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/launcher3/al;->C:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/launcher3/al;->j:I

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/android/launcher3/al;->j:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_f
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/launcher3/al;->C:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v2, 0x7f10001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/launcher3/al;->j:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v5, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/android/launcher3/al;->C:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method final a(Lcom/android/launcher3/an;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/al;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/android/launcher3/an;->a(Lcom/android/launcher3/al;)V

    return-void
.end method

.method final b()F
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/al;->e()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/al;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/al;->n:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/al;->U:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/al;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
