.class final Lcom/android/launcher3/dP;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dP;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/dP;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "MemoryDumpActivity"

    const-string v1, "service connected, dumping..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/dP;->a:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/dS;

    invoke-virtual {p2}, Lcom/android/launcher3/dS;->a()Lcom/android/launcher3/dQ;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/MemoryDumpActivity;->dumpHprofAndShare(Landroid/content/Context;Lcom/android/launcher3/dQ;)V

    iget-object v0, p0, Lcom/android/launcher3/dP;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/launcher3/dP;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dP;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
