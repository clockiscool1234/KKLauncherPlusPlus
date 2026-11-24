.class public final Lcom/android/launcher3/dD;
.super Ljava/lang/Object;


# static fields
.field private static D:F

.field private static E:F

.field private static x:F

.field private static final y:[F

.field private static final z:[F


# instance fields
.field private A:F

.field private final B:F

.field private C:F

.field private a:I

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

.field private l:J

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Landroid/animation/TimeInterpolator;

.field private s:Z

.field private t:F

.field private u:F

.field private v:I

.field private w:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const v14, 0x3e333333    # 0.175f

    const/4 v4, 0x0

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v11, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v2, v5

    double-to-float v0, v2

    sput v0, Lcom/android/launcher3/dD;->x:F

    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/dD;->y:[F

    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/dD;->z:[F

    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_0
    if-lt v5, v11, :cond_0

    sget-object v0, Lcom/android/launcher3/dD;->y:[F

    sget-object v2, Lcom/android/launcher3/dD;->z:[F

    aput v1, v2, v11

    aput v1, v0, v11

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/android/launcher3/dD;->D:F

    sput v1, Lcom/android/launcher3/dD;->E:F

    invoke-static {v1}, Lcom/android/launcher3/dD;->c(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/android/launcher3/dD;->E:F

    return-void

    :cond_0
    int-to-float v0, v5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    :goto_1
    sub-float v2, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    sub-float v8, v1, v2

    mul-float/2addr v8, v14

    const v9, 0x3eb33334    # 0.35000002f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-ltz v9, :cond_2

    cmpl-float v7, v8, v6

    if-lez v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/launcher3/dD;->y:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    :goto_2
    sub-float v2, v0, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-ltz v9, :cond_4

    cmpl-float v7, v8, v6

    if-lez v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/launcher3/dD;->z:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v14

    const v8, 0x3eb33334    # 0.35000002f

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/dD;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/dD;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->w:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    iput-object p2, p0, Lcom/android/launcher3/dD;->r:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dD;->B:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dD;->a(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->A:F

    iput-boolean p3, p0, Lcom/android/launcher3/dD;->s:Z

    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Lcom/android/launcher3/dD;->a(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->C:F

    return-void
.end method

.method private a(F)F
    .locals 2

    const v0, 0x43c10b3d

    iget v1, p0, Lcom/android/launcher3/dD;->B:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private b(F)D
    .locals 3

    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dD;->w:F

    iget v2, p0, Lcom/android/launcher3/dD;->C:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static c(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sget v0, Lcom/android/launcher3/dD;->D:F

    mul-float/2addr v0, p0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr v0, v1

    :goto_0
    sget v1, Lcom/android/launcher3/dD;->E:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    sub-float v0, v3, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v3, v0

    const v1, 0x3ebc5ab2

    const v2, 0x3f21d2a7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/dD;->d:I

    iget v0, p0, Lcom/android/launcher3/dD;->d:I

    iget v1, p0, Lcom/android/launcher3/dD;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/dD;->o:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    return-void
.end method

.method public final a(IIIII)V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/dD;->a:I

    iput-boolean v2, p0, Lcom/android/launcher3/dD;->q:Z

    iput p5, p0, Lcom/android/launcher3/dD;->m:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/dD;->l:J

    iput p1, p0, Lcom/android/launcher3/dD;->b:I

    iput v2, p0, Lcom/android/launcher3/dD;->c:I

    add-int v0, p1, p3

    iput v0, p0, Lcom/android/launcher3/dD;->d:I

    iput v2, p0, Lcom/android/launcher3/dD;->e:I

    int-to-float v0, p3

    iput v0, p0, Lcom/android/launcher3/dD;->o:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dD;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/dD;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dD;->n:F

    return-void
.end method

.method public final a(IIIIIIII)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/launcher3/dD;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dD;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/dD;->u:F

    :goto_0
    iget v1, p0, Lcom/android/launcher3/dD;->d:I

    iget v2, p0, Lcom/android/launcher3/dD;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/dD;->e:I

    iget v3, p0, Lcom/android/launcher3/dD;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v0, v2

    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    int-to-float v2, p3

    add-float/2addr v1, v2

    float-to-int p3, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    float-to-int p4, v0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dD;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dD;->t:F

    invoke-direct {p0, v2}, Lcom/android/launcher3/dD;->b(F)D

    move-result-wide v0

    sget v3, Lcom/android/launcher3/dD;->x:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/dD;->m:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/dD;->l:J

    iput p1, p0, Lcom/android/launcher3/dD;->b:I

    iput p2, p0, Lcom/android/launcher3/dD;->c:I

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/dD;->b(F)D

    move-result-wide v3

    sget v5, Lcom/android/launcher3/dD;->x:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    iget v7, p0, Lcom/android/launcher3/dD;->w:F

    iget v8, p0, Lcom/android/launcher3/dD;->C:F

    mul-float/2addr v7, v8

    float-to-double v7, v7

    sget v9, Lcom/android/launcher3/dD;->x:F

    float-to-double v9, v9

    div-double v5, v9, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    iput v2, p0, Lcom/android/launcher3/dD;->v:I

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/launcher3/dD;->f:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/launcher3/dD;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/dD;->h:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/dD;->i:I

    float-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/dD;->d:I

    iget v1, p0, Lcom/android/launcher3/dD;->d:I

    iget v2, p0, Lcom/android/launcher3/dD;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dD;->d:I

    iget v1, p0, Lcom/android/launcher3/dD;->d:I

    iget v2, p0, Lcom/android/launcher3/dD;->f:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/dD;->d:I

    float-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/launcher3/dD;->e:I

    iget v0, p0, Lcom/android/launcher3/dD;->e:I

    iget v1, p0, Lcom/android/launcher3/dD;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->e:I

    iget v0, p0, Lcom/android/launcher3/dD;->e:I

    iget v1, p0, Lcom/android/launcher3/dD;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->e:I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher3/dD;->t:F

    iget v1, p0, Lcom/android/launcher3/dD;->A:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/dD;->l:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto/16 :goto_0

    :cond_2
    int-to-float v0, p3

    div-float/2addr v0, v2

    move v1, v0

    goto/16 :goto_1

    :cond_3
    int-to-float v0, p4

    div-float/2addr v0, v2

    goto/16 :goto_2
.end method

.method public final a(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dD;->r:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dD;->j:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dD;->k:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dD;->d:I

    return v0
.end method

.method public final e()Z
    .locals 7

    const/4 v2, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    iget-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/launcher3/dD;->l:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iget v1, p0, Lcom/android/launcher3/dD;->m:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/launcher3/dD;->a:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/dD;->n:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/dD;->r:Landroid/animation/TimeInterpolator;

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/launcher3/dD;->c(F)F

    move-result v0

    :goto_2
    iget v1, p0, Lcom/android/launcher3/dD;->b:I

    iget v3, p0, Lcom/android/launcher3/dD;->o:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/dD;->j:I

    iget v1, p0, Lcom/android/launcher3/dD;->c:I

    iget v3, p0, Lcom/android/launcher3/dD;->p:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dD;->k:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/dD;->r:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    :pswitch_1
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/dD;->m:I

    int-to-float v1, v1

    div-float v3, v0, v1

    mul-float v0, v6, v3

    float-to-int v4, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    int-to-float v0, v4

    div-float v1, v0, v6

    add-int/lit8 v0, v4, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v6

    sget-object v5, Lcom/android/launcher3/dD;->y:[F

    aget v5, v5, v4

    sget-object v6, Lcom/android/launcher3/dD;->y:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    sub-float/2addr v4, v5

    sub-float/2addr v0, v1

    div-float v0, v4, v0

    sub-float v1, v3, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v5

    :cond_3
    iget v3, p0, Lcom/android/launcher3/dD;->v:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/dD;->m:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/dD;->u:F

    iget v0, p0, Lcom/android/launcher3/dD;->b:I

    iget v3, p0, Lcom/android/launcher3/dD;->d:I

    iget v4, p0, Lcom/android/launcher3/dD;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v3, p0, Lcom/android/launcher3/dD;->g:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v3, p0, Lcom/android/launcher3/dD;->f:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v0, p0, Lcom/android/launcher3/dD;->c:I

    iget v3, p0, Lcom/android/launcher3/dD;->e:I

    iget v4, p0, Lcom/android/launcher3/dD;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/dD;->k:I

    iget v0, p0, Lcom/android/launcher3/dD;->k:I

    iget v1, p0, Lcom/android/launcher3/dD;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->k:I

    iget v0, p0, Lcom/android/launcher3/dD;->k:I

    iget v1, p0, Lcom/android/launcher3/dD;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dD;->k:I

    iget v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v1, p0, Lcom/android/launcher3/dD;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/dD;->k:I

    iget v1, p0, Lcom/android/launcher3/dD;->e:I

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/android/launcher3/dD;->q:Z

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/android/launcher3/dD;->d:I

    iput v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v0, p0, Lcom/android/launcher3/dD;->e:I

    iput v0, p0, Lcom/android/launcher3/dD;->k:I

    iput-boolean v2, p0, Lcom/android/launcher3/dD;->q:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/dD;->d:I

    iput v0, p0, Lcom/android/launcher3/dD;->j:I

    iget v0, p0, Lcom/android/launcher3/dD;->e:I

    iput v0, p0, Lcom/android/launcher3/dD;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dD;->q:Z

    return-void
.end method
