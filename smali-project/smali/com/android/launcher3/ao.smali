.class final Lcom/android/launcher3/ao;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(FFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/launcher3/ao;->a:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher3/ao;->b:Landroid/graphics/PointF;

    return-void
.end method
