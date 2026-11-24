.class final Lnl/ndsc/kitkatlauncher/b/j;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/b/h;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/h;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/j;->a:Lnl/ndsc/kitkatlauncher/b/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v2, Lnl/ndsc/kitkatlauncher/b/k;

    invoke-direct {v2, p0}, Lnl/ndsc/kitkatlauncher/b/k;-><init>(Lnl/ndsc/kitkatlauncher/b/j;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/j;->a:Lnl/ndsc/kitkatlauncher/b/h;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v6, Lnl/ndsc/kitkatlauncher/a/a;

    invoke-direct {v6}, Lnl/ndsc/kitkatlauncher/a/a;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lnl/ndsc/kitkatlauncher/a/a;->a:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lnl/ndsc/kitkatlauncher/a/a;->b:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, v6, Lnl/ndsc/kitkatlauncher/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lnl/ndsc/kitkatlauncher/a/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/j;->a:Lnl/ndsc/kitkatlauncher/b/h;

    invoke-static {v0, p1}, Lnl/ndsc/kitkatlauncher/b/h;->a(Lnl/ndsc/kitkatlauncher/b/h;Ljava/util/List;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/j;->a:Lnl/ndsc/kitkatlauncher/b/h;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/h;->a(Lnl/ndsc/kitkatlauncher/b/h;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/j;->a:Lnl/ndsc/kitkatlauncher/b/h;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/h;->b(Lnl/ndsc/kitkatlauncher/b/h;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/j;->a:Lnl/ndsc/kitkatlauncher/b/h;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/h;->c(Lnl/ndsc/kitkatlauncher/b/h;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
