.class public final Lnl/ndsc/kitkatlauncher/B;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lnl/ndsc/kitkatlauncher/D;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/B;->dismiss()V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/B;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/B;->a:Lnl/ndsc/kitkatlauncher/D;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/B;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/ndsc/kitkatlauncher/a/c;

    invoke-interface {v1, v0}, Lnl/ndsc/kitkatlauncher/D;->a(Lnl/ndsc/kitkatlauncher/a/c;)V

    :cond_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/B;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lnl/ndsc/kitkatlauncher/D;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/B;->a:Lnl/ndsc/kitkatlauncher/D;

    invoke-static {}, Lnl/ndsc/kitkatlauncher/e;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/B;->b:Ljava/util/List;

    new-instance v1, Lnl/ndsc/kitkatlauncher/E;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/B;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lnl/ndsc/kitkatlauncher/B;->b:Ljava/util/List;

    invoke-direct {v1, v0, v2}, Lnl/ndsc/kitkatlauncher/E;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/B;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/B;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/B;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const-string v1, "Choose Restore"

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lnl/ndsc/kitkatlauncher/C;

    invoke-direct {v3, p0}, Lnl/ndsc/kitkatlauncher/C;-><init>(Lnl/ndsc/kitkatlauncher/B;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "No backups found."

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Ok"

    goto :goto_0
.end method
