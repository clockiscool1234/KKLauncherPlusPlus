.class final Lcom/android/launcher3/bU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bU;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bU;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/bU;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/bU;->a:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/bU;->b:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/launcher3/bU;->a:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/bU;->c:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V

    return-void
.end method
