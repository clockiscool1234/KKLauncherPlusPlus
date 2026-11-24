.class public Lnl/ndsc/kitkatlauncher/b/r;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final b()Lnl/ndsc/kitkatlauncher/SettingsActivity;
    .locals 1

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lnl/ndsc/kitkatlauncher/SettingsActivity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/a/c/d;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/r;->b()Lnl/ndsc/kitkatlauncher/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final d()V
    .locals 3

    new-instance v0, Lnl/ndsc/kitkatlauncher/x;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/x;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lnl/ndsc/kitkatlauncher/x;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/r;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PRODIALOG"

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/x;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/r;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/r;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/r;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/r;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lnl/ndsc/kitkatlauncher/b/r;->b(Ljava/lang/String;)V

    return-void
.end method
