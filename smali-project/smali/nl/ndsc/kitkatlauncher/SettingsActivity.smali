.class public Lnl/ndsc/kitkatlauncher/SettingsActivity;
.super La/a/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/a/a/h;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-static {p0}, La/a/a/a/A;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->d()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, La/a/a/a/h;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lnl/ndsc/kitkatlauncher/o;->a(Landroid/content/Context;)V

    new-instance v0, Lnl/ndsc/kitkatlauncher/b/s;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/b/s;-><init>()V

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, La/a/a/a/h;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->d()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
