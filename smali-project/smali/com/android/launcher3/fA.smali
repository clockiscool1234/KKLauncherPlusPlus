.class final Lcom/android/launcher3/fA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Workspace;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fA;->a:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/fA;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/fA;->a:Lcom/android/launcher3/Workspace;

    iput-boolean v2, v0, Lcom/android/launcher3/Workspace;->a:Z

    iget-object v0, p0, Lcom/android/launcher3/fA;->a:Lcom/android/launcher3/Workspace;

    invoke-static {v0, v2}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Workspace;Z)V

    iget-object v0, p0, Lcom/android/launcher3/fA;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fA;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/fA;->a:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;IZ)V

    return-void
.end method
