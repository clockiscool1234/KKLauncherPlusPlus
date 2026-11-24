.class public final Lnl/ndsc/kitkatlauncher/a;
.super Landroid/app/DialogFragment;


# instance fields
.field a:Lnl/ndsc/kitkatlauncher/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/a;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lnl/ndsc/kitkatlauncher/d;

    iput-object v0, p0, Lnl/ndsc/kitkatlauncher/a;->a:Lnl/ndsc/kitkatlauncher/d;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnl/ndsc/kitkatlauncher/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Create new Backup"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Create"

    new-instance v3, Lnl/ndsc/kitkatlauncher/b;

    invoke-direct {v3, p0}, Lnl/ndsc/kitkatlauncher/b;-><init>(Lnl/ndsc/kitkatlauncher/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lnl/ndsc/kitkatlauncher/c;

    invoke-direct {v3, p0}, Lnl/ndsc/kitkatlauncher/c;-><init>(Lnl/ndsc/kitkatlauncher/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
