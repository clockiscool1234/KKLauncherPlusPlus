.class public final Lcom/android/launcher3/cO;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Ljava/util/ArrayList;

.field static final c:Ljava/lang/Object;

.field static final d:Ljava/util/HashMap;

.field static final e:Ljava/util/ArrayList;

.field static final f:Ljava/util/ArrayList;

.field static final g:Ljava/util/HashMap;

.field static final h:Ljava/util/HashMap;

.field static final i:Ljava/util/ArrayList;

.field private static final r:Landroid/os/HandlerThread;

.field private static final s:Landroid/os/Handler;


# instance fields
.field b:Lcom/android/launcher3/b;

.field private final j:Z

.field private final k:Z

.field private final l:Lcom/android/launcher3/cB;

.field private final m:Ljava/lang/Object;

.field private n:Lcom/android/launcher3/aa;

.field private o:Lcom/android/launcher3/dg;

.field private p:Z

.field private volatile q:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/ref/WeakReference;

.field private w:Lcom/android/launcher3/bw;

.field private x:Landroid/graphics/Bitmap;

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/cO;->s:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/cO;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/cP;

    invoke-direct {v0}, Lcom/android/launcher3/cP;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/cB;Lcom/android/launcher3/bw;Lcom/android/launcher3/c;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/aa;

    invoke-direct {v0}, Lcom/android/launcher3/aa;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/cO;->n:Lcom/android/launcher3/aa;

    invoke-static {}, Lcom/android/launcher3/cB;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/cO;->j:Z

    sget-object v2, Lcom/android/launcher3/dF;->b:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/cO;->k:Z

    iput-object p1, p0, Lcom/android/launcher3/cO;->l:Lcom/android/launcher3/cB;

    new-instance v0, Lcom/android/launcher3/b;

    invoke-direct {v0, p2, p3}, Lcom/android/launcher3/b;-><init>(Lcom/android/launcher3/bw;Lcom/android/launcher3/c;)V

    iput-object v0, p0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iput-object p2, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/android/launcher3/cO;->y:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "market"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "details"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "manufactured intent uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v1
.end method

