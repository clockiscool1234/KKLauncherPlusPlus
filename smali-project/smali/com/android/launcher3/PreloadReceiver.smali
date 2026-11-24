.class public Lcom/android/launcher3/PreloadReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "com.android.launcher3.action.EXTRA_WORKSPACE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.android.launcher3"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    new-instance v3, Lcom/android/launcher3/er;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher3/er;-><init>(Lcom/android/launcher3/PreloadReceiver;Lcom/android/launcher3/LauncherProvider;I)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/er;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
