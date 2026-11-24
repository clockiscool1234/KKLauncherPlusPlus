.class final Lnl/ndsc/kitkatlauncher/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/b/l;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/l;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/l;->e(Lnl/ndsc/kitkatlauncher/b/l;)V

    :goto_0
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v0, p2}, Lnl/ndsc/kitkatlauncher/b/l;->a(Lnl/ndsc/kitkatlauncher/b/l;Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, La/a/a/c/d;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/a/c/d;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/l;->a(Lnl/ndsc/kitkatlauncher/b/l;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/q;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/l;->f(Lnl/ndsc/kitkatlauncher/b/l;)V

    goto :goto_0
.end method
