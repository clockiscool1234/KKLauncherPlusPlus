.class public final Lnl/ndsc/kitkatlauncher/b/g;
.super Lnl/ndsc/kitkatlauncher/b/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/r;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_google_now_anim"

    invoke-virtual {p0, v1, v0}, Lnl/ndsc/kitkatlauncher/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "setting_google_now_anim"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/g;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v1, "setting_google_now_enable"

    invoke-virtual {p0, v1}, Lnl/ndsc/kitkatlauncher/b/g;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->a(Ljava/lang/String;)V

    const-string v0, "setting_icons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/g;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/l;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/l;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setting_google_now_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/g;->e()V

    :cond_0
    const-string v0, "setting_google_now_anim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/g;->a()V

    :cond_1
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/g;->c()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/g;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "General"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/g;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/g;->a()V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/g;->e()V

    return-void
.end method
