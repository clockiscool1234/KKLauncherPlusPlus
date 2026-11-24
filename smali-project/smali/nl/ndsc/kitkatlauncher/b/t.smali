.class public final Lnl/ndsc/kitkatlauncher/b/t;
.super Lnl/ndsc/kitkatlauncher/b/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/r;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v2, 0x5

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, La/a/a/c/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, La/a/a/c/d;->b(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "setting_grid_size_key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lnl/ndsc/kitkatlauncher/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->l(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setting_number_of_screens_key"

    const-string v1, "Dynamic"

    invoke-virtual {p0, v0, v1}, Lnl/ndsc/kitkatlauncher/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "setting_number_of_screens_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " screens"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnl/ndsc/kitkatlauncher/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "setting_grid_size_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnl/ndsc/kitkatlauncher/g;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/g;-><init>()V

    invoke-virtual {v0, p0, v3}, Lnl/ndsc/kitkatlauncher/g;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/t;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lnl/ndsc/kitkatlauncher/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/g;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    const-string v0, "setting_number_of_screens_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnl/ndsc/kitkatlauncher/p;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/p;-><init>()V

    invoke-virtual {v0, p0, v3}, Lnl/ndsc/kitkatlauncher/p;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/t;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NUMBEROFSCREENSDIALOG"

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/p;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setting_number_of_screens_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/t;->e()V

    :cond_0
    const-string v0, "setting_grid_size_columns_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setting_grid_size_rows_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/t;->a()V

    :cond_2
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/t;->c()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/t;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "Screens"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/t;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/t;->a()V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/t;->e()V

    return-void
.end method
