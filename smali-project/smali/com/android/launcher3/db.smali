.class final Lcom/android/launcher3/db;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/cO;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cO;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/db;->a:Lcom/android/launcher3/cO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/android/launcher3/db;->a:Lcom/android/launcher3/cO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/cO;->d(Lcom/android/launcher3/cO;Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
