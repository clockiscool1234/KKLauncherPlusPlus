.class final Lcom/android/launcher3/aV;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v1, v1, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v1, v1, Lcom/android/launcher3/bk;->h:J

    iget-object v3, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v3, v3, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v3, v3, Lcom/android/launcher3/bk;->i:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->a(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-object v0, v0, Lcom/android/launcher3/bk;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ey;

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    const v2, 0x7f040003

    invoke-virtual {v0, v2, v9, v1}, Lcom/android/launcher3/Launcher;->a(ILandroid/view/ViewGroup;Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v2, v2, Lcom/android/launcher3/bk;->h:J

    iget-object v4, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v4, v4, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v4, v4, Lcom/android/launcher3/bk;->i:J

    iget-object v6, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v6, v6, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget v6, v6, Lcom/android/launcher3/bk;->j:I

    iget-object v7, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v7, v7, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget v7, v7, Lcom/android/launcher3/bk;->k:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    move-object v1, v8

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    if-gt v0, v10, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-static {v0, v2}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/aF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v2, v0, Lcom/android/launcher3/Folder;->a:Lcom/android/launcher3/ap;

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/aF;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/aF;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/bk;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v2, v2, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v2, v2, Lcom/android/launcher3/bk;->h:J

    iget-object v4, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v4, v4, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v4, v4, Lcom/android/launcher3/bk;->i:J

    iget-object v6, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v6, v6, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget v6, v6, Lcom/android/launcher3/bk;->j:I

    iget-object v7, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v7, v7, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget v7, v7, Lcom/android/launcher3/bk;->k:I

    iget-object v8, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v8, v8, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget v8, v8, Lcom/android/launcher3/bk;->l:I

    iget-object v9, p0, Lcom/android/launcher3/aV;->a:Lcom/android/launcher3/Folder;

    iget-object v9, v9, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget v9, v9, Lcom/android/launcher3/bk;->m:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;JJIIII)V

    :cond_4
    return-void
.end method
