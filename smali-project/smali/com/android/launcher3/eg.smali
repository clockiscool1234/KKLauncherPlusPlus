.class public final Lcom/android/launcher3/eg;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/eg;->c:I

    iput p2, p0, Lcom/android/launcher3/eg;->d:I

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->requestLayout()V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/eg;->a:I

    iput p2, p0, Lcom/android/launcher3/eg;->b:I

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->requestLayout()V

    return-void
.end method

.method public final cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/eg;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/eg;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ef;

    iget v4, v0, Lcom/android/launcher3/ef;->a:I

    add-int/lit8 v4, v4, 0x0

    iget v5, v0, Lcom/android/launcher3/ef;->b:I

    iget v6, v0, Lcom/android/launcher3/ef;->width:I

    add-int/2addr v6, v4

    iget v0, v0, Lcom/android/launcher3/ef;->height:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v10, :cond_2

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/eg;->setMeasuredDimension(II)V

    return-void

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/launcher3/eg;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ef;

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getContext()Landroid/content/Context;

    iget v1, p0, Lcom/android/launcher3/eg;->a:I

    iget v2, p0, Lcom/android/launcher3/eg;->b:I

    iget v3, p0, Lcom/android/launcher3/eg;->c:I

    iget v4, p0, Lcom/android/launcher3/eg;->d:I

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/ef;->a(IIIIII)V

    iget v1, v0, Lcom/android/launcher3/ef;->width:I

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Lcom/android/launcher3/ef;->height:I

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/eg;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method protected final setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/eg;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
