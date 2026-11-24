.class final Lnl/ndsc/kitkatlauncher/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/p;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/p;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/s;->a:Lnl/ndsc/kitkatlauncher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/s;->a:Lnl/ndsc/kitkatlauncher/p;

    iget-object v0, v0, Lnl/ndsc/kitkatlauncher/p;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/s;->a:Lnl/ndsc/kitkatlauncher/p;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/p;->b(Lnl/ndsc/kitkatlauncher/p;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
