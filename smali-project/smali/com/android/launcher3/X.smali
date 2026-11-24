.class final Lcom/android/launcher3/X;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Cling;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Cling;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/X;->a:Lcom/android/launcher3/Cling;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/X;->a:Lcom/android/launcher3/Cling;

    invoke-static {v0}, Lcom/android/launcher3/Cling;->a(Lcom/android/launcher3/Cling;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
