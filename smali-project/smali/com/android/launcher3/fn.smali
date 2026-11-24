.class final Lcom/android/launcher3/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/android/launcher3/fl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fn;->a:Lcom/android/launcher3/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fn;->a:Lcom/android/launcher3/fl;

    check-cast p2, Lcom/android/launcher3/dS;

    invoke-virtual {p2}, Lcom/android/launcher3/dS;->a()Lcom/android/launcher3/dQ;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/fl;->a(Lcom/android/launcher3/fl;Lcom/android/launcher3/dQ;)V

    iget-object v0, p0, Lcom/android/launcher3/fn;->a:Lcom/android/launcher3/fl;

    invoke-virtual {v0}, Lcom/android/launcher3/fl;->a()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/fn;->a:Lcom/android/launcher3/fl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/fl;->a(Lcom/android/launcher3/fl;Lcom/android/launcher3/dQ;)V

    return-void
.end method
