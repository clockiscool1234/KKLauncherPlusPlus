.class public final Lcom/android/launcher3/eC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/dU;


# instance fields
.field a:Lcom/android/launcher3/a;

.field private b:Lcom/android/launcher3/CellLayout;

.field private c:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/eC;->c:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/eC;->a:Lcom/android/launcher3/a;

    iget-object v0, p0, Lcom/android/launcher3/eC;->a:Lcom/android/launcher3/a;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/eC;->b:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/eC;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/eC;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->C()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->o(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/eC;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->q()Lcom/android/launcher3/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/CellLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/eC;->a:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    iget-object v2, p0, Lcom/android/launcher3/eC;->a:Lcom/android/launcher3/a;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x3b6

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/a;->a(J)V

    iput-object p1, p0, Lcom/android/launcher3/eC;->b:Lcom/android/launcher3/CellLayout;

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_0
.end method
