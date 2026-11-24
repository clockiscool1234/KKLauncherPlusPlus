.class final Lcom/android/launcher3/M;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field private i:Ljava/util/HashMap;

.field private synthetic j:Lcom/android/launcher3/CellLayout;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/M;->j:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/M;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/M;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/M;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/CellLayout;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/M;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    iget-object v3, p0, Lcom/android/launcher3/M;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/K;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/K;->a(Lcom/android/launcher3/K;)V

    goto :goto_0
.end method

.method final a(Landroid/view/View;Lcom/android/launcher3/K;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/M;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/K;

    iget-object v2, p0, Lcom/android/launcher3/M;->j:Lcom/android/launcher3/CellLayout;

    invoke-direct {v1, v2}, Lcom/android/launcher3/K;-><init>(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/M;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/M;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/K;

    iget-object v3, p0, Lcom/android/launcher3/M;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/K;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/K;->a(Lcom/android/launcher3/K;)V

    goto :goto_0
.end method

.method final c()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/M;->g:I

    iget v1, p0, Lcom/android/launcher3/M;->h:I

    mul-int/2addr v0, v1

    return v0
.end method
