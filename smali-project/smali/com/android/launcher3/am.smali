.class final Lcom/android/launcher3/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/android/launcher3/al;

.field private final synthetic b:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/launcher3/al;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/am;->a:Lcom/android/launcher3/al;

    iput-object p2, p0, Lcom/android/launcher3/am;->b:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/launcher3/ao;

    check-cast p2, Lcom/android/launcher3/ao;

    iget-object v0, p0, Lcom/android/launcher3/am;->a:Lcom/android/launcher3/al;

    iget-object v1, p0, Lcom/android/launcher3/am;->b:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/android/launcher3/ao;->b:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/al;->a(Lcom/android/launcher3/al;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/am;->a:Lcom/android/launcher3/al;

    iget-object v2, p0, Lcom/android/launcher3/am;->b:Landroid/graphics/PointF;

    iget-object v3, p2, Lcom/android/launcher3/ao;->b:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/al;->a(Lcom/android/launcher3/al;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
