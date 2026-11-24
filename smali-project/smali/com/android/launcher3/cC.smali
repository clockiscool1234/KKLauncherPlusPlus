.class final Lcom/android/launcher3/cC;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lcom/android/launcher3/cB;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cB;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cC;->a:Lcom/android/launcher3/cB;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/cC;->a:Lcom/android/launcher3/cB;

    invoke-static {v0}, Lcom/android/launcher3/cB;->a(Lcom/android/launcher3/cB;)Lcom/android/launcher3/cO;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/cO;->a(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/cC;->a:Lcom/android/launcher3/cB;

    invoke-static {v0}, Lcom/android/launcher3/cB;->a(Lcom/android/launcher3/cB;)Lcom/android/launcher3/cO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cO;->c()V

    return-void
.end method
