.class public final Lnl/ndsc/kitkatlauncher/b/a;
.super Lnl/ndsc/kitkatlauncher/b/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/r;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v2, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-eqz v2, :cond_0

    const-string v1, " PRO"

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->a(Ljava/lang/String;)V

    const-string v0, "setting_about_github"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://github.com/bvermeule/Launcher3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/a;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "setting_about_playstore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://search?q=pub:Bj\u00f6rn+Vermeule"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/a;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string v0, "setting_about_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=nl.ndsc.kitkatlauncher"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/a;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/a;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "About"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/a;->c(Ljava/lang/String;)V

    const-string v0, "setting_about_version"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
