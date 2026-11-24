.class final Lcom/android/launcher3/W;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Cling;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/W;->a:Lcom/android/launcher3/Cling;

    iput-object p2, p0, Lcom/android/launcher3/W;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/W;->a:Lcom/android/launcher3/Cling;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Cling;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/W;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
