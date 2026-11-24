.class final Lcom/android/launcher3/H;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/bB;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/bB;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/H;->a:Lcom/android/launcher3/bB;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/H;->a:Lcom/android/launcher3/bB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bB;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
