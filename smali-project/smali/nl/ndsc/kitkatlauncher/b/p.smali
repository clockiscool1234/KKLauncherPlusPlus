.class final Lnl/ndsc/kitkatlauncher/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/b/l;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/l;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/p;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lnl/ndsc/kitkatlauncher/o;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/p;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/l;->a()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
