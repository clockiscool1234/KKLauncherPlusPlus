.class final Lcom/android/launcher3/bQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/android/launcher3/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/AppsCustomizeTabHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bQ;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bQ;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/bQ;->c:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/bQ;->a:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/bQ;->b:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/launcher3/bQ;->a:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/bQ;->c:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V

    return-void
.end method
