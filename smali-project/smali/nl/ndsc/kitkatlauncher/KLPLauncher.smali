.class public Lnl/ndsc/kitkatlauncher/KLPLauncher;
.super Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    invoke-static {p0}, La/a/a/c/d;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected final b()V
    .locals 3

    new-instance v0, Lnl/ndsc/kitkatlauncher/l;

    invoke-direct {v0, p0, p0}, Lnl/ndsc/kitkatlauncher/l;-><init>(Lnl/ndsc/kitkatlauncher/KLPLauncher;Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-super {p0, v1, v0, v2}, Lcom/android/launcher3/Launcher;->a(Landroid/view/View;Lcom/android/launcher3/cr;Ljava/lang/String;)Lcom/android/launcher3/cu;

    return-void
.end method
