.class final Lnl/ndsc/kitkatlauncher/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/x;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/x;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/y;->a:Lnl/ndsc/kitkatlauncher/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=nl.ndsc.kitkatlauncherkey"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/y;->a:Lnl/ndsc/kitkatlauncher/x;

    invoke-virtual {v1, v0}, Lnl/ndsc/kitkatlauncher/x;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
