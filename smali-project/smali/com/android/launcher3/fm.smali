.class final Lcom/android/launcher3/fm;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/android/launcher3/fl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    iget-object v0, v0, Lcom/android/launcher3/fl;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    iget-object v0, v0, Lcom/android/launcher3/fl;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    invoke-static {v0}, Lcom/android/launcher3/fl;->a(Lcom/android/launcher3/fl;)Lcom/android/launcher3/dQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dQ;->a()[I

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    invoke-virtual {v0}, Lcom/android/launcher3/fl;->getChildCount()I

    move-result v3

    array-length v0, v2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    invoke-virtual {v0}, Lcom/android/launcher3/fl;->a()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    iget-object v0, v0, Lcom/android/launcher3/fl;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/fl;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/fo;

    invoke-virtual {v0}, Lcom/android/launcher3/fo;->a()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/launcher3/fl;->a([II)I

    move-result v4

    if-gez v4, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/fm;->a:Lcom/android/launcher3/fl;

    invoke-virtual {v0}, Lcom/android/launcher3/fl;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/fo;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
