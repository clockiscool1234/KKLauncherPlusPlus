.class final Lcom/android/launcher3/dd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Lcom/android/launcher3/bD;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher3/bD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dd;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher3/dd;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dd;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher3/dd;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    iget v0, v0, Lcom/android/launcher3/bD;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    iget-wide v2, v2, Lcom/android/launcher3/bD;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    iget-wide v2, v2, Lcom/android/launcher3/bD;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-wide v3, v0, Lcom/android/launcher3/bD;->h:J

    iget-object v5, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    iget-wide v5, v5, Lcom/android/launcher3/bD;->f:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleting a folder ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") which still contains items ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Launcher.Model"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/dd;->c:Lcom/android/launcher3/bD;

    check-cast v0, Lcom/android/launcher3/cF;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
