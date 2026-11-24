.class final Lcom/android/launcher3/du;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/dt;

.field private final synthetic b:Lcom/android/launcher3/de;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dt;Lcom/android/launcher3/de;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/du;->a:Lcom/android/launcher3/dt;

    iput-object p2, p0, Lcom/android/launcher3/du;->b:Lcom/android/launcher3/de;

    iput-object p3, p0, Lcom/android/launcher3/du;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/du;->a:Lcom/android/launcher3/dt;

    iget-object v0, v0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/du;->a:Lcom/android/launcher3/dt;

    iget-object v0, v0, Lcom/android/launcher3/dt;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/du;->b:Lcom/android/launcher3/de;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/du;->b:Lcom/android/launcher3/de;

    iget-object v1, p0, Lcom/android/launcher3/du;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/de;->c(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
