.class final Lcom/android/launcher3/fy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;

.field private final synthetic b:Lcom/android/launcher3/bD;

.field private final synthetic c:Lcom/android/launcher3/cE;

.field private final synthetic d:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/bD;Lcom/android/launcher3/cE;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fy;->a:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/fy;->b:Lcom/android/launcher3/bD;

    iput-object p3, p0, Lcom/android/launcher3/fy;->c:Lcom/android/launcher3/cE;

    iput-object p4, p0, Lcom/android/launcher3/fy;->d:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/fy;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/fy;->b:Lcom/android/launcher3/bD;

    iget-object v1, p0, Lcom/android/launcher3/fy;->c:Lcom/android/launcher3/cE;

    iget-object v2, p0, Lcom/android/launcher3/fy;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/cE;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method
