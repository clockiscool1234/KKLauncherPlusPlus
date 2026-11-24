.class final Lcom/android/launcher3/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/be;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/be;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bh;->a:Lcom/android/launcher3/be;

    iput p2, p0, Lcom/android/launcher3/bh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/bh;->a:Lcom/android/launcher3/be;

    sub-float v2, v4, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/launcher3/bh;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/be;->c:F

    iget-object v1, p0, Lcom/android/launcher3/bh;->a:Lcom/android/launcher3/be;

    sub-float v0, v4, v0

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    iget v2, p0, Lcom/android/launcher3/bh;->b:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/be;->d:F

    iget-object v0, p0, Lcom/android/launcher3/bh;->a:Lcom/android/launcher3/be;

    invoke-static {v0}, Lcom/android/launcher3/be;->a(Lcom/android/launcher3/be;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bh;->a:Lcom/android/launcher3/be;

    invoke-static {v0}, Lcom/android/launcher3/be;->a(Lcom/android/launcher3/be;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method
