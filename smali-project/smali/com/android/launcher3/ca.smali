.class final Lcom/android/launcher3/ca;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v4}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Z)V

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->c(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->a()V

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->d(Lcom/android/launcher3/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->e(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AppsCustomizeTabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->f(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/bD;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/bD;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Z)V

    iget-object v0, p0, Lcom/android/launcher3/ca;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->d(Lcom/android/launcher3/Launcher;)V

    goto :goto_0
.end method
