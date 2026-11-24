.class final Lcom/android/launcher3/dR;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dQ;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dQ;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    iget-object v0, v0, Lcom/android/launcher3/dQ;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    iget-object v0, v0, Lcom/android/launcher3/dQ;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    iget-object v0, v0, Lcom/android/launcher3/dQ;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    invoke-virtual {v0}, Lcom/android/launcher3/dQ;->b()V

    iget-object v0, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    iget-object v0, v0, Lcom/android/launcher3/dQ;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher3/dR;->a:Lcom/android/launcher3/dQ;

    iget-object v0, v0, Lcom/android/launcher3/dQ;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
