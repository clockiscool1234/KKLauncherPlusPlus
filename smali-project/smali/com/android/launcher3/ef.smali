.class public final Lcom/android/launcher3/ef;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field a:I

.field b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v1, p0, Lcom/android/launcher3/ef;->c:I

    iput v1, p0, Lcom/android/launcher3/ef;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/launcher3/ef;->c:I

    iput v0, p0, Lcom/android/launcher3/ef;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, p0, Lcom/android/launcher3/ef;->c:I

    iput v0, p0, Lcom/android/launcher3/ef;->d:I

    return-void
.end method


# virtual methods
.method public final a(IIIIII)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/ef;->c:I

    iget v1, p0, Lcom/android/launcher3/ef;->d:I

    mul-int v2, v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/ef;->leftMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/ef;->rightMargin:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/ef;->width:I

    mul-int v0, v1, p2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/ef;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/ef;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/ef;->height:I

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p1, p3

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr v0, p5

    iget v1, p0, Lcom/android/launcher3/ef;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/ef;->a:I

    add-int v0, p2, p4

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr v0, p6

    iget v1, p0, Lcom/android/launcher3/ef;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/ef;->b:I

    :goto_0
    return-void

    :cond_0
    add-int v0, p1, p3

    mul-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/android/launcher3/ef;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/ef;->a:I

    add-int v0, p2, p4

    mul-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/android/launcher3/ef;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/ef;->b:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ef;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ef;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
