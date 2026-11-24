.class final Lnl/ndsc/kitkatlauncher/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/b/l;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/l;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/o;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/o;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-virtual {v1}, Lnl/ndsc/kitkatlauncher/b/l;->a()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/o;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v1}, Lnl/ndsc/kitkatlauncher/b/l;->d(Lnl/ndsc/kitkatlauncher/b/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
