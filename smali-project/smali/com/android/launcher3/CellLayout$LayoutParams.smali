.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field k:I

.field l:I

.field m:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->i:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->i:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->i:Z

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    return-void
.end method


# virtual methods
.method public final a(IIIIZI)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->h:Z

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    :goto_1
    if-eqz p5, :cond_0

    sub-int v0, p6, v0

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    sub-int/2addr v0, v4

    :cond_0
    mul-int v4, v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p3

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    mul-int v2, v3, p2

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    add-int v2, p1, p3

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    add-int v0, p2, p4

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->k:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->l:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
