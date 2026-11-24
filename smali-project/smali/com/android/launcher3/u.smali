.class final Lcom/android/launcher3/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizeTabHost;

.field private final synthetic b:Lcom/android/launcher3/r;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizeTabHost;Lcom/android/launcher3/r;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher3/u;->b:Lcom/android/launcher3/r;

    iput p3, p0, Lcom/android/launcher3/u;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/u;)Lcom/android/launcher3/AppsCustomizeTabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->d(Lcom/android/launcher3/AppsCustomizeTabHost;)V

    :goto_0
    return-void

    :cond_1
    new-array v1, v9, [I

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->b([I)V

    aget v0, v1, v6

    if-ne v0, v2, :cond_2

    aget v0, v1, v7

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->d(Lcom/android/launcher3/AppsCustomizeTabHost;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aget v0, v1, v6

    :goto_1
    aget v2, v1, v7

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->scrollTo(II)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->f(Lcom/android/launcher3/AppsCustomizeTabHost;)V

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget-object v1, p0, Lcom/android/launcher3/u;->b:Lcom/android/launcher3/r;

    invoke-static {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(Lcom/android/launcher3/AppsCustomizeTabHost;Lcom/android/launcher3/r;)V

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v7, [F

    const/4 v3, 0x0

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/v;

    invoke-direct {v1, p0}, Lcom/android/launcher3/v;-><init>(Lcom/android/launcher3/u;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v1

    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v8, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/w;

    invoke-direct {v2, p0}, Lcom/android/launcher3/w;-><init>(Lcom/android/launcher3/u;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v0, p0, Lcom/android/launcher3/u;->c:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v2}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v0, v1, Lcom/android/launcher3/i;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/i;

    invoke-virtual {v0}, Lcom/android/launcher3/i;->c()V

    :cond_5
    :goto_3
    invoke-static {v6}, Lcom/android/launcher3/PagedViewWidget;->a(Z)V

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->removeView(Landroid/view/View;)V

    invoke-static {v7}, Lcom/android/launcher3/PagedViewWidget;->a(Z)V

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/launcher3/u;->a:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v4}, Lcom/android/launcher3/AppsCustomizeTabHost;->e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2

    :cond_6
    instance-of v0, v1, Lcom/android/launcher3/eh;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/eh;

    invoke-virtual {v0}, Lcom/android/launcher3/eh;->e()V

    goto :goto_3
.end method
