.class final Lcom/android/launcher3/aS;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;I)V

    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cG;->i()Lcom/android/launcher3/Cling;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->d()V

    iget-object v1, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->bringToFront()V

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/android/launcher3/Folder;->d(Lcom/android/launcher3/Folder;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    iget-object v5, v5, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    iget-object v4, v4, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/aS;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0, v6}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;I)V

    return-void
.end method
