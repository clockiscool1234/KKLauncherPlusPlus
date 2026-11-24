.class public final Lcom/android/launcher3/cB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/an;


# static fields
.field private static j:Ljava/lang/ref/WeakReference;

.field private static k:Landroid/content/Context;

.field private static l:Lcom/android/launcher3/cB;


# instance fields
.field private final a:Lcom/android/launcher3/c;

.field private final b:Lcom/android/launcher3/D;

.field private c:Lcom/android/launcher3/cO;

.field private d:Lcom/android/launcher3/bw;

.field private e:Lcom/android/launcher3/fv;

.field private f:Z

.field private g:F

.field private h:I

.field private i:Z

.field private m:Lcom/android/launcher3/aI;

.field private final n:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/launcher3/cB;->h:I

    new-instance v0, Lcom/android/launcher3/cC;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/cC;-><init>(Lcom/android/launcher3/cB;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/cB;->n:Landroid/database/ContentObserver;

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LauncherAppState inited before app context set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Launcher"

    const-string v1, "LauncherAppState inited"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/android/launcher3/dQ;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/cB;->f:Z

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/launcher3/cB;->g:F

    invoke-virtual {p0}, Lcom/android/launcher3/cB;->c()V

    new-instance v0, Lcom/android/launcher3/bw;

    sget-object v1, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/cB;->d:Lcom/android/launcher3/bw;

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/c;->a(Ljava/lang/String;)Lcom/android/launcher3/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/cB;->a:Lcom/android/launcher3/c;

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/D;->a(Ljava/lang/String;)Lcom/android/launcher3/D;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/cB;->b:Lcom/android/launcher3/D;

    new-instance v0, Lcom/android/launcher3/cO;

    iget-object v1, p0, Lcom/android/launcher3/cB;->d:Lcom/android/launcher3/bw;

    iget-object v2, p0, Lcom/android/launcher3/cB;->a:Lcom/android/launcher3/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/cO;-><init>(Lcom/android/launcher3/cB;Lcom/android/launcher3/bw;Lcom/android/launcher3/c;)V

    iput-object v0, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dF;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/cB;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static a()Lcom/android/launcher3/cB;
    .locals 1

    sget-object v0, Lcom/android/launcher3/cB;->l:Lcom/android/launcher3/cB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/cB;

    invoke-direct {v0}, Lcom/android/launcher3/cB;-><init>()V

    sput-object v0, Lcom/android/launcher3/cB;->l:Lcom/android/launcher3/cB;

    :cond_0
    sget-object v0, Lcom/android/launcher3/cB;->l:Lcom/android/launcher3/cB;

    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/cB;)Lcom/android/launcher3/cO;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setApplicationContext called twice! old="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    return-void
.end method

.method static a(Lcom/android/launcher3/LauncherProvider;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/cB;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    return-object v0
.end method

.method static h()Lcom/android/launcher3/LauncherProvider;
    .locals 1

    sget-object v0, Lcom/android/launcher3/cB;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/cB;->b:Lcom/android/launcher3/D;

    const/4 v0, 0x0

    return v0
.end method

.method public static p()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/cB;->b:Lcom/android/launcher3/D;

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(Landroid/content/Context;IIIIII)Lcom/android/launcher3/al;
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/cB;->m:Lcom/android/launcher3/aI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/aI;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/aI;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIII)V

    iput-object v0, p0, Lcom/android/launcher3/cB;->m:Lcom/android/launcher3/aI;

    iget-object v0, p0, Lcom/android/launcher3/cB;->m:Lcom/android/launcher3/aI;

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/al;->a(Lcom/android/launcher3/an;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/cB;->m:Lcom/android/launcher3/aI;

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/al;->a(Landroid/content/Context;Landroid/content/res/Resources;IIII)V

    return-object v0
.end method

.method final a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/cO;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setLauncher() called before init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/de;)V

    iget-object v0, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    return-object v0
.end method

.method public final a(Lcom/android/launcher3/al;)V
    .locals 1

    iget v0, p1, Lcom/android/launcher3/al;->o:I

    invoke-static {v0}, Lcom/android/launcher3/eI;->a(I)V

    return-void
.end method

.method final a(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cB;->a:Lcom/android/launcher3/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cB;->a:Lcom/android/launcher3/c;

    invoke-virtual {v0}, Lcom/android/launcher3/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cB;->e:Lcom/android/launcher3/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cB;->e:Lcom/android/launcher3/fv;

    invoke-virtual {v0}, Lcom/android/launcher3/fv;->close()V

    :cond_0
    new-instance v0, Lcom/android/launcher3/fv;

    sget-object v1, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/fv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/cB;->e:Lcom/android/launcher3/fv;

    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/android/launcher3/cB;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/cB;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method final e()Lcom/android/launcher3/bw;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cB;->d:Lcom/android/launcher3/bw;

    return-object v0
.end method

.method final f()Lcom/android/launcher3/cO;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cB;->c:Lcom/android/launcher3/cO;

    return-object v0
.end method

.method final g()Lcom/android/launcher3/fv;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cB;->e:Lcom/android/launcher3/fv;

    return-object v0
.end method

.method public final i()Lcom/android/launcher3/aI;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cB;->m:Lcom/android/launcher3/aI;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/cB;->f:Z

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/cB;->g:F

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/cB;->h:I

    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/cB;->i:Z

    return-void
.end method

.method public final n()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/cB;->i:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/cB;->i:Z

    return v0
.end method
