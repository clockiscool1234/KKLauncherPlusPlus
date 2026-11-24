.class final Lcom/android/launcher3/dc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/content/ContentValues;

.field private final synthetic d:Lcom/android/launcher3/bD;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher3/bD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dc;->a:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/android/launcher3/dc;->b:Z

    iput-object p3, p0, Lcom/android/launcher3/dc;->c:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/dc;->a:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/android/launcher3/dc;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/dc;->c:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget-wide v2, v0, Lcom/android/launcher3/bD;->f:J

    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher3/cO;->a(JLcom/android/launcher3/bD;[Ljava/lang/StackTraceElement;)V

    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget-wide v2, v2, Lcom/android/launcher3/bD;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget v0, v0, Lcom/android/launcher3/bD;->g:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher3/dF;->c:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget-wide v3, v0, Lcom/android/launcher3/bD;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    check-cast v0, Lcom/android/launcher3/bk;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget-wide v2, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v4, -0x64

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget-wide v2, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    iget-wide v2, v2, Lcom/android/launcher3/bD;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adding item: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to a folder that  doesn\'t exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    sget-object v2, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher3/dc;->d:Lcom/android/launcher3/bD;

    check-cast v0, Lcom/android/launcher3/cF;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
