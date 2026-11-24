.class final Lnl/ndsc/kitkatlauncher/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/launcher3/cr;


# instance fields
.field a:Z

.field private synthetic b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/KLPLauncher;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    iput-object p2, p0, Lnl/ndsc/kitkatlauncher/l;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/ndsc/kitkatlauncher/l;->a:Z

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/l;)V
    .locals 0

    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/l;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/KLPLauncher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setBackgroundAlpha(F)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/KLPLauncher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->e(IZ)V

    return-void
.end method

.method static synthetic b(Lnl/ndsc/kitkatlauncher/l;)V
    .locals 6

    const v5, 0x7f050001

    const/high16 v4, 0x10000

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/KLPLauncher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lnl/ndsc/kitkatlauncher/l;->c:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v2}, Lnl/ndsc/kitkatlauncher/KLPLauncher;->a(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->c:Landroid/content/Context;

    invoke-static {v0}, La/a/a/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Slide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    const v1, 0x7f050002

    invoke-virtual {v0, v1, v5}, Lnl/ndsc/kitkatlauncher/KLPLauncher;->overridePendingTransition(II)V

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lnl/ndsc/kitkatlauncher/m;

    invoke-direct {v1, p0}, Lnl/ndsc/kitkatlauncher/m;-><init>(Lnl/ndsc/kitkatlauncher/l;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->b:Lnl/ndsc/kitkatlauncher/KLPLauncher;

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1, v5}, Lnl/ndsc/kitkatlauncher/KLPLauncher;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lnl/ndsc/kitkatlauncher/l;->b()V

    iput-boolean v1, p0, Lnl/ndsc/kitkatlauncher/l;->a:Z

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/l;->c:Landroid/content/Context;

    const-string v2, "Failed to start Google Now"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lnl/ndsc/kitkatlauncher/l;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnl/ndsc/kitkatlauncher/l;->a:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lnl/ndsc/kitkatlauncher/n;

    invoke-direct {v1, p0}, Lnl/ndsc/kitkatlauncher/n;-><init>(Lnl/ndsc/kitkatlauncher/l;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
