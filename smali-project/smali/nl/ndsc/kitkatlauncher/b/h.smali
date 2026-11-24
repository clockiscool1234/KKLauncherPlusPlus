.class public final Lnl/ndsc/kitkatlauncher/b/h;
.super Landroid/app/ListFragment;


# instance fields
.field private a:Lnl/ndsc/kitkatlauncher/v;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/h;)V
    .locals 3

    new-instance v0, Lnl/ndsc/kitkatlauncher/v;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lnl/ndsc/kitkatlauncher/b/h;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnl/ndsc/kitkatlauncher/v;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->a:Lnl/ndsc/kitkatlauncher/v;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/h;->a:Lnl/ndsc/kitkatlauncher/v;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/b/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/h;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lnl/ndsc/kitkatlauncher/b/h;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lnl/ndsc/kitkatlauncher/b/h;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040011

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/b/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "Hide Applications"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->c:Landroid/widget/ListView;

    new-instance v1, Lnl/ndsc/kitkatlauncher/b/i;

    invoke-direct {v1, p0}, Lnl/ndsc/kitkatlauncher/b/i;-><init>(Lnl/ndsc/kitkatlauncher/b/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f10001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/b/h;->d:Landroid/widget/ProgressBar;

    new-instance v0, Lnl/ndsc/kitkatlauncher/b/j;

    invoke-direct {v0, p0}, Lnl/ndsc/kitkatlauncher/b/j;-><init>(Lnl/ndsc/kitkatlauncher/b/h;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/b/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
