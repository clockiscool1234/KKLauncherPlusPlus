.class final Lcom/android/launcher3/cG;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/android/launcher3/Launcher;

.field private b:Lcom/android/launcher3/bn;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/bn;

    invoke-direct {v0}, Lcom/android/launcher3/bn;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/cG;->b:Lcom/android/launcher3/bn;

    iput-object p1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(IIZZ)Lcom/android/launcher3/Cling;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    const/4 v1, 0x0

    if-lez p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Cling;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    const/16 v1, 0xfa

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/Cling;->a(ZI)V

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Cling;->setSystemUiVisibility(I)V

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/android/launcher3/cG;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/launcher3/cI;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/cI;-><init>(Lcom/android/launcher3/cG;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher3/cG;->b:Lcom/android/launcher3/bn;

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bn;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Cling;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/launcher3/cJ;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/launcher3/cJ;-><init>(Lcom/android/launcher3/cG;Lcom/android/launcher3/Cling;Ljava/lang/String;Ljava/lang/Runnable;)V

    if-gtz p4, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/cG;->b:Lcom/android/launcher3/bn;

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bn;->a(Landroid/view/View;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Cling;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Cling;->setSystemUiVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p4, v0}, Lcom/android/launcher3/Cling;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Lcom/android/launcher3/Cling;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance v2, Lcom/android/launcher3/cN;

    invoke-direct {v2, p0}, Lcom/android/launcher3/cN;-><init>(Lcom/android/launcher3/cG;)V

    :cond_0
    const/16 v4, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->k()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/SearchDropTargetBar;->a(Z)V

    return-void
.end method

.method private a(Lcom/android/launcher3/Cling;Ljava/lang/String;ZZ)V
    .locals 6

    const-wide/16 v4, 0xfa

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v0, 0x7f100015

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/cH;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/cH;-><init>(Lcom/android/launcher3/cG;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/cG;Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V
    .locals 6

    const/16 v4, 0xc8

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    return-void
.end method

.method private j()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v0, :cond_2

    array-length v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "no_modify_accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->N()V

    new-instance v0, Lcom/android/launcher3/cL;

    invoke-direct {v0, p0}, Lcom/android/launcher3/cL;-><init>(Lcom/android/launcher3/cG;)V

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v2, 0x7f100040

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->H()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->af()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/String;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/cG;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cling_gel.first_run.dismissed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cling_gel.migration.dismissed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/cB;->h()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final d()V
    .locals 1

    const v0, 0x7f10003c

    invoke-direct {p0, v0}, Lcom/android/launcher3/cG;->a(I)V

    const v0, 0x7f10003d

    invoke-direct {p0, v0}, Lcom/android/launcher3/cG;->a(I)V

    return-void
.end method

.method public final dismissFirstRunCling(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Cling;

    new-instance v2, Lcom/android/launcher3/cK;

    invoke-direct {v2, p0}, Lcom/android/launcher3/cK;-><init>(Lcom/android/launcher3/cG;)V

    const-string v3, "cling_gel.first_run.dismissed"

    const/16 v4, 0xc8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->k()Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/SearchDropTargetBar;->b(Z)V

    return-void
.end method

.method public final dismissFolderCling(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Cling;

    const/4 v2, 0x0

    const-string v3, "cling_gel.folder.dismissed"

    const/16 v4, 0xc8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    return-void
.end method

.method public final dismissMigrationClingCopyApps(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->m()Lcom/android/launcher3/cO;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/cO;->a(ZZ)V

    const/16 v1, -0x3e9

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher3/cO;->a(ZII)V

    const-string v0, "com.android.launcher3.prefs"

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.user_migrated_from_old_data"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/android/launcher3/cG;->k()V

    return-void
.end method

.method public final dismissMigrationClingUseDefault(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->m()Lcom/android/launcher3/cO;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/cO;->a(ZZ)V

    const/16 v1, -0x3e9

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/cO;->a(ZII)V

    invoke-direct {p0}, Lcom/android/launcher3/cG;->k()V

    return-void
.end method

.method public final dismissMigrationWorkspaceCling(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v1, 0x7f10003e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    const-string v1, "cling_gel.migration_workspace.dismissed"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final dismissWorkspaceCling(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    const-string v1, "cling_gel.workspace.dismissed"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final e()V
    .locals 7

    const v6, 0x7f10003c

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "workspace_custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->o()Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Cling;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->G()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0, v0, v5, v2, v3}, Lcom/android/launcher3/cG;->a(Lcom/android/launcher3/Cling;Ljava/lang/String;ZZ)V

    :cond_1
    invoke-direct {p0, v6, v3, v3, v2}, Lcom/android/launcher3/cG;->a(IIZZ)Lcom/android/launcher3/Cling;

    :goto_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/cG;->d()V

    goto :goto_1
.end method

.method public final f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->O()V

    const v0, 0x7f10003d

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher3/cG;->a(IIZZ)Lcom/android/launcher3/Cling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->d()V

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->bringToFront()V

    return-void
.end method

.method public final g()V
    .locals 4

    const v3, 0x7f10003e

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/cG;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cling_gel.migration_workspace.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v3, v2, v2, v0}, Lcom/android/launcher3/cG;->a(IIZZ)Lcom/android/launcher3/Cling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->a()V

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->d()V

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->bringToFront()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher3/cG;->a(I)V

    goto :goto_0
.end method

.method public final h()V
    .locals 6

    const v3, 0x7f10003f

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/cG;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cling_gel.workspace.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v3, v2, v2, v0}, Lcom/android/launcher3/cG;->a(IIZZ)Lcom/android/launcher3/Cling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Cling;->b()V

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->I()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->K()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->J()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->L()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/Launcher;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Cling;->a(IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/launcher3/cG;->a(I)V

    goto :goto_0
.end method

.method public final i()Lcom/android/launcher3/Cling;
    .locals 5

    const v4, 0x7f100040

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/cG;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cling_gel.folder.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "launcher.user_migrated_from_old_data"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f10003b

    invoke-direct {p0, v4, v0, v3, v3}, Lcom/android/launcher3/cG;->a(IIZZ)Lcom/android/launcher3/Cling;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/cG;->a:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Folder;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Cling;->b(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->bringToFront()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/launcher3/cG;->a(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method
