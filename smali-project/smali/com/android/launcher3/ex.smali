.class public final Lcom/android/launcher3/ex;
.super Landroid/view/ViewGroup;


# instance fields
.field private final a:[I

.field private final b:Landroid/app/WallpaperManager;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ex;->a:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ex;->i:Z

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ex;->b:Landroid/app/WallpaperManager;

    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/launcher3/ex;->i:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method final a()I
    .locals 3

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getMeasuredHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/ex;->c:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/android/launcher3/al;->z:I

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, v0, Lcom/android/launcher3/al;->r:I

    goto :goto_0
.end method

.method public final a(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/ex;->d:I

    iput p2, p0, Lcom/android/launcher3/ex;->e:I

    iput p3, p0, Lcom/android/launcher3/ex;->f:I

    iput p4, p0, Lcom/android/launcher3/ex;->g:I

    iput p5, p0, Lcom/android/launcher3/ex;->h:I

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v7

    iget v1, p0, Lcom/android/launcher3/ex;->d:I

    iget v2, p0, Lcom/android/launcher3/ex;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->i:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/ex;->f:I

    iget v4, p0, Lcom/android/launcher3/ex;->g:I

    invoke-direct {p0}, Lcom/android/launcher3/ex;->c()Z

    move-result v5

    iget v6, p0, Lcom/android/launcher3/ex;->h:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->a(IIIIZI)V

    instance-of v1, p1, Lcom/android/launcher3/cE;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->b()I

    move-result v1

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v2, v7, Lcom/android/launcher3/al;->j:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {p1, v2, v1, v2, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    iput v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    iput v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/CellLayout$LayoutParams;)V
    .locals 7

    iget v1, p0, Lcom/android/launcher3/ex;->d:I

    iget v2, p0, Lcom/android/launcher3/ex;->e:I

    iget v3, p0, Lcom/android/launcher3/ex;->f:I

    iget v4, p0, Lcom/android/launcher3/ex;->g:I

    invoke-direct {p0}, Lcom/android/launcher3/ex;->c()Z

    move-result v5

    iget v6, p0, Lcom/android/launcher3/ex;->h:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->a(IIIIZI)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/ex;->i:Z

    return-void
.end method

.method final b()I
    .locals 3

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getMeasuredHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/ex;->c:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/android/launcher3/al;->A:I

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, v0, Lcom/android/launcher3/al;->s:I

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/ex;->c:Z

    return-void
.end method

.method public final cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    iget v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    iget v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v3

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v1, v3, v5, v0, v2}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->m:Z

    iget-object v6, p0, Lcom/android/launcher3/ex;->a:[I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/ex;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/launcher3/ex;->b:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v9, 0x0

    aget v9, v6, v9

    add-int/2addr v3, v9

    iget v9, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    const/4 v9, 0x1

    aget v6, v6, v9

    add-int/2addr v5, v6

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/ex;->setMeasuredDimension(II)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/ex;->a(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ex;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method protected final setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
