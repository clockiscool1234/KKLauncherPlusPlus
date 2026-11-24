.class final Lcom/android/launcher3/dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/util/HashMap;

.field private synthetic h:Lcom/android/launcher3/cO;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cO;Landroid/content/Context;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/launcher3/dg;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dg;->g:Ljava/util/HashMap;

    iput p4, p0, Lcom/android/launcher3/dg;->f:I

    return-void
.end method

.method private a(IZ)V
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v2}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/de;

    if-nez v15, :cond_0

    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v2, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v2, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, -0x3e9

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    move/from16 v20, v2

    :goto_1
    if-eqz v20, :cond_4

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_1

    const/16 p1, -0x3e9

    :cond_1
    if-gez p1, :cond_5

    const-wide/16 v3, -0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-virtual {v2}, Lcom/android/launcher3/cO;->b()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/dg;->a(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v3, v4, v8, v0, v1}, Lcom/android/launcher3/dg;->b(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-wide v8, v3

    invoke-static/range {v8 .. v13}, Lcom/android/launcher3/dg;->a(JLjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/dg;->a(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/dg;->a(Ljava/util/ArrayList;)V

    new-instance v2, Lcom/android/launcher3/dr;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/android/launcher3/dr;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    new-instance v2, Lcom/android/launcher3/dn;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15, v14}, Lcom/android/launcher3/dn;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, v6

    move-object/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/de;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    if-eqz v20, :cond_2

    new-instance v2, Lcom/android/launcher3/ds;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v15, v1}, Lcom/android/launcher3/ds;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    :cond_2
    sget-object v2, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v20, :cond_6

    sget-object v19, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    :goto_4
    move-object/from16 v14, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v23

    move-object/from16 v18, v13

    invoke-direct/range {v14 .. v19}, Lcom/android/launcher3/dg;->a(Lcom/android/launcher3/de;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    new-instance v13, Lcom/android/launcher3/di;

    move-object/from16 v14, p0

    move/from16 v16, p2

    move-wide/from16 v17, v21

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/di;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;ZJ)V

    if-eqz v20, :cond_7

    sget-object v2, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_1

    :cond_4
    invoke-interface {v15}, Lcom/android/launcher3/de;->B()I

    move-result p1

    goto/16 :goto_2

    :cond_5
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto/16 :goto_3

    :cond_6
    const/16 v19, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v3, 0x1

    invoke-static {v2, v13, v3}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    goto/16 :goto_0
.end method

.method private a(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Lcom/android/launcher3/dl;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dl;-><init>(Lcom/android/launcher3/dg;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-wide v3, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, v0, Lcom/android/launcher3/bD;->i:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, v0, Lcom/android/launcher3/bD;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-wide v3, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, v0, Lcom/android/launcher3/bD;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-wide v3, v0, Lcom/android/launcher3/bD;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, v0, Lcom/android/launcher3/bD;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(JLjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/bk;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-wide v5, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-wide v5, v0, Lcom/android/launcher3/bD;->i:J

    cmp-long v0, v5, p0

    if-nez v0, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/android/launcher3/de;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p5, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v4, v8

    :goto_1
    if-lt v4, v9, :cond_2

    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/dp;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/launcher3/dp;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/HashMap;)V

    if-eqz v6, :cond_5

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-lt v8, v1, :cond_6

    return-void

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v4, 0x6

    if-gt v0, v9, :cond_3

    const/4 v5, 0x6

    :goto_4
    new-instance v0, Lcom/android/launcher3/do;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/do;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/ArrayList;II)V

    if-eqz v6, :cond_4

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    :cond_3
    sub-int v5, v9, v4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1, v0, v7}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1, v0, v7}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/cF;

    new-instance v2, Lcom/android/launcher3/dq;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/dq;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Lcom/android/launcher3/cF;)V

    if-eqz v6, :cond_7

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0, v2, v7}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V

    goto :goto_6
.end method

