.class public final Lcom/android/launcher3/ee;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lcom/android/launcher3/dV;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/android/launcher3/eg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/ee;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/ee;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ee;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/al;->r:I

    iput v1, p0, Lcom/android/launcher3/ee;->e:I

    iput v1, p0, Lcom/android/launcher3/ee;->c:I

    iget v1, v0, Lcom/android/launcher3/al;->s:I

    iput v1, p0, Lcom/android/launcher3/ee;->f:I

    iput v1, p0, Lcom/android/launcher3/ee;->d:I

    iget v1, v0, Lcom/android/launcher3/al;->d:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/ee;->a:I

    iget v0, v0, Lcom/android/launcher3/al;->c:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/ee;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/ee;->j:I

    iput v0, p0, Lcom/android/launcher3/ee;->i:I

    iput v0, p0, Lcom/android/launcher3/ee;->h:I

    iput v0, p0, Lcom/android/launcher3/ee;->g:I

    new-instance v0, Lcom/android/launcher3/eg;

    invoke-direct {v0, p1}, Lcom/android/launcher3/eg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    iget v1, p0, Lcom/android/launcher3/ee;->e:I

    iget v2, p0, Lcom/android/launcher3/ee;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/eg;->b(II)V

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    iget v1, p0, Lcom/android/launcher3/ee;->i:I

    iget v2, p0, Lcom/android/launcher3/ee;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/eg;->a(II)V

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ee;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/ee;->e:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {v0}, Lcom/android/launcher3/eg;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/ee;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(II)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/ee;->e:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/ee;->i:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/ee;->e:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/ee;->f:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/ee;->j:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/ee;->f:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {v0}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/ee;->f:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public final cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ee;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/ef;

    return v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/launcher3/ef;

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/ef;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher3/ef;

    invoke-direct {v0, p1}, Lcom/android/launcher3/ef;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ee;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingTop()I

    move-result v4

    sub-int v5, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/ee;->a:I

    add-int/lit8 v0, v0, -0x1

    iget v5, p0, Lcom/android/launcher3/ee;->b:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher3/ee;->g:I

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/android/launcher3/ee;->h:I

    if-gez v6, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingTop()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/ee;->a:I

    iget v9, p0, Lcom/android/launcher3/ee;->c:I

    mul-int/2addr v8, v9

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/android/launcher3/ee;->b:I

    iget v9, p0, Lcom/android/launcher3/ee;->d:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    if-lez v0, :cond_3

    div-int v0, v6, v0

    :goto_0
    iput v0, p0, Lcom/android/launcher3/ee;->i:I

    if-lez v5, :cond_4

    div-int v0, v7, v5

    :goto_1
    iput v0, p0, Lcom/android/launcher3/ee;->j:I

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    iget v5, p0, Lcom/android/launcher3/ee;->i:I

    iget v6, p0, Lcom/android/launcher3/ee;->j:I

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/eg;->a(II)V

    :goto_2
    const/high16 v0, -0x80000000

    if-ne v4, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/ee;->a:I

    iget v3, p0, Lcom/android/launcher3/ee;->e:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/ee;->a:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher3/ee;->i:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/ee;->b:I

    iget v4, p0, Lcom/android/launcher3/ee;->f:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/ee;->b:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher3/ee;->j:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/ee;->setMeasuredDimension(II)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getChildCount()I

    move-result v3

    :goto_4
    if-lt v1, v3, :cond_6

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/ee;->setMeasuredDimension(II)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/launcher3/ee;->g:I

    iput v0, p0, Lcom/android/launcher3/ee;->i:I

    iget v0, p0, Lcom/android/launcher3/ee;->h:I

    iput v0, p0, Lcom/android/launcher3/ee;->j:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ee;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingTop()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0}, Lcom/android/launcher3/ee;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v0, v2

    move v2, v3

    goto :goto_3
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {v1}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/eg;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {v2}, Lcom/android/launcher3/eg;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/ee;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/ee;->b:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher3/ee;->f:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final setChildrenDrawingCacheEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ee;->k:Lcom/android/launcher3/eg;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/eg;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method
