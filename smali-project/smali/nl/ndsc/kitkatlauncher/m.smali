.class final Lnl/ndsc/kitkatlauncher/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/l;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/l;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/m;->a:Lnl/ndsc/kitkatlauncher/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/m;->a:Lnl/ndsc/kitkatlauncher/l;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/l;->a(Lnl/ndsc/kitkatlauncher/l;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/m;->a:Lnl/ndsc/kitkatlauncher/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnl/ndsc/kitkatlauncher/l;->a:Z

    return-void
.end method
