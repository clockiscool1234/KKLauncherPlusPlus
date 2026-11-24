.class final Lcom/android/launcher3/fR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/dU;


# instance fields
.field private a:Lcom/android/launcher3/CellLayout;

.field private b:I

.field private c:I

.field private synthetic d:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/fR;->a:Lcom/android/launcher3/CellLayout;

    iput p3, p0, Lcom/android/launcher3/fR;->b:I

    iput p4, p0, Lcom/android/launcher3/fR;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/be;->b()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/be;

    iget-object v2, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/be;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/be;)V

    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/fR;->b:I

    iget v2, p0, Lcom/android/launcher3/fR;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/be;->a(II)V

    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fR;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/be;->a(Lcom/android/launcher3/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/be;->a()V

    iget-object v0, p0, Lcom/android/launcher3/fR;->a:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/Workspace;->g(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/be;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/be;)V

    iget-object v0, p0, Lcom/android/launcher3/fR;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->r()V

    iget-object v0, p0, Lcom/android/launcher3/fR;->d:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->s(I)V

    return-void
.end method
