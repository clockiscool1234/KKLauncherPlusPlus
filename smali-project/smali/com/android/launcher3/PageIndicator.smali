.class public Lcom/android/launcher3/PageIndicator;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:[I

.field private c:I

.field private d:Ljava/util/ArrayList;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->i:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PageIndicator;->c:I

    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    aput v3, v1, v3

    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/PageIndicator;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    return-void
.end method

.method private b(IZ)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PageIndicator;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/PageIndicator;->c:I

    add-int/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v6, v5, v0

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_3

    move v3, v2

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v0, v9}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_4

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v0, v9}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    aput v6, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->b:[I

    aput v5, v0, v4

    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    iget-object v7, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-lt v7, v6, :cond_5

    if-lt v7, v5, :cond_6

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PageIndicator;->removeView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    if-gt v6, v1, :cond_a

    if-ge v1, v5, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_8

    sub-int v7, v1, v6

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher3/PageIndicator;->addView(Landroid/view/View;I)V

    :cond_8
    if-ne v1, p1, :cond_9

    invoke-virtual {v0, v3}, Lcom/android/launcher3/PageIndicatorMarker;->a(Z)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v3}, Lcom/android/launcher3/PageIndicatorMarker;->b(Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v4}, Lcom/android/launcher3/PageIndicatorMarker;->b(Z)V

    goto :goto_3
.end method


# virtual methods
.method final a(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/PageIndicator;->e:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PageIndicator;->b(IZ)V

    return-void
.end method

.method final a(ILcom/android/launcher3/dW;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    iget v1, p2, Lcom/android/launcher3/dW;->a:I

    iget v2, p2, Lcom/android/launcher3/dW;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PageIndicatorMarker;->a(II)V

    return-void
.end method

.method final a(ILcom/android/launcher3/dW;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f040020

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicatorMarker;

    iget v2, p2, Lcom/android/launcher3/dW;->a:I

    iget v3, p2, Lcom/android/launcher3/dW;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/PageIndicatorMarker;->a(II)V

    iget-object v2, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/launcher3/PageIndicator;->e:I

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/PageIndicator;->b(IZ)V

    return-void
.end method

.method final a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/launcher3/PageIndicator;->e:I

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/PageIndicator;->b(IZ)V

    :cond_0
    return-void
.end method

.method final a(Ljava/util/ArrayList;Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    const v2, 0x7fffffff

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dW;

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/launcher3/PageIndicator;->a(ILcom/android/launcher3/dW;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final a(Z)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/PageIndicator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/PageIndicator;->a(IZ)V

    goto :goto_0
.end method
