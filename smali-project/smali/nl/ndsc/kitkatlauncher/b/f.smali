.class public final Lnl/ndsc/kitkatlauncher/b/f;
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

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, La/a/a/c/d;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, La/a/a/c/d;->d(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "setting_grid_size_drawer_key"

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

    invoke-virtual {p0, v2, v0}, Lnl/ndsc/kitkatlauncher/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setting_grid_size_drawer_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnl/ndsc/kitkatlauncher/g;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/g;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lnl/ndsc/kitkatlauncher/g;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lnl/ndsc/kitkatlauncher/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/g;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    const-string v0, "setting_hide_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/f;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/h;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/h;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/f;->d()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setting_grid_size_drawer_columns_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setting_grid_size_drawer_rows_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/f;->a()V

    :cond_1
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/f;->c()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/f;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "Drawer"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/f;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/f;->a()V

    const-string v0, "setting_hide_apps"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/f;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sget-boolean v1, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-nez v1, :cond_0

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method
