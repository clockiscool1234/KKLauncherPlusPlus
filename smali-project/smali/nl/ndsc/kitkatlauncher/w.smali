.class final Lnl/ndsc/kitkatlauncher/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/v;

.field private final synthetic b:Lnl/ndsc/kitkatlauncher/a/a;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/v;Lnl/ndsc/kitkatlauncher/a/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/w;->a:Lnl/ndsc/kitkatlauncher/v;

    iput-object p2, p0, Lnl/ndsc/kitkatlauncher/w;->b:Lnl/ndsc/kitkatlauncher/a/a;

    iput-object p3, p0, Lnl/ndsc/kitkatlauncher/w;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "KLP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCheckedChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnl/ndsc/kitkatlauncher/w;->b:Lnl/ndsc/kitkatlauncher/a/a;

    iget-object v2, v2, Lnl/ndsc/kitkatlauncher/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/w;->a:Lnl/ndsc/kitkatlauncher/v;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/v;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/w;->b:Lnl/ndsc/kitkatlauncher/a/a;

    invoke-static {v0, v1}, La/a/a/c/d;->a(Landroid/content/Context;Lnl/ndsc/kitkatlauncher/a/a;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/w;->a:Lnl/ndsc/kitkatlauncher/v;

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/w;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnl/ndsc/kitkatlauncher/v;->a(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/w;->a:Lnl/ndsc/kitkatlauncher/v;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/v;->a(Lnl/ndsc/kitkatlauncher/v;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, La/a/a/c/d;->b(Landroid/content/Context;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/w;->a:Lnl/ndsc/kitkatlauncher/v;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/v;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/w;->b:Lnl/ndsc/kitkatlauncher/a/a;

    invoke-static {v0, v1}, La/a/a/c/d;->b(Landroid/content/Context;Lnl/ndsc/kitkatlauncher/a/a;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/w;->a:Lnl/ndsc/kitkatlauncher/v;

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/w;->c:Landroid/view/View;

    invoke-static {v0, v3}, Lnl/ndsc/kitkatlauncher/v;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method