.method static synthetic a(Lcom/android/launcher3/dg;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dg;->e:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dm;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/dm;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/al;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 10

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iget v0, v1, Lcom/android/launcher3/al;->d:F

    float-to-int v2, v0

    iget v0, v1, Lcom/android/launcher3/al;->c:F

    float-to-int v3, v0

    iget-wide v4, p2, Lcom/android/launcher3/bD;->i:J

    iget-wide v6, p2, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v8, -0x65

    cmp-long v0, v6, v8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    iget-wide v2, p2, Lcom/android/launcher3/bD;->i:J

    long-to-int v2, v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/de;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading shortcut into hotseat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into position ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/bD;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/bD;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") occupied by all apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-wide/16 v2, -0x65

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/bD;

    iget-wide v2, p2, Lcom/android/launcher3/bD;->i:J

    long-to-float v2, v2

    iget v3, v1, Lcom/android/launcher3/al;->e:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading shortcut "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into hotseat position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", position out of bounds: (0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/android/launcher3/al;->e:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    iget-wide v1, p2, Lcom/android/launcher3/bD;->i:J

    long-to-int v1, v1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    const-string v1, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error loading shortcut into hotseat "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " into position ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Lcom/android/launcher3/bD;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Lcom/android/launcher3/bD;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") occupied by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, -0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/bD;

    iget-wide v3, p2, Lcom/android/launcher3/bD;->i:J

    long-to-int v3, v3

    aget-object v0, v0, v3

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget-wide v1, p2, Lcom/android/launcher3/bD;->i:J

    long-to-int v1, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    iget v0, v1, Lcom/android/launcher3/al;->e:F

    float-to-int v0, v0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/android/launcher3/bD;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/bD;

    iget-wide v1, p2, Lcom/android/launcher3/bD;->i:J

    long-to-int v1, v1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-wide/16 v1, -0x65

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-wide v0, p2, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v6, -0x64

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p2, Lcom/android/launcher3/bD;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v3, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/android/launcher3/bD;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/bD;

    iget-wide v6, p2, Lcom/android/launcher3/bD;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-wide v0, p2, Lcom/android/launcher3/bD;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/launcher3/bD;

    iget-wide v6, p2, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v8, -0x64

    cmp-long v1, v6, v8

    if-nez v1, :cond_8

    iget v1, p2, Lcom/android/launcher3/bD;->j:I

    if-ltz v1, :cond_9

    :cond_8
    iget v1, p2, Lcom/android/launcher3/bD;->k:I

    if-ltz v1, :cond_9

    iget v1, p2, Lcom/android/launcher3/bD;->j:I

    iget v6, p2, Lcom/android/launcher3/bD;->l:I

    add-int/2addr v1, v6

    if-gt v1, v2, :cond_9

    iget v1, p2, Lcom/android/launcher3/bD;->k:I

    iget v6, p2, Lcom/android/launcher3/bD;->m:I

    add-int/2addr v1, v6

    if-le v1, v3, :cond_a

    :cond_9
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Error loading shortcut "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " into cell ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p2, Lcom/android/launcher3/bD;->j:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p2, Lcom/android/launcher3/bD;->k:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") out of screen bounds ( "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    iget v1, p2, Lcom/android/launcher3/bD;->j:I

    move v2, v1

    :goto_1
    iget v1, p2, Lcom/android/launcher3/bD;->j:I

    iget v3, p2, Lcom/android/launcher3/bD;->l:I

    add-int/2addr v1, v3

    if-lt v2, v1, :cond_b

    iget v1, p2, Lcom/android/launcher3/bD;->j:I

    :goto_2
    iget v2, p2, Lcom/android/launcher3/bD;->j:I

    iget v3, p2, Lcom/android/launcher3/bD;->l:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    iget v1, p2, Lcom/android/launcher3/bD;->k:I

    :goto_3
    iget v3, p2, Lcom/android/launcher3/bD;->k:I

    iget v6, p2, Lcom/android/launcher3/bD;->m:I

    add-int/2addr v3, v6

    if-lt v1, v3, :cond_c

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_c
    aget-object v3, v0, v2

    aget-object v3, v3, v1

    if-eqz v3, :cond_d

    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error loading shortcut "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into cell ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") occupied by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v0, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    iget v2, p2, Lcom/android/launcher3/bD;->k:I

    :goto_4
    iget v3, p2, Lcom/android/launcher3/bD;->k:I

    iget v4, p2, Lcom/android/launcher3/bD;->m:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    aget-object v3, v0, v1

    aput-object p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private static b(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/cF;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/launcher3/cF;->h:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/android/launcher3/cF;->i:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/launcher3/dg;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dg;->c:Z

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dg;->c:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/dg;->h()Z

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher3/dg;->d:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/dg;->a(IZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->i(Lcom/android/launcher3/cO;)Lcom/android/launcher3/cB;

    invoke-static {}, Lcom/android/launcher3/cB;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v0, v0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v0, v0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v5, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v6, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-static {v5, v6}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Missing Application on load: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static g()V
    .locals 2

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()Z
    .locals 43

    const-string v3, "Launcher.Model"

    const-string v4, "11683562 - loadWorkspace()"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {v14}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v23

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v4

    iget v5, v4, Lcom/android/launcher3/al;->d:F

    iget v4, v4, Lcom/android/launcher3/al;->c:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/dg;->f:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    const-string v5, "loadWorkspace: resetting launcher database"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider;->f()V

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/dg;->f:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    const-string v4, "Launcher.Model"

    const-string v5, "loadWorkspace: migrating from launcher2"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider;->e()V

    :goto_0
    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider;->d()Z

    move-result v20

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "11683562 -   loadedOldDb: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v24, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v24

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/dg;->g()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "_id"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v5, "intent"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v5, "title"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v5, "iconType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v5, "icon"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v5, "iconPackage"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v5, "iconResource"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v5, "container"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    const-string v5, "itemType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v5, "appWidgetId"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v5, "appWidgetProvider"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    const-string v5, "screen"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const-string v5, "cellX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    const-string v5, "cellY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    const-string v5, "spanX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    const-string v5, "spanY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    const-string v5, "restored"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/dg;->d:Z

    if-nez v5, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/dg;->d:Z

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/android/launcher3/dg;->g()V

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_4
    const-string v4, "Launcher.Model"

    const-string v5, "loadWorkspace: loading default favorites"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherProvider;->a(I)V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    new-instance v40, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v0, v39

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    :goto_3
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    const/4 v7, 0x0

    :try_start_5
    invoke-static {v8, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_c

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v5, :cond_a

    const-string v13, "Launcher.Model"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "package not yet restored: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v13, v12, v0}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_4
    if-eqz v5, :cond_d

    :try_start_6
    const-string v5, "Launcher.Model"

    const-string v6, "constructing info for partially restored package"

    const/4 v8, 0x1

    invoke-static {v5, v6, v8}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-virtual {v5, v9, v11}, Lcom/android/launcher3/cO;->a(Landroid/database/Cursor;I)Lcom/android/launcher3/ey;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v6, v9, v14, v7}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    :cond_7
    :goto_5
    if-eqz v5, :cond_10

    move-wide/from16 v0, v41

    iput-wide v0, v5, Lcom/android/launcher3/ey;->f:J

    iput-object v7, v5, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v7, v6

    iput-wide v7, v5, Lcom/android/launcher3/ey;->h:J

    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v5, Lcom/android/launcher3/ey;->i:J

    move/from16 v0, v35

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/ey;->j:I

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/ey;->k:I

    const/4 v7, 0x1

    iput v7, v5, Lcom/android/launcher3/ey;->l:I

    const/4 v7, 0x1

    iput v7, v5, Lcom/android/launcher3/ey;->m:I

    const/4 v7, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher3/dg;->a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :try_start_7
    const-string v6, "Launcher.Model"

    const-string v7, "Desktop items loading interrupted"

    const/4 v8, 0x1

    invoke-static {v6, v7, v5, v8}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v24

    throw v3

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v5}, Lcom/android/launcher3/cO;->j(Lcom/android/launcher3/cO;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid package removed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v5

    :try_start_a
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    :cond_b
    :try_start_b
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid package found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_c
    if-eqz v5, :cond_6

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_d
    if-nez v6, :cond_e

    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/dg;->g:Ljava/util/HashMap;

    move-object/from16 v6, v21

    move-object v8, v14

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher3/ey;

    move-result-object v5

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    move-object v13, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-static/range {v12 .. v19}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher3/ey;

    move-result-object v5

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x10200000

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_f
    packed-switch v6, :pswitch_data_1

    sget-object v7, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    int-to-long v12, v6

    invoke-static {v7, v12, v13}, Lcom/android/launcher3/cO;->a(Ljava/util/HashMap;J)Lcom/android/launcher3/bk;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/bk;->a(Lcom/android/launcher3/ey;)V

    :goto_6
    sget-object v6, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-wide v7, v5, Lcom/android/launcher3/ey;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    sget-object v7, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v5, v9, v10}, Lcom/android/launcher3/cO;->a(Ljava/util/HashMap;Lcom/android/launcher3/ey;Landroid/database/Cursor;I)Z

    goto/16 :goto_1

    :pswitch_2
    sget-object v6, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected null ShortcutInfo"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_3
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    invoke-static {v8, v6, v7}, Lcom/android/launcher3/cO;->a(Ljava/util/HashMap;J)Lcom/android/launcher3/bk;

    move-result-object v8

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    iput-wide v6, v8, Lcom/android/launcher3/bk;->f:J

    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    int-to-long v0, v12

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/android/launcher3/bk;->h:J

    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/android/launcher3/bk;->i:J

    move/from16 v0, v35

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v8, Lcom/android/launcher3/bk;->j:I

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v8, Lcom/android/launcher3/bk;->k:I

    const/4 v13, 0x1

    iput v13, v8, Lcom/android/launcher3/bk;->l:I

    const/4 v13, 0x1

    iput v13, v8, Lcom/android/launcher3/bk;->m:I

    const/4 v13, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v8, v2}, Lcom/android/launcher3/dg;->a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    packed-switch v12, :pswitch_data_2

    :goto_7
    if-eqz v5, :cond_12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v5, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-wide v6, v8, Lcom/android/launcher3/bk;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    iget-wide v6, v8, Lcom/android/launcher3/bk;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    sget-object v12, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_5
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    if-nez v23, :cond_14

    if-eqz v12, :cond_13

    iget-object v13, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v13, :cond_13

    iget-object v13, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_14

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Deleting widget that isn\'t installed anymore: id="

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " appWidgetId="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Launcher.Model"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Launcher.Model"

    const/4 v12, 0x0

    invoke-static {v6, v5, v12}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    new-instance v13, Lcom/android/launcher3/cF;

    iget-object v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v5, v0}, Lcom/android/launcher3/cF;-><init>(ILandroid/content/ComponentName;)V

    iput-wide v7, v13, Lcom/android/launcher3/cF;->f:J

    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/android/launcher3/cF;->i:J

    move/from16 v0, v35

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v13, Lcom/android/launcher3/cF;->j:I

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v13, Lcom/android/launcher3/cF;->k:I

    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v13, Lcom/android/launcher3/cF;->l:I

    move/from16 v0, v38

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v13, Lcom/android/launcher3/cF;->m:I

    invoke-static {v14, v12}, Lcom/android/launcher3/Launcher;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    const/16 v18, 0x0

    aget v18, v5, v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher3/cF;->n:I

    const/16 v18, 0x1

    aget v5, v5, v18

    iput v5, v13, Lcom/android/launcher3/cF;->o:I

    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v18, -0x64

    move/from16 v0, v18

    if-eq v5, v0, :cond_15

    const/16 v18, -0x65

    move/from16 v0, v18

    if-eq v5, v0, :cond_15

    const-string v5, "Launcher.Model"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/android/launcher3/cF;->h:J

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v13, v2}, Lcom/android/launcher3/dg;->a(Ljava/util/HashMap;Lcom/android/launcher3/bD;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual/range {v40 .. v40}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    iget-object v5, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "appWidgetProvider"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_id= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_17
    sget-object v5, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    iget-wide v6, v13, Lcom/android/launcher3/cF;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :cond_18
    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_19

    sget-object v4, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_19
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    sget-object v4, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v3

    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "restored"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v5, v4, v7}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_1a
    :goto_9
    if-eqz v20, :cond_20

    const-wide/16 v3, 0x0

    :try_start_f
    sget-object v5, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v4, v3

    :cond_1b
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    sget-object v3, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "11683562 -   maxScreenId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "11683562 -   sBgWorkspaceScreens: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    sget-object v8, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/LauncherProvider;->b(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    sget-object v4, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v14, v4}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v3

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/LauncherProvider;->a(J)V

    :cond_1c
    :goto_c
    monitor-exit v24

    move/from16 v3, v20

    goto/16 :goto_2

    :cond_1d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v7

    const/4 v4, 0x0

    :try_start_10
    invoke-static {v7, v8, v4}, Lcom/android/launcher3/dF;->a(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v9, v10}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_8

    :catch_2
    move-exception v4

    :try_start_11
    const-string v4, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not remove id = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_3
    move-exception v3

    const-string v3, "Launcher.Model"

    const-string v4, "Could not update restored rows"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_1e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/bD;

    iget-wide v6, v3, Lcom/android/launcher3/bD;->i:J

    iget-wide v9, v3, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v11, -0x64

    cmp-long v3, v9, v11

    if-nez v3, :cond_1b

    sget-object v3, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v3, v6, v4

    if-lez v3, :cond_1b

    move-wide v4, v6

    goto/16 :goto_a

    :cond_1f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/bD;

    iget-wide v7, v3, Lcom/android/launcher3/bD;->f:J

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide v4, v3

    goto/16 :goto_b

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "11683562 -   sBgWorkspaceScreens: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    sget-object v6, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v14}, La/a/a/c/d;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v4, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_21
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "11683562 -   unusedScreens (to be removed): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    sget-object v4, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v14, v4}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v6, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/bD;

    iget-wide v6, v3, Lcom/android/launcher3/bD;->i:J

    iget-wide v8, v3, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v10, -0x64

    cmp-long v3, v8, v10

    if-nez v3, :cond_21

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v1, v1, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v1, v1, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/dj;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/dj;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/launcher3/cO;->i()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/android/launcher3/de;)Lcom/android/launcher3/de;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/dg;->d:Z

    if-eqz v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    if-eq v0, p1, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method final a(I)V
    .locals 3

    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->d(Lcom/android/launcher3/cO;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->f(Lcom/android/launcher3/cO;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aa;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/dg;->a(IZ)V

    invoke-direct {p0}, Lcom/android/launcher3/dg;->i()V

    return-void
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dg;->b:Z

    return v0
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dg;->c:Z

    return v0
.end method

.method public final c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/dg;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 4

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mContext="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mIsLaunching="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/dg;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mStopped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/dg;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/dg;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mItems size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 12

    const/16 v1, 0xa

    const/4 v11, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v3}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;Z)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v3}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-boolean v4, p0, Lcom/android/launcher3/dg;->b:Z

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/android/launcher3/dg;->e()Z

    iget-boolean v1, p0, Lcom/android/launcher3/dg;->d:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    iget-boolean v1, p0, Lcom/android/launcher3/dg;->b:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/dh;

    invoke-direct {v3, p0}, Lcom/android/launcher3/dh;-><init>(Lcom/android/launcher3/dg;)V

    new-instance v4, Lcom/android/launcher3/ab;

    invoke-direct {v4, v1, v3}, Lcom/android/launcher3/ab;-><init>(Lcom/android/launcher3/aa;Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;I)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/dg;->d:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/dg;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->c(Lcom/android/launcher3/cO;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->d(Lcom/android/launcher3/cO;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/de;

    if-nez v1, :cond_8

    const-string v1, "Launcher.Model"

    const-string v2, "LoaderTask running with no launcher (loadAllApps)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-enter p0

    :try_start_4
    iget-boolean v1, p0, Lcom/android/launcher3/dg;->d:Z

    if-eqz v1, :cond_b

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_4
    sget-object v3, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    sget-object v1, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/dg;->f()V

    :cond_5
    iput-object v11, p0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->e(Lcom/android/launcher3/cO;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v1}, Lcom/android/launcher3/cO;->g(Lcom/android/launcher3/cO;)Lcom/android/launcher3/dg;

    move-result-object v1

    if-ne v1, p0, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/cO;Lcom/android/launcher3/dg;)V

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;Z)V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v3

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_7
    const-wide/16 v3, 0x3e8

    :try_start_8
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_8
    iget-object v3, p0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v5, v5, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v6, v5, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v5, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v5, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v5, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/launcher3/dy;

    iget-object v6, p0, Lcom/android/launcher3/dg;->g:Ljava/util/HashMap;

    invoke-direct {v3, v4, v6}, Lcom/android/launcher3/dy;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    invoke-static {v3}, La/a/a/c/d;->p(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    move v3, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_9

    iget-object v2, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v2, v2, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v2, v2, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v3, v3, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v3}, Lcom/android/launcher3/cO;->b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/dk;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher3/dk;-><init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "KLP"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Hiding package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v7, v7, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    new-instance v8, Lcom/android/launcher3/d;

    iget-object v9, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    invoke-static {v9}, Lcom/android/launcher3/cO;->k(Lcom/android/launcher3/cO;)Lcom/android/launcher3/bw;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/dg;->g:Ljava/util/HashMap;

    invoke-direct {v8, v4, v2, v9, v10}, Lcom/android/launcher3/d;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/bw;Ljava/util/HashMap;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/d;)V

    goto :goto_5

    :cond_b
    :try_start_9
    iget-object v1, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/cO;->c(Lcom/android/launcher3/cO;Z)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_2

    :catchall_4
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_c
    invoke-direct {p0}, Lcom/android/launcher3/dg;->i()V

    goto/16 :goto_2

    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_d
    :try_start_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/dg;->h:Lcom/android/launcher3/cO;

    iget-object v6, p0, Lcom/android/launcher3/dg;->a:Landroid/content/Context;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/ey;

    move-object v1, v0

    sget-object v7, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/ey;[B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_3

    :catchall_6
    move-exception v1

    monitor-exit v3

    throw v1

    :catchall_7
    move-exception v1

    monitor-exit v2

    throw v1
.end method
