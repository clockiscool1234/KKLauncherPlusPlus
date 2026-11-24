.class final Lcom/android/launcher3/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/e;


# direct methods
.method constructor <init>(Lcom/android/launcher3/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/g;->a:Lcom/android/launcher3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/g;->a:Lcom/android/launcher3/e;

    invoke-virtual {v0}, Lcom/android/launcher3/e;->requestLayout()V

    return-void
.end method
