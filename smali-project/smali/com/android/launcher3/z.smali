.class final Lcom/android/launcher3/z;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:Lcom/android/launcher3/y;

.field e:Lcom/android/launcher3/y;

.field private f:Lcom/android/launcher3/fr;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;IILcom/android/launcher3/y;Lcom/android/launcher3/y;Lcom/android/launcher3/fr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/z;->a:I

    iput-object p2, p0, Lcom/android/launcher3/z;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/z;->d:Lcom/android/launcher3/y;

    iput-object p6, p0, Lcom/android/launcher3/z;->e:Lcom/android/launcher3/y;

    iput-object p7, p0, Lcom/android/launcher3/z;->f:Lcom/android/launcher3/fr;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/z;->f:Lcom/android/launcher3/fr;

    iget-object v0, p0, Lcom/android/launcher3/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/fr;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
