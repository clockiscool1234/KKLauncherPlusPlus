.class final Lcom/android/launcher3/Q;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Lcom/android/launcher3/M;

.field c:[I

.field d:[I

.field e:[I

.field f:[I

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Lcom/android/launcher3/R;

.field private l:Landroid/graphics/Rect;

.field private m:Z

.field private synthetic n:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/M;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/Q;->n:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Q;->l:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Q;->c:[I

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Q;->d:[I

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->b(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Q;->e:[I

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->b(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Q;->f:[I

    new-instance v0, Lcom/android/launcher3/R;

    invoke-direct {v0, p0}, Lcom/android/launcher3/R;-><init>(Lcom/android/launcher3/Q;)V

    iput-object v0, p0, Lcom/android/launcher3/Q;->k:Lcom/android/launcher3/R;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    invoke-virtual {p0}, Lcom/android/launcher3/Q;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Q;->n:Lcom/android/launcher3/CellLayout;

    invoke-static {v2}, Lcom/android/launcher3/CellLayout;->b(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    if-lt v0, v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Q;->n:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-lt v1, v0, :cond_1

    iput-boolean v3, p0, Lcom/android/launcher3/Q;->g:Z

    iput-boolean v3, p0, Lcom/android/launcher3/Q;->h:Z

    iput-boolean v3, p0, Lcom/android/launcher3/Q;->j:Z

    iput-boolean v3, p0, Lcom/android/launcher3/Q;->i:Z

    iput-boolean v3, p0, Lcom/android/launcher3/Q;->m:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Q;->e:[I

    aput v4, v2, v0

    iget-object v2, p0, Lcom/android/launcher3/Q;->f:[I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Q;->c:[I

    aput v4, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/Q;->d:[I

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final a(I[I)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v0, v0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/K;

    packed-switch p1, :pswitch_data_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    iget v4, v0, Lcom/android/launcher3/K;->a:I

    iget v1, v0, Lcom/android/launcher3/K;->b:I

    :goto_1
    iget v5, v0, Lcom/android/launcher3/K;->b:I

    iget v6, v0, Lcom/android/launcher3/K;->d:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    aget v5, p2, v1

    if-lt v4, v5, :cond_2

    aget v5, p2, v1

    if-gez v5, :cond_3

    :cond_2
    aput v4, p2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    iget v1, v0, Lcom/android/launcher3/K;->a:I

    iget v4, v0, Lcom/android/launcher3/K;->c:I

    add-int/2addr v4, v1

    iget v1, v0, Lcom/android/launcher3/K;->b:I

    :goto_2
    iget v5, v0, Lcom/android/launcher3/K;->b:I

    iget v6, v0, Lcom/android/launcher3/K;->d:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    aget v5, p2, v1

    if-le v4, v5, :cond_4

    aput v4, p2, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_2
    iget v4, v0, Lcom/android/launcher3/K;->b:I

    iget v1, v0, Lcom/android/launcher3/K;->a:I

    :goto_3
    iget v5, v0, Lcom/android/launcher3/K;->a:I

    iget v6, v0, Lcom/android/launcher3/K;->c:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    aget v5, p2, v1

    if-lt v4, v5, :cond_5

    aget v5, p2, v1

    if-gez v5, :cond_6

    :cond_5
    aput v4, p2, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_3
    iget v1, v0, Lcom/android/launcher3/K;->b:I

    iget v4, v0, Lcom/android/launcher3/K;->d:I

    add-int/2addr v4, v1

    iget v1, v0, Lcom/android/launcher3/K;->a:I

    :goto_4
    iget v5, v0, Lcom/android/launcher3/K;->a:I

    iget v6, v0, Lcom/android/launcher3/K;->c:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    aget v5, p2, v1

    if-le v4, v5, :cond_7

    aput v4, p2, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final b()Landroid/graphics/Rect;
    .locals 8

    iget-boolean v0, p0, Lcom/android/launcher3/Q;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Q;->l:Landroid/graphics/Rect;

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/Q;->b:Lcom/android/launcher3/M;

    iget-object v3, v3, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/K;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Q;->l:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/launcher3/K;->a:I

    iget v4, v0, Lcom/android/launcher3/K;->b:I

    iget v5, v0, Lcom/android/launcher3/K;->a:I

    iget v6, v0, Lcom/android/launcher3/K;->c:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/launcher3/K;->b:I

    iget v0, v0, Lcom/android/launcher3/K;->d:I

    add-int/2addr v0, v6

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/Q;->l:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/launcher3/K;->a:I

    iget v5, v0, Lcom/android/launcher3/K;->b:I

    iget v6, v0, Lcom/android/launcher3/K;->a:I

    iget v7, v0, Lcom/android/launcher3/K;->c:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/K;->b:I

    iget v0, v0, Lcom/android/launcher3/K;->d:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0
.end method
