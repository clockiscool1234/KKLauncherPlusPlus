.class final Lcom/android/b/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/android/b/a/a;


# direct methods
.method private constructor <init>(Lcom/android/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/b/a/c;->a:Lcom/android/b/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/a/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/b/a/c;-><init>(Lcom/android/b/a/a;)V

    return-void
.end method

.method private b()Lcom/android/b/a/b;
    .locals 2

    iget-object v0, p0, Lcom/android/b/a/c;->a:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->d(Lcom/android/b/a/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/c;->a:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->e(Lcom/android/b/a/a;)Lcom/android/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/a/d;->a()Lcom/android/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/a/c;->a:Lcom/android/b/a/a;

    invoke-static {v0}, Lcom/android/b/a/a;->d(Lcom/android/b/a/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/b/a/c;->interrupt()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/b/a/c;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "TiledImageRenderer"

    const-string v1, "Interrupted while waiting for TileDecoder thread to finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final run()V
    .locals 2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/b/a/c;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/b/a/c;->b()Lcom/android/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/a/c;->a:Lcom/android/b/a/a;

    invoke-static {v1, v0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/a;Lcom/android/b/a/b;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
