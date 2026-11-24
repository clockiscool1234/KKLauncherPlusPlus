.class final Lcom/android/launcher3/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:I

.field private b:F

.field private final synthetic c:J

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;JI)V
    .locals 1

    iput-wide p2, p0, Lcom/android/launcher3/ai;->c:J

    iput p4, p0, Lcom/android/launcher3/ai;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/ai;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ai;->b:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 5

    iget v0, p0, Lcom/android/launcher3/ai;->a:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/ai;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ai;->a:I

    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/ai;->b:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/ai;->a:I

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher3/ai;->c:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/ai;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ai;->b:F

    iget v0, p0, Lcom/android/launcher3/ai;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ai;->a:I

    goto :goto_0
.end method
