.class final Lcom/android/launcher3/ci;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ci;->a:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/ci;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->g(Lcom/android/launcher3/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/ci;->a:Lcom/android/launcher3/Launcher;

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;J)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/ci;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->g(Lcom/android/launcher3/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit16 v1, v2, 0xfa

    instance-of v4, v0, Landroid/widget/Advanceable;

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/launcher3/cj;

    invoke-direct {v4, p0, v0}, Lcom/android/launcher3/cj;-><init>(Lcom/android/launcher3/ci;Landroid/view/View;)V

    int-to-long v0, v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/launcher3/ci;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
