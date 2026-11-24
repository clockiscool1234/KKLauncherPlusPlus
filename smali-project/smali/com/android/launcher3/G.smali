.class final Lcom/android/launcher3/G;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/CellLayout;

.field private final synthetic b:Lcom/android/launcher3/bB;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/bB;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/G;->a:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/G;->b:Lcom/android/launcher3/bB;

    iput p3, p0, Lcom/android/launcher3/G;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/G;->b:Lcom/android/launcher3/bB;

    invoke-virtual {v0}, Lcom/android/launcher3/bB;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/G;->a:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->f(Lcom/android/launcher3/CellLayout;)[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/G;->c:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/android/launcher3/G;->a:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/G;->a:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/CellLayout;->g(Lcom/android/launcher3/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/G;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
