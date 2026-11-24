.class final Lnl/ndsc/kitkatlauncher/b/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/Exception;

.field private c:Lnl/ndsc/kitkatlauncher/ProgressBarPreference;

.field private synthetic d:Lnl/ndsc/kitkatlauncher/b/b;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/b;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lnl/ndsc/kitkatlauncher/b/c;->a:Landroid/content/Context;

    const-string v0, "setting_backup_key"

    invoke-virtual {p1, v0}, Lnl/ndsc/kitkatlauncher/b/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lnl/ndsc/kitkatlauncher/ProgressBarPreference;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->c:Lnl/ndsc/kitkatlauncher/ProgressBarPreference;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Lnl/ndsc/kitkatlauncher/e;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnl/ndsc/kitkatlauncher/e;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->b:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/b/c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->c:Lnl/ndsc/kitkatlauncher/ProgressBarPreference;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/ProgressBarPreference;->a()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    invoke-static {v0, v3}, Lnl/ndsc/kitkatlauncher/b/b;->a(Lnl/ndsc/kitkatlauncher/b/b;Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Backup failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnl/ndsc/kitkatlauncher/b/c;->b:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/c/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/b;->a(Lnl/ndsc/kitkatlauncher/b/b;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Backup finished"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->c:Lnl/ndsc/kitkatlauncher/ProgressBarPreference;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/ProgressBarPreference;->a()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/c;->d:Lnl/ndsc/kitkatlauncher/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnl/ndsc/kitkatlauncher/b/b;->a(Lnl/ndsc/kitkatlauncher/b/b;Z)V

    return-void
.end method
