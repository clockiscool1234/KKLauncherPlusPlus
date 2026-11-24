.class final Lcom/android/launcher3/fT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/dU;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/android/launcher3/aA;

.field private f:Landroid/view/View;

.field private synthetic g:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/aA;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/launcher3/fT;->a:I

    iput p4, p0, Lcom/android/launcher3/fT;->b:I

    iput p5, p0, Lcom/android/launcher3/fT;->c:I

    iput p6, p0, Lcom/android/launcher3/fT;->d:I

    iput-object p8, p0, Lcom/android/launcher3/fT;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/android/launcher3/fT;->e:Lcom/android/launcher3/aA;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x2

    new-array v9, v0, [I

    iget-object v7, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->h(Lcom/android/launcher3/Workspace;)[F

    move-result-object v1

    aget v1, v1, v11

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->h(Lcom/android/launcher3/Workspace;)[F

    move-result-object v2

    aget v2, v2, v10

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/fT;->a:I

    iget v4, p0, Lcom/android/launcher3/fT;->b:I

    iget-object v5, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v5}, Lcom/android/launcher3/Workspace;->i(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v6}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;[I)V

    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v1

    aget v1, v1, v11

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->b(Lcom/android/launcher3/Workspace;I)V

    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v1

    aget v1, v1, v10

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->c(Lcom/android/launcher3/Workspace;I)V

    iget-object v12, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->i(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->h(Lcom/android/launcher3/Workspace;)[F

    move-result-object v1

    aget v1, v1, v11

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->h(Lcom/android/launcher3/Workspace;)[F

    move-result-object v2

    aget v2, v2, v10

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/fT;->a:I

    iget v4, p0, Lcom/android/launcher3/fT;->b:I

    iget v5, p0, Lcom/android/launcher3/fT;->c:I

    iget v6, p0, Lcom/android/launcher3/fT;->d:I

    iget-object v7, p0, Lcom/android/launcher3/fT;->f:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v8}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v8

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->a(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;[I)V

    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v0

    aget v0, v0, v11

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v0

    aget v0, v0, v10

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->i(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->s()V

    :goto_0
    aget v0, v9, v11

    iget v1, p0, Lcom/android/launcher3/fT;->c:I

    if-ne v0, v1, :cond_2

    aget v0, v9, v10

    iget v1, p0, Lcom/android/launcher3/fT;->d:I

    if-ne v0, v1, :cond_2

    move v7, v11

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->i(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fT;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->k(Lcom/android/launcher3/Workspace;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v3}, Lcom/android/launcher3/Workspace;->h(Lcom/android/launcher3/Workspace;)[F

    iget-object v3, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v3}, Lcom/android/launcher3/Workspace;->h(Lcom/android/launcher3/Workspace;)[F

    iget-object v3, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v3}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v3

    aget v3, v3, v11

    iget-object v4, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    invoke-static {v4}, Lcom/android/launcher3/Workspace;->j(Lcom/android/launcher3/Workspace;)[I

    move-result-object v4

    aget v4, v4, v10

    aget v5, v9, v11

    aget v6, v9, v10

    iget-object v8, p0, Lcom/android/launcher3/fT;->e:Lcom/android/launcher3/aA;

    invoke-virtual {v8}, Lcom/android/launcher3/aA;->c()Landroid/graphics/Point;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/fT;->e:Lcom/android/launcher3/aA;

    invoke-virtual {v9}, Lcom/android/launcher3/aA;->d()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;Landroid/graphics/Bitmap;IIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/fT;->g:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->s(I)V

    goto :goto_0

    :cond_2
    move v7, v10

    goto :goto_1
.end method
