.class final Lnl/ndsc/kitkatlauncher/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lnl/ndsc/kitkatlauncher/b/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lnl/ndsc/kitkatlauncher/a/a;

    check-cast p2, Lnl/ndsc/kitkatlauncher/a/a;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p1, Lnl/ndsc/kitkatlauncher/a/a;->a:Ljava/lang/String;

    iget-object v2, p2, Lnl/ndsc/kitkatlauncher/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
