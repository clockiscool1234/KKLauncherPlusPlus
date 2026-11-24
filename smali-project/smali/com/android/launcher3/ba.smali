.class final Lcom/android/launcher3/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/dU;


# instance fields
.field private synthetic a:Lcom/android/launcher3/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bD;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bD;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    invoke-virtual {v0}, Lcom/android/launcher3/d;->b()Lcom/android/launcher3/ey;

    move-result-object v0

    iput v1, v0, Lcom/android/launcher3/ey;->l:I

    iput v1, v0, Lcom/android/launcher3/ey;->m:I

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/FolderIcon;->b(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/ey;)V

    iget-object v0, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->c(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/FolderIcon;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/ba;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/bD;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    goto :goto_0
.end method
