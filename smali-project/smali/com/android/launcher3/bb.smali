.class final Lcom/android/launcher3/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/FolderIcon;

.field private final synthetic b:Lcom/android/launcher3/ey;


# direct methods
.method constructor <init>(Lcom/android/launcher3/FolderIcon;Lcom/android/launcher3/ey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bb;->a:Lcom/android/launcher3/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/bb;->b:Lcom/android/launcher3/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bb;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->e(Lcom/android/launcher3/FolderIcon;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bb;->b:Lcom/android/launcher3/ey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/bb;->a:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->b(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bb;->b:Lcom/android/launcher3/ey;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Folder;->c(Lcom/android/launcher3/ey;)V

    iget-object v0, p0, Lcom/android/launcher3/bb;->a:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    return-void
.end method
