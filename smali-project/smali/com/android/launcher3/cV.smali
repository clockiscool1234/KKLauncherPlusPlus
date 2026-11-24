.class final Lcom/android/launcher3/cV;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/launcher3/cO;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Lcom/android/launcher3/de;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cO;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/de;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cV;->a:Lcom/android/launcher3/cO;

    iput-object p2, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/cV;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/cV;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/cV;->e:Lcom/android/launcher3/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v12, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/cV;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/cV;->a:Lcom/android/launcher3/cO;

    iget-object v1, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v11}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/cV;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/cV;->a:Lcom/android/launcher3/cO;

    new-instance v0, Lcom/android/launcher3/cW;

    iget-object v2, p0, Lcom/android/launcher3/cV;->e:Lcom/android/launcher3/de;

    iget-object v5, p0, Lcom/android/launcher3/cV;->d:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/cW;-><init>(Lcom/android/launcher3/cV;Lcom/android/launcher3/de;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v6, v0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-object v1, v0, Lcom/android/launcher3/bD;->q:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/bD;->a()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    invoke-static {v1, v2, v11}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v3

    const/4 v1, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    invoke-static {v1, v2, v11}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;ILjava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v1

    move-object v7, v1

    :goto_4
    if-nez v7, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Coordinates should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_5
    const/4 v1, 0x1

    move v2, v1

    goto :goto_2

    :cond_6
    :try_start_2
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    instance-of v1, v0, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/android/launcher3/ey;

    move-object v1, v0

    :goto_5
    iget-object v0, p0, Lcom/android/launcher3/cV;->b:Landroid/content/Context;

    const-wide/16 v2, -0x64

    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [I

    const/4 v8, 0x0

    aget v6, v6, v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIZ)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    instance-of v1, v0, Lcom/android/launcher3/d;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/launcher3/d;

    invoke-virtual {v0}, Lcom/android/launcher3/d;->b()Lcom/android/launcher3/ey;

    move-result-object v1

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected info type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    move-object v7, v1

    goto :goto_4
.end method
