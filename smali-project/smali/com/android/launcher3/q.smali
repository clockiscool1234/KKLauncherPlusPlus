.class final Lcom/android/launcher3/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/AppsCustomizePagedView;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Lcom/android/launcher3/eh;

.field private final synthetic e:Z

.field private final synthetic f:I

.field private final synthetic g:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppsCustomizePagedView;IILcom/android/launcher3/eh;ZILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher3/q;->b:I

    iput p3, p0, Lcom/android/launcher3/q;->c:I

    iput-object p4, p0, Lcom/android/launcher3/q;->d:Lcom/android/launcher3/eh;

    iput-boolean p5, p0, Lcom/android/launcher3/q;->e:Z

    iput p6, p0, Lcom/android/launcher3/q;->f:I

    iput-object p7, p0, Lcom/android/launcher3/q;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/launcher3/q;->b:I

    iget v4, p0, Lcom/android/launcher3/q;->c:I

    iget-object v0, p0, Lcom/android/launcher3/q;->d:Lcom/android/launcher3/eh;

    invoke-virtual {v0}, Lcom/android/launcher3/eh;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/q;->d:Lcom/android/launcher3/eh;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/eh;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedViewWidget;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedViewWidget;->a()[I

    move-result-object v0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Lcom/android/launcher3/AppsCustomizePagedView;)Lcom/android/launcher3/ee;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher3/fr;->a(IILcom/android/launcher3/ee;)V

    iget-boolean v0, p0, Lcom/android/launcher3/q;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher3/z;

    iget v1, p0, Lcom/android/launcher3/q;->f:I

    iget-object v2, p0, Lcom/android/launcher3/q;->g:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/AppsCustomizePagedView;->b()Lcom/android/launcher3/fr;

    move-result-object v7

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/z;-><init>(ILjava/util/ArrayList;IILcom/android/launcher3/y;Lcom/android/launcher3/y;Lcom/android/launcher3/fr;)V

    iget-object v1, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v1, v5, v0}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;Lcom/android/launcher3/h;Lcom/android/launcher3/z;)V

    iget-object v1, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-boolean v2, p0, Lcom/android/launcher3/q;->e:Z

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;Lcom/android/launcher3/z;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/q;->d:Lcom/android/launcher3/eh;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/eh;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c(Lcom/android/launcher3/AppsCustomizePagedView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->d(Lcom/android/launcher3/AppsCustomizePagedView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    iget v7, p0, Lcom/android/launcher3/q;->f:I

    iget-object v8, p0, Lcom/android/launcher3/q;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/q;->a:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->e(Lcom/android/launcher3/AppsCustomizePagedView;)I

    move-result v11

    move v9, v3

    move v10, v4

    invoke-static/range {v6 .. v11}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/AppsCustomizePagedView;ILjava/util/ArrayList;III)V

    goto :goto_0
.end method
