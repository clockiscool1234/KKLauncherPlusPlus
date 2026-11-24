.class final Lcom/android/launcher3/fW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/fW;->a:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/launcher3/fW;->a:F

    iget v1, p0, Lcom/android/launcher3/fW;->a:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iget v1, p0, Lcom/android/launcher3/fW;->a:F

    iget v2, p0, Lcom/android/launcher3/fW;->a:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    return v0
.end method
