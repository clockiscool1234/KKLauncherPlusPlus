.class final Lcom/android/launcher3/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cb;->a:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/cb;->b:I

    iput-object p3, p0, Lcom/android/launcher3/cb;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/cb;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cb;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/cb;->b:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->o(I)V

    iget-object v0, p0, Lcom/android/launcher3/cb;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/cb;->c:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/launcher3/Launcher;->P()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