.method private static a(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;ILjava/util/ArrayList;)Landroid/util/Pair;
    .locals 20

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/cB;->f()Lcom/android/launcher3/cO;

    move-result-object v1

    monitor-enter v11

    :try_start_0
    sget-object v2, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/cO;->q:Z

    new-instance v2, Lcom/android/launcher3/db;

    invoke-direct {v2, v1}, Lcom/android/launcher3/db;-><init>(Lcom/android/launcher3/cO;)V

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v2}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    iget-object v3, v1, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, v1, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/cO;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v13

    move v10, v1

    :goto_1
    if-lt v10, v13, :cond_3

    monitor-exit v11

    const/4 v1, 0x0

    :goto_2
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    monitor-exit v11

    throw v1

    :cond_2
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :try_start_8
    new-array v1, v1, [I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v2

    iget v3, v2, Lcom/android/launcher3/al;->d:F

    float-to-int v4, v3

    iget v2, v2, Lcom/android/launcher3/al;->c:F

    float-to-int v5, v2

    filled-new-array {v4, v5}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    const/4 v2, 0x0

    move v9, v2

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v9, v2, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->a([IIIII[[Z)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v3, Landroid/util/Pair;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v11

    move-object v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/bD;

    iget-wide v7, v2, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v16, -0x64

    cmp-long v3, v7, v16

    if-nez v3, :cond_5

    iget-wide v7, v2, Lcom/android/launcher3/bD;->i:J

    cmp-long v3, v7, v14

    if-nez v3, :cond_5

    iget v8, v2, Lcom/android/launcher3/bD;->j:I

    iget v3, v2, Lcom/android/launcher3/bD;->k:I

    iget v0, v2, Lcom/android/launcher3/bD;->l:I

    move/from16 v16, v0

    iget v0, v2, Lcom/android/launcher3/bD;->m:I

    move/from16 v17, v0

    move v7, v8

    :goto_4
    if-ltz v7, :cond_5

    add-int v2, v8, v16

    if-ge v7, v2, :cond_5

    if-lt v7, v4, :cond_6

    :cond_5
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_5
    if-ltz v2, :cond_7

    add-int v18, v3, v17

    move/from16 v0, v18

    if-ge v2, v0, :cond_7

    if-lt v2, v5, :cond_8

    :cond_7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_4

    :cond_8
    aget-object v18, v6, v7

    const/16 v19, 0x1

    aput-boolean v19, v18, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher3/bk;
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    const-string v3, "_id=? and (itemType=? or itemType=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "container"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "screen"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "cellX"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "cellY"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    iput-wide p2, v2, Lcom/android/launcher3/bk;->f:J

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, v2, Lcom/android/launcher3/bk;->h:J

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, v2, Lcom/android/launcher3/bk;->i:J

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/android/launcher3/bk;->j:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/android/launcher3/bk;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v2

    :pswitch_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/cO;->b(Ljava/util/HashMap;J)Lcom/android/launcher3/bk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Ljava/util/HashMap;J)Lcom/android/launcher3/bk;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/cO;->b(Ljava/util/HashMap;J)Lcom/android/launcher3/bk;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher3/ey;
    .locals 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v1, Lcom/android/launcher3/ey;

    invoke-direct {v1}, Lcom/android/launcher3/ey;-><init>()V

    iput v6, v1, Lcom/android/launcher3/ey;->g:I

    invoke-interface {p1, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/launcher3/cO;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v6, v1, Lcom/android/launcher3/ey;->c:Z

    iput-boolean v5, v1, Lcom/android/launcher3/ey;->b:Z

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/ey;->b(Landroid/graphics/Bitmap;)V

    return-object v1

    :pswitch_0
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-boolean v5, v1, Lcom/android/launcher3/ey;->b:Z

    :try_start_0
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/bw;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/launcher3/eI;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-static {p1, p6, p2}, Lcom/android/launcher3/cO;->a(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/cO;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v6, v1, Lcom/android/launcher3/ey;->c:Z

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p6, p2}, Lcom/android/launcher3/cO;->a(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/cO;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v5, v1, Lcom/android/launcher3/ey;->b:Z

    iput-boolean v6, v1, Lcom/android/launcher3/ey;->c:Z

    goto :goto_0

    :cond_3
    iput-boolean v6, v1, Lcom/android/launcher3/ey;->b:Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher3/ey;
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/cO;->a(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher3/ey;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/android/launcher3/dz;

    invoke-direct {v2, v0}, Lcom/android/launcher3/dz;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Lcom/android/launcher3/cT;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/cT;-><init>(Lcom/android/launcher3/cO;Landroid/content/ComponentName;)V

    sget-object v1, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/cO;->a(Ljava/util/Collection;Lcom/android/launcher3/df;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Lcom/android/launcher3/cS;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/cS;-><init>(Lcom/android/launcher3/cO;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/cO;->a(Ljava/util/Collection;Lcom/android/launcher3/df;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Collection;Lcom/android/launcher3/df;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    instance-of v1, v0, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v1, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v6, v0, v1}, Lcom/android/launcher3/df;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/launcher3/bk;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/launcher3/bk;

    iget-object v1, v0, Lcom/android/launcher3/bk;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ey;

    iget-object v5, v1, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p1, v0, v1, v5}, Lcom/android/launcher3/df;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/android/launcher3/cF;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/cF;

    iget-object v1, v0, Lcom/android/launcher3/cF;->b:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-interface {p1, v6, v0, v1}, Lcom/android/launcher3/df;->a(Lcom/android/launcher3/bD;Lcom/android/launcher3/bD;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static a(JLcom/android/launcher3/bD;[Ljava/lang/StackTraceElement;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    if-eqz v0, :cond_1

    if-eq p2, v0, :cond_1

    instance-of v1, v0, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_2

    instance-of v1, p2, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/ey;

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/ey;

    iget-object v3, v1, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v1, Lcom/android/launcher3/ey;->f:J

    iget-wide v5, v2, Lcom/android/launcher3/ey;->f:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher3/ey;->g:I

    iget v4, v2, Lcom/android/launcher3/ey;->g:I

    if-ne v3, v4, :cond_2

    iget-wide v3, v1, Lcom/android/launcher3/ey;->h:J

    iget-wide v5, v2, Lcom/android/launcher3/ey;->h:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v1, Lcom/android/launcher3/ey;->i:J

    iget-wide v5, v2, Lcom/android/launcher3/ey;->i:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher3/ey;->j:I

    iget v4, v2, Lcom/android/launcher3/ey;->j:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/ey;->k:I

    iget v4, v2, Lcom/android/launcher3/ey;->k:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/ey;->l:I

    iget v4, v2, Lcom/android/launcher3/ey;->l:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/ey;->m:I

    iget v4, v2, Lcom/android/launcher3/ey;->m:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/launcher3/ey;->r:[I

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/ey;->r:[I

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v1, Lcom/android/launcher3/ey;->r:[I

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/ey;->r:[I

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/launcher3/ey;->r:[I

    aget v3, v3, v7

    iget-object v4, v2, Lcom/android/launcher3/ey;->r:[I

    aget v4, v4, v7

    if-ne v3, v4, :cond_2

    iget-object v1, v1, Lcom/android/launcher3/ey;->r:[I

    aget v1, v1, v8

    iget-object v2, v2, Lcom/android/launcher3/ey;->r:[I

    aget v2, v2, v8

    if-ne v1, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "item: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher3/bD;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "modelItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/bD;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_3
    throw v1

    :cond_4
    const-string v1, "null"

    goto :goto_0

    :cond_5
    const-string v0, "null"

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/bD;)V
    .locals 8

    iget-wide v5, p2, Lcom/android/launcher3/bD;->f:J

    const/4 v0, 0x0

    invoke-static {v5, v6, v0}, Lcom/android/launcher3/dF;->a(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v0, Lcom/android/launcher3/cZ;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/cZ;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher3/bD;J[Ljava/lang/StackTraceElement;)V

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/android/launcher3/bD;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/bD;->a(Landroid/content/ContentValues;)V

    iget v1, p1, Lcom/android/launcher3/bD;->j:I

    iget v2, p1, Lcom/android/launcher3/bD;->k:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/bD;->a(Landroid/content/ContentValues;II)V

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/bD;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V
    .locals 9

    iget-wide v0, p1, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIII)V
    .locals 4

    iput-wide p2, p1, Lcom/android/launcher3/bD;->h:J

    iput p6, p1, Lcom/android/launcher3/bD;->j:I

    iput p7, p1, Lcom/android/launcher3/bD;->k:I

    iput p8, p1, Lcom/android/launcher3/bD;->l:I

    iput p9, p1, Lcom/android/launcher3/bD;->m:I

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->a(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/bD;->i:J

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/bD;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/bD;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/bD;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanX"

    iget v2, p1, Lcom/android/launcher3/bD;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    iget v2, p1, Lcom/android/launcher3/bD;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/bD;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/bD;)V

    return-void

    :cond_0
    iput-wide p4, p1, Lcom/android/launcher3/bD;->i:J

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/android/launcher3/bD;JJIIZ)V
    .locals 5

    iput-wide p2, p1, Lcom/android/launcher3/bD;->h:J

    iput p6, p1, Lcom/android/launcher3/bD;->j:I

    iput p7, p1, Lcom/android/launcher3/bD;->k:I

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->a(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/bD;->i:J

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/bD;->a(Landroid/content/ContentValues;)V

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider;->b()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher3/bD;->f:J

    const-string v2, "_id"

    iget-wide v3, p1, Lcom/android/launcher3/bD;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v2, p1, Lcom/android/launcher3/bD;->j:I

    iget v3, p1, Lcom/android/launcher3/bD;->k:I

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/bD;->a(Landroid/content/ContentValues;II)V

    new-instance v2, Lcom/android/launcher3/dc;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0, p1}, Lcom/android/launcher3/dc;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher3/bD;)V

    invoke-static {v2}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iput-wide p4, p1, Lcom/android/launcher3/bD;->i:J

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/android/launcher3/bk;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/cR;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/cR;-><init>(Landroid/content/ContentResolver;Lcom/android/launcher3/bk;)V

    invoke-static {v1}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/ArrayList;JI)V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/da;

    invoke-direct {v3, p1, v2, v1, v0}, Lcom/android/launcher3/da;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    invoke-static {v3}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iput-wide p2, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/launcher3/bD;->i:J

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    iget-wide v6, v0, Lcom/android/launcher3/bD;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cellX"

    iget v6, v0, Lcom/android/launcher3/bD;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellY"

    iget v6, v0, Lcom/android/launcher3/bD;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "screen"

    iget-wide v6, v0, Lcom/android/launcher3/bD;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static a(Lcom/android/launcher3/bD;)V
    .locals 4

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher3/bD;->f:J

    new-instance v3, Lcom/android/launcher3/cY;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/android/launcher3/cY;-><init>(JLcom/android/launcher3/bD;[Ljava/lang/StackTraceElement;)V

    invoke-static {v3}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Lcom/android/launcher3/bD;J[Ljava/lang/StackTraceElement;)V
    .locals 8

    const-wide/16 v6, -0x64

    const-wide/16 v4, -0x65

    sget-object v1, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2, p0, p3}, Lcom/android/launcher3/cO;->a(JLcom/android/launcher3/bD;[Ljava/lang/StackTraceElement;)V

    iget-wide v2, p0, Lcom/android/launcher3/bD;->h:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/launcher3/bD;->h:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/cO;->g:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/android/launcher3/bD;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "item: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " container being set to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/bD;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", not in the list of folders"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.Model"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/launcher3/cO;->d:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    if-eqz v0, :cond_3

    iget-wide v2, v0, Lcom/android/launcher3/bD;->h:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/android/launcher3/bD;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_1
    iget v2, v0, Lcom/android/launcher3/bD;->g:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    sget-object v2, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Lcom/android/launcher3/dg;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/cO;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/cO;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/cO;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/cO;->t:Z

    return-void
.end method

.method private static a(Lcom/android/launcher3/dt;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/cO;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cO;->n:Lcom/android/launcher3/aa;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v6

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/cO;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/launcher3/cO;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/launcher3/cO;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/android/launcher3/cO;)Lcom/android/launcher3/aa;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->n:Lcom/android/launcher3/aa;

    return-object v0
.end method

.method private static b(Ljava/util/HashMap;J)Lcom/android/launcher3/bk;
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/bk;

    invoke-direct {v0}, Lcom/android/launcher3/bk;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/cO;->d(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/android/launcher3/bD;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/launcher3/bD;->f:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/dF;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/dd;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/launcher3/dd;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher3/bD;)V

    invoke-static {v2}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static b(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V
    .locals 4

    iput-wide p2, p1, Lcom/android/launcher3/bD;->h:J

    iput p6, p1, Lcom/android/launcher3/bD;->j:I

    iput p7, p1, Lcom/android/launcher3/bD;->k:I

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/Hotseat;->a(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/bD;->i:J

    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher3/bD;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher3/bD;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher3/bD;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "screen"

    iget-wide v2, p1, Lcom/android/launcher3/bD;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher3/bD;)V

    return-void

    :cond_0
    iput-wide p4, p1, Lcom/android/launcher3/bD;->i:J

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/launcher3/cO;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/cO;->p:Z

    return-void
.end method

.method private static b(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/cO;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Lcom/android/launcher3/bD;)Z
    .locals 3

    instance-of v0, p0, Lcom/android/launcher3/ey;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/launcher3/ey;

    iget-object v0, p0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/ey;->g:I

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12

    const/4 v3, 0x0

    const/4 v7, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "itemType"

    aput-object v5, v2, v4

    const-string v4, "container"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    const-string v5, "screen"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "cellX"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "cellY"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "spanX"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "spanY"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "container"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "screen"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cellX"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellY"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v7, "spanX"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "spanY"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v6

    :cond_0
    :try_start_1
    new-instance v9, Lcom/android/launcher3/bD;

    invoke-direct {v9}, Lcom/android/launcher3/bD;-><init>()V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/android/launcher3/bD;->j:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/android/launcher3/bD;->k:I

    const/4 v10, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Lcom/android/launcher3/bD;->l:I

    const/4 v10, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Lcom/android/launcher3/bD;->m:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v9, Lcom/android/launcher3/bD;->h:J

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/android/launcher3/bD;->g:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v9, Lcom/android/launcher3/bD;->i:J

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic c(Lcom/android/launcher3/cO;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/cO;->u:Z

    return-void
.end method

.method static synthetic c(Lcom/android/launcher3/cO;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->q:Z

    return v0
.end method

.method private static d(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dG;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v0, "screenRank"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, "Launcher.Model"

    const-string v1, "11683562 - loadWorkspaceScreensDb()"

    invoke-static {v0, v1, v8}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "11683562 -   screens: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Desktop items loading interrupted - invalid screens: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " }"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic d(Lcom/android/launcher3/cO;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/cO;->q:Z

    return-void
.end method

.method static synthetic d(Lcom/android/launcher3/cO;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/android/launcher3/cO;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/android/launcher3/cO;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/android/launcher3/cO;)Lcom/android/launcher3/dg;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    return-object v0
.end method

.method public static final g()Ljava/util/Comparator;
    .locals 2

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/cU;

    invoke-direct {v1, v0}, Lcom/android/launcher3/cU;-><init>(Ljava/text/Collator;)V

    return-object v1
.end method

.method static synthetic h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic i()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic i(Lcom/android/launcher3/cO;)Lcom/android/launcher3/cB;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->l:Lcom/android/launcher3/cB;

    return-object v0
.end method

.method private j()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cO;->x:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    invoke-static {}, Lcom/android/launcher3/cB;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    invoke-virtual {v1}, Lcom/android/launcher3/bw;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/eI;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/cO;->x:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/cO;->x:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/android/launcher3/cO;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/android/launcher3/cO;)Lcom/android/launcher3/bw;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    return-object v0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/cO;->a(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/cO;->c()V

    return-void
.end method

.method private l()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/dg;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/dg;->c()V

    :cond_1
    return v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher3/ey;
    .locals 13

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    const/4 v6, 0x0

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/launcher3/aJ;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Lcom/android/launcher3/aJ;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, p1}, Lcom/android/launcher3/eI;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v3, v5

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    :goto_1
    new-instance v6, Lcom/android/launcher3/ey;

    invoke-direct {v6}, Lcom/android/launcher3/ey;-><init>()V

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/cO;->j()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-boolean v5, v6, Lcom/android/launcher3/ey;->c:Z

    :cond_1
    invoke-virtual {v6, v4}, Lcom/android/launcher3/ey;->b(Landroid/graphics/Bitmap;)V

    iput-object v7, v6, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    iput-boolean v3, v6, Lcom/android/launcher3/ey;->b:Z

    iput-object v2, v6, Lcom/android/launcher3/ey;->d:Landroid/content/Intent$ShortcutIconResource;

    move-object v4, v6

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_3

    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    invoke-virtual {v10, v8, v9}, Lcom/android/launcher3/bw;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/launcher3/eI;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move v3, v6

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v4

    :goto_2
    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not load shortcut icon: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_2

    :cond_3
    move-object v2, v4

    move v3, v6

    goto :goto_1
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher3/ey;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher3/ey;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher3/ey;
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    new-instance v3, Lcom/android/launcher3/ey;

    invoke-direct {v3}, Lcom/android/launcher3/ey;-><init>()V

    if-eqz v5, :cond_0

    invoke-static {p1, v5}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid package found in getShortcutInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ey;->a(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v1

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    move-object/from16 v0, p7

    invoke-virtual {v1, v5, v2, v0}, Lcom/android/launcher3/bw;->a(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_3

    if-eqz p4, :cond_3

    move/from16 v0, p5

    invoke-static {p4, v0, p3}, Lcom/android/launcher3/cO;->a(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/cO;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/ey;->c:Z

    :cond_4
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ey;->b(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/android/launcher3/cO;->a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz p7, :cond_9

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    :cond_5
    :goto_4
    iget-object v1, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    if-eqz p4, :cond_6

    move/from16 v0, p6

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    :cond_6
    iget-object v1, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    if-nez v1, :cond_7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    :cond_7
    const/4 v1, 0x0

    iput v1, v3, Lcom/android/launcher3/ey;->g:I

    move-object v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getPackInfo failed for package "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v1

    goto/16 :goto_2

    :cond_9
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    if-eqz p7, :cond_5

    iget-object v2, v3, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    move-object v1, v4

    goto/16 :goto_3
.end method

.method public final a(Landroid/database/Cursor;I)Lcom/android/launcher3/ey;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/android/launcher3/ey;

    invoke-direct {v0}, Lcom/android/launcher3/ey;-><init>()V

    iput-boolean v2, v0, Lcom/android/launcher3/ey;->c:Z

    invoke-direct {p0}, Lcom/android/launcher3/cO;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ey;->b(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    :goto_0
    iput v2, v0, Lcom/android/launcher3/ey;->g:I

    return-object v0

    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected unbindLauncherItemInfos() to be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/cO;->n:Lcom/android/launcher3/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aa;->a(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/cO;->b()V

    return-void
.end method

.method final a(Landroid/content/Context;Lcom/android/launcher3/ey;[B)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p3

    invoke-static {p3, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/cO;->w:Lcom/android/launcher3/bw;

    invoke-virtual {p2, v3}, Lcom/android/launcher3/ey;->a(Lcom/android/launcher3/bw;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "going to save icon bitmap for info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9

    const/4 v3, 0x1

    const-string v0, "Launcher.Model"

    const-string v1, "11683562 - updateWorkspaceScreenOrder()"

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "11683562 -   screens: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/dG;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/cQ;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/launcher3/cQ;-><init>(Lcom/android/launcher3/cO;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V
    .locals 6

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "workspaceApps and allAppsApps must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/android/launcher3/cV;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/cV;-><init>(Lcom/android/launcher3/cO;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/de;)V

    invoke-static {v0}, Lcom/android/launcher3/cO;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/de;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/cO;->a(ZII)V

    return-void
.end method

.method public final a(ZII)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/cO;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/android/launcher3/dg;

    iget-object v3, p0, Lcom/android/launcher3/cO;->l:Lcom/android/launcher3/cB;

    invoke-static {}, Lcom/android/launcher3/cB;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, p3}, Lcom/android/launcher3/dg;-><init>(Lcom/android/launcher3/cO;Landroid/content/Context;ZI)V

    iput-object v2, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    const/16 v0, -0x3e9

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dg;->a(I)V

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher3/cO;->r:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/android/launcher3/cO;->s:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/cO;->l()Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/cO;->u:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/cO;->t:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Lcom/android/launcher3/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Ljava/util/HashMap;Lcom/android/launcher3/ey;Landroid/database/Cursor;I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/cO;->j:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher3/ey;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher3/ey;->c:Z

    if-nez v1, :cond_0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher3/cO;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/launcher3/cO;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/android/launcher3/cO;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lcom/android/launcher3/cX;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/cX;-><init>(Lcom/android/launcher3/cO;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/cO;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher3/de;->A()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const/16 v0, -0x3e9

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/launcher3/cO;->a(ZII)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final d()V
    .locals 4

    sget-object v0, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/cO;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/cO;->n:Lcom/android/launcher3/aa;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/aa;->a(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    invoke-virtual {v0}, Lcom/android/launcher3/dg;->c()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final f()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/cO;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    invoke-virtual {v0}, Lcom/android/launcher3/dg;->b()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallbacks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v2, v2, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v2, v2, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v2, v2, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher3/cO;->b:Lcom/android/launcher3/b;

    iget-object v2, v2, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cO;->o:Lcom/android/launcher3/dg;

    invoke-virtual {v0}, Lcom/android/launcher3/dg;->d()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_d

    const/4 v0, 0x3

    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/launcher3/dt;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-direct {v3, p0, v0, v2}, Lcom/android/launcher3/dt;-><init>(Lcom/android/launcher3/cO;I[Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/dt;)V

    goto :goto_0

    :cond_4
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v5, :cond_3

    move v0, v2

    goto :goto_1

    :cond_5
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    new-instance v0, Lcom/android/launcher3/dt;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/launcher3/dt;-><init>(Lcom/android/launcher3/cO;I[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/dt;)V

    iget-boolean v0, p0, Lcom/android/launcher3/cO;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/cO;->c()V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/android/launcher3/dt;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/launcher3/dt;-><init>(Lcom/android/launcher3/cO;I[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/dt;)V

    goto :goto_0

    :cond_7
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dt;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v0}, Lcom/android/launcher3/dt;-><init>(Lcom/android/launcher3/cO;I[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/dt;)V

    goto :goto_0

    :cond_8
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/launcher3/cO;->k()V

    goto/16 :goto_0

    :cond_9
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/cO;->y:I

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_a

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reload apps on config change. curr_mcc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prevmcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/cO;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher3/cO;->k()V

    :cond_a
    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/android/launcher3/cO;->y:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/cO;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher3/de;->D()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method
