.class final La/a/a/a/i;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:La/a/a/a/h;


# direct methods
.method constructor <init>(La/a/a/a/h;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/i;->a:La/a/a/a/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, La/a/a/a/i;->a:La/a/a/a/h;

    iget-boolean v0, v0, La/a/a/a/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/i;->a:La/a/a/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/a/a/a/h;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, La/a/a/a/i;->a:La/a/a/a/h;

    invoke-virtual {v0}, La/a/a/a/h;->a()V

    iget-object v0, p0, La/a/a/a/i;->a:La/a/a/a/h;

    iget-object v0, v0, La/a/a/a/h;->b:La/a/a/a/p;

    invoke-virtual {v0}, La/a/a/a/p;->b()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
