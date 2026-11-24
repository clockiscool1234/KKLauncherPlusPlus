.class final Lcom/android/launcher3/cW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/cV;

.field private final synthetic b:Lcom/android/launcher3/de;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/cV;Lcom/android/launcher3/de;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/cW;->a:Lcom/android/launcher3/cV;

    iput-object p2, p0, Lcom/android/launcher3/cW;->b:Lcom/android/launcher3/de;

    iput-object p3, p0, Lcom/android/launcher3/cW;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/cW;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/cW;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/cW;->a:Lcom/android/launcher3/cV;

    iget-object v0, v0, Lcom/android/launcher3/cV;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/cW;->a:Lcom/android/launcher3/cV;

    iget-object v0, v0, Lcom/android/launcher3/cV;->a:Lcom/android/launcher3/cO;

    invoke-static {v0}, Lcom/android/launcher3/cO;->h(Lcom/android/launcher3/cO;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/de;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/cW;->b:Lcom/android/launcher3/de;

    if-ne v1, v0, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/cW;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cW;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/cW;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-wide v3, v0, Lcom/android/launcher3/bD;->i:J

    iget-object v0, p0, Lcom/android/launcher3/cW;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/cW;->b:Lcom/android/launcher3/de;

    iget-object v3, p0, Lcom/android/launcher3/cW;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/cW;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v2, v1, v4}, Lcom/android/launcher3/de;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    iget-wide v6, v0, Lcom/android/launcher3/bD;->i:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
