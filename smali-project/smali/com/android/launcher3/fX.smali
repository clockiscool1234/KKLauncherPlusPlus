.class final Lcom/android/launcher3/fX;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:Lcom/android/launcher3/fS;

.field private final b:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/fS;

    const v1, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1}, Lcom/android/launcher3/fS;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/fX;->a:Lcom/android/launcher3/fS;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/fX;->b:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fX;->b:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher3/fX;->a:Lcom/android/launcher3/fS;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/fS;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
