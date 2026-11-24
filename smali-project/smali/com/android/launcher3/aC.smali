.class final Lcom/android/launcher3/aC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/aA;


# direct methods
.method constructor <init>(Lcom/android/launcher3/aA;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aC;->a:Lcom/android/launcher3/aA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/aC;->a:Lcom/android/launcher3/aA;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/aA;->c(Lcom/android/launcher3/aA;F)V

    return-void
.end method
