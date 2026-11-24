.class final Lnl/ndsc/kitkatlauncher/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/x;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/x;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/z;->a:Lnl/ndsc/kitkatlauncher/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/z;->a:Lnl/ndsc/kitkatlauncher/x;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/x;->dismiss()V

    return-void
.end method
