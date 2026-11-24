.class public final Lnl/ndsc/kitkatlauncher/b/b;
.super Lnl/ndsc/kitkatlauncher/b/r;

# interfaces
.implements Lnl/ndsc/kitkatlauncher/D;
.implements Lnl/ndsc/kitkatlauncher/d;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/r;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/ndsc/kitkatlauncher/b/b;->a:Z

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/b;)V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/b;->e()V

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lnl/ndsc/kitkatlauncher/b/b;->a:Z

    return-void
.end method

.method private e()V
    .locals 4

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_backup_key"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last backup: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnl/ndsc/kitkatlauncher/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lnl/ndsc/kitkatlauncher/b/c;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnl/ndsc/kitkatlauncher/b/c;-><init>(Lnl/ndsc/kitkatlauncher/b/b;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lnl/ndsc/kitkatlauncher/b/b;->a:Z

    if-nez v0, :cond_1

    const-string v0, "setting_backup_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Lnl/ndsc/kitkatlauncher/a;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/a;-><init>()V

    invoke-virtual {v0, p0, v3}, Lnl/ndsc/kitkatlauncher/a;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "BACKUPDIALOG"

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "setting_restore_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Lnl/ndsc/kitkatlauncher/B;

    invoke-direct {v0}, Lnl/ndsc/kitkatlauncher/B;-><init>()V

    invoke-virtual {v0, p0, v3}, Lnl/ndsc/kitkatlauncher/B;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RESTOREDIALOG"

    invoke-virtual {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/B;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->d()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->d()V

    goto :goto_1
.end method

.method public final a(Lnl/ndsc/kitkatlauncher/a/c;)V
    .locals 4

    iget-object v0, p1, Lnl/ndsc/kitkatlauncher/a/c;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Lnl/ndsc/kitkatlauncher/b/d;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnl/ndsc/kitkatlauncher/b/d;-><init>(Lnl/ndsc/kitkatlauncher/b/b;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    iget-object v3, p1, Lnl/ndsc/kitkatlauncher/a/c;->a:Ljava/io/File;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/b/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lnl/ndsc/kitkatlauncher/b/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/b;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final onResume()V
    .locals 6

    const v5, 0x7f040019

    const v4, 0x7f040018

    invoke-super {p0}, Lnl/ndsc/kitkatlauncher/b/r;->onResume()V

    const-string v0, "Backup"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/b;->e()V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setting_restore_key"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last restore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnl/ndsc/kitkatlauncher/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setting_backup_key"

    invoke-virtual {p0, v0}, Lnl/ndsc/kitkatlauncher/b/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "setting_restore_key"

    invoke-virtual {p0, v1}, Lnl/ndsc/kitkatlauncher/b/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sget-boolean v2, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method
