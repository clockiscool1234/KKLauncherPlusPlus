.class public final Lnl/ndsc/kitkatlauncher/b/e;
.super Lnl/ndsc/kitkatlauncher/b/r;


# static fields
.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/r;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->h(Landroid/content/Context;)Lnl/ndsc/kitkatlauncher/a/b;

    move-result-object v1

    const-string v0, ""

    invoke-static {}, Lnl/ndsc/kitkatlauncher/b/e;->e()[I

    move-result-object v2

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "setting_homebutton_action_key"

    invoke-virtual {p0, v1, v0}, Lnl/ndsc/kitkatlauncher/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "Do nothing"

    goto :goto_0

    :pswitch_1
    const-string v0, "Move to center screen"

    goto :goto_0

    :pswitch_2
    const-string v0, "Move to far-left screen"

    goto :goto_0

    :pswitch_3
    const-string v0, "Move to far-right screen"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lnl/ndsc/kitkatlauncher/b/e;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnl/ndsc/kitkatlauncher/a/b;->values()[Lnl/ndsc/kitkatlauncher/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->a:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->c:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->b:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnl/ndsc/kitkatlauncher/a/b;->d:Lnl/ndsc/kitkatlauncher/a/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnl/ndsc/kitkatlauncher/b/e;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setting_homebutton_action_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/e;->a()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/e;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "Behavior"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/e;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/e;->a()V

    return-void
.end method
