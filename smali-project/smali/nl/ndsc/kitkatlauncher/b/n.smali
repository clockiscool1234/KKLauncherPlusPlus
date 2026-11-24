.class final Lnl/ndsc/kitkatlauncher/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Lnl/ndsc/kitkatlauncher/b/l;

.field private final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/l;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lnl/ndsc/kitkatlauncher/b/n;->a:Lnl/ndsc/kitkatlauncher/b/l;

    iput-object p2, p0, Lnl/ndsc/kitkatlauncher/b/n;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    mul-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x32

    iget-object v1, p0, Lnl/ndsc/kitkatlauncher/b/n;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/n;->a:Lnl/ndsc/kitkatlauncher/b/l;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Lnl/ndsc/kitkatlauncher/b/l;->b(Lnl/ndsc/kitkatlauncher/b/l;F)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/n;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v0}, Lnl/ndsc/kitkatlauncher/b/l;->a(Lnl/ndsc/kitkatlauncher/b/l;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/n;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnl/ndsc/kitkatlauncher/b/n;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-static {v2}, Lnl/ndsc/kitkatlauncher/b/l;->c(Lnl/ndsc/kitkatlauncher/b/l;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/a/a/c/d;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lnl/ndsc/kitkatlauncher/b/n;->a:Lnl/ndsc/kitkatlauncher/b/l;

    invoke-virtual {v0}, Lnl/ndsc/kitkatlauncher/b/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/a/c/d;->b(Landroid/content/Context;Z)V

    return-void
.end method
