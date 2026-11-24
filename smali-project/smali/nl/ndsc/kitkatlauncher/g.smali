.class public final Lnl/ndsc/kitkatlauncher/g;
.super Landroid/app/DialogFragment;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/widget/NumberPicker;

.field private e:Landroid/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GridSize"

    sput-object v0, Lnl/ndsc/kitkatlauncher/g;->a:Ljava/lang/String;

    const-string v0, "GridSizeDrawer"

    sput-object v0, Lnl/ndsc/kitkatlauncher/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lnl/ndsc/kitkatlauncher/g;)V
    .locals 4

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/g;->d:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lnl/ndsc/kitkatlauncher/g;->e:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    sget-object v3, Lnl/ndsc/kitkatlauncher/g;->a:Ljava/lang/String;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/c/d;->f(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, La/a/a/c/d;->g(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/c/d;->h(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, La/a/a/c/d;->i(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x5

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->c:Landroid/view/View;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->c:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Grid Size"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Save"

    new-instance v2, Lnl/ndsc/kitkatlauncher/h;

    invoke-direct {v2, p0}, Lnl/ndsc/kitkatlauncher/h;-><init>(Lnl/ndsc/kitkatlauncher/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lnl/ndsc/kitkatlauncher/i;

    invoke-direct {v2, p0}, Lnl/ndsc/kitkatlauncher/i;-><init>(Lnl/ndsc/kitkatlauncher/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnl/ndsc/kitkatlauncher/g;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, La/a/a/c/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, La/a/a/c/d;->b(Landroid/content/Context;I)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->c:Landroid/view/View;

    const v4, 0x7f100026

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->d:Landroid/widget/NumberPicker;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->d:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->d:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->d:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->d:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->c:Landroid/view/View;

    const v2, 0x7f100028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->e:Landroid/widget/NumberPicker;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->e:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->e:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->e:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/g;->e:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, La/a/a/c/d;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, La/a/a/c/d;->d(Landroid/content/Context;I)I

    move-result v0

    move v2, v1

    move v1, v0

    goto :goto_0
.end method
