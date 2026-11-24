.class final Lcom/android/launcher3/ew;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/SearchDropTargetBar;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/ew;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/ew;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
