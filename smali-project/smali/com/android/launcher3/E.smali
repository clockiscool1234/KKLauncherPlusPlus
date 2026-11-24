.class public Lcom/android/launcher3/E;
.super Landroid/widget/TextView;

# interfaces
.implements Lcom/android/launcher3/aF;
.implements Lcom/android/launcher3/aq;


# instance fields
.field protected final a:I

.field protected b:Lcom/android/launcher3/Launcher;

.field protected c:Lcom/android/launcher3/SearchDropTargetBar;

.field protected d:Z

.field protected e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/E;->e:I

    invoke-virtual {p0}, Lcom/android/launcher3/E;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/E;->a:I

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/E;->f:I

    return-void
.end method


# virtual methods
.method final a(IIII)Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/E;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/E;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/E;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, v0, p3

    :goto_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/E;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, p4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int v4, v3, p4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    sub-int v0, p1, p3

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p2, p4

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/E;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    add-int v0, v1, p3

    goto :goto_1
.end method

.method protected final a()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/E;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/E;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher3/E;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;[I)F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method final a(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/E;->b:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public final a(Lcom/android/launcher3/SearchDropTargetBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/E;->c:Lcom/android/launcher3/SearchDropTargetBar;

    return-void
.end method

.method public a(Lcom/android/launcher3/aH;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/launcher3/az;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/launcher3/aH;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/android/launcher3/aH;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/E;->d:Z

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lcom/android/launcher3/aH;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    iget v1, p0, Lcom/android/launcher3/E;->e:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->b(I)V

    return-void
.end method

.method public final d(Lcom/android/launcher3/aH;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/android/launcher3/aH;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->b(I)V

    return-void
.end method
