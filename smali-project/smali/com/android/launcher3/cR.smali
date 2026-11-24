.class final Lcom/android/launcher3/cR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Lcom/android/launcher3/bk;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/android/launcher3/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cR;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cR;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    iget-wide v1, v1, Lcom/android/launcher3/bk;->f:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/dF;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    iget-wide v2, v2, Lcom/android/launcher3/bk;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    iget-wide v2, v2, Lcom/android/launcher3/bk;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/cR;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/dF;->c:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "container="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    iget-wide v3, v3, Lcom/android/launcher3/bk;->f:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/cR;->b:Lcom/android/launcher3/bk;

    iget-object v0, v0, Lcom/android/launcher3/bk;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    sget-object v3, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/android/launcher3/bD;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
