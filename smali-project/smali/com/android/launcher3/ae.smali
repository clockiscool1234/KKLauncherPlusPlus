.class final Lcom/android/launcher3/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DeleteDropTarget;

.field private final synthetic b:Landroid/content/ComponentName;

.field private final synthetic c:Lcom/android/launcher3/az;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Landroid/content/ComponentName;Lcom/android/launcher3/az;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ae;->a:Lcom/android/launcher3/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/ae;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/ae;->c:Lcom/android/launcher3/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/ae;->a:Lcom/android/launcher3/DeleteDropTarget;

    invoke-static {v1, v0}, Lcom/android/launcher3/DeleteDropTarget;->a(Lcom/android/launcher3/DeleteDropTarget;Z)V

    iget-object v1, p0, Lcom/android/launcher3/ae;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/ae;->a:Lcom/android/launcher3/DeleteDropTarget;

    invoke-virtual {v2}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/ae;->c:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/ae;->c:Lcom/android/launcher3/az;

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Folder;->b(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/ae;->c:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ae;->c:Lcom/android/launcher3/az;

    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->b(Z)V

    goto :goto_1
.end method
