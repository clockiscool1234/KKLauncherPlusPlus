.class final Lcom/android/launcher3/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/av;->a:Lcom/android/launcher3/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/av;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v1}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/aA;->setAlpha(F)V

    return-void
.end method
