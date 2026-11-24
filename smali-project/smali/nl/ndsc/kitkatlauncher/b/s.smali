.class public final Lnl/ndsc/kitkatlauncher/b/s;
.super Lnl/ndsc/kitkatlauncher/b/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_main_general"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/g;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/g;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_0
    const-string v0, "pref_main_screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/t;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/t;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_1
    const-string v0, "pref_main_drawer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/f;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/f;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_2
    const-string v0, "pref_main_behavior"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/e;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/e;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_3
    const-string v0, "pref_main_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/b;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_4
    const-string v0, "pref_main_about"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/a;

    invoke-direct {v1}, Lnl/ndsc/kitkatlauncher/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->a(Landroid/app/Fragment;)V

    :cond_5
    const-string v0, "pref_main_prokey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=nl.ndsc.kitkatlauncherkey"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/s;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/s;->addPreferencesFromResource(I)V

    sget-boolean v0, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "pref_main_prokey"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/s;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/s;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "Settings"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/s;->c(Ljava/lang/String;)V

    return-void
.end method
