.class final Lcom/android/launcher3/v;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/u;


# direct methods
.method constructor <init>(Lcom/android/launcher3/u;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/v;->a:Lcom/android/launcher3/u;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/v;->a:Lcom/android/launcher3/u;

    invoke-static {v0}, Lcom/android/launcher3/u;->a(Lcom/android/launcher3/u;)Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/PagedViewWidget;->b(Z)V

    iget-object v0, p0, Lcom/android/launcher3/v;->a:Lcom/android/launcher3/u;

    invoke-static {v0}, Lcom/android/launcher3/u;->a(Lcom/android/launcher3/u;)Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/PagedViewWidget;->b(Z)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/v;->a()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/v;->a()V

    return-void
.end method
