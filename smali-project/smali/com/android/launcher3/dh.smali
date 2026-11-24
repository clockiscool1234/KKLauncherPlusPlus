.class final Lcom/android/launcher3/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dg;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dh;->a:Lcom/android/launcher3/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/dh;->a:Lcom/android/launcher3/dg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/dh;->a:Lcom/android/launcher3/dg;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/dg;Z)V

    iget-object v0, p0, Lcom/android/launcher3/dh;->a:Lcom/android/launcher3/dg;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
