.class final Lcom/android/launcher3/fY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:Landroid/view/animation/DecelerateInterpolator;

.field private final b:Lcom/android/launcher3/fW;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/fY;->a:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Lcom/android/launcher3/fW;

    const v1, 0x3e051eb8    # 0.13f

    invoke-direct {v0, v1}, Lcom/android/launcher3/fW;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/fY;->b:Lcom/android/launcher3/fW;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fY;->a:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher3/fY;->b:Lcom/android/launcher3/fW;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/fW;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
