.class final Lcom/android/launcher3/fS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:Lcom/android/launcher3/fW;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/fW;

    const v1, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1}, Lcom/android/launcher3/fW;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/fS;->a:Lcom/android/launcher3/fW;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/fS;->a:Lcom/android/launcher3/fW;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/fW;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method
