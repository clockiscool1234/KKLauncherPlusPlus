.class public La/a/a/c/a;
.super La/a/a/c/l;

# interfaces
.implements Ljava/util/Map;


# instance fields
.field private c:La/a/a/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/a/c/l;-><init>()V

    return-void
.end method

.method private b()La/a/a/c/f;
    .locals 1

    iget-object v0, p0, La/a/a/c/a;->c:La/a/a/c/f;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/c/b;

    invoke-direct {v0, p0}, La/a/a/c/b;-><init>(La/a/a/c/a;)V

    iput-object v0, p0, La/a/a/c/a;->c:La/a/a/c/f;

    :cond_0
    iget-object v0, p0, La/a/a/c/a;->c:La/a/a/c/f;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2

    invoke-direct {p0}, La/a/a/c/a;->b()La/a/a/c/f;

    move-result-object v0

    iget-object v1, v0, La/a/a/c/f;->a:La/a/a/c/h;

    if-nez v1, :cond_0

    new-instance v1, La/a/a/c/h;

    invoke-direct {v1, v0}, La/a/a/c/h;-><init>(La/a/a/c/f;)V

    iput-object v1, v0, La/a/a/c/f;->a:La/a/a/c/h;

    :cond_0
    iget-object v0, v0, La/a/a/c/f;->a:La/a/a/c/h;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    invoke-direct {p0}, La/a/a/c/a;->b()La/a/a/c/f;

    move-result-object v0

    iget-object v1, v0, La/a/a/c/f;->b:La/a/a/c/i;

    if-nez v1, :cond_0

    new-instance v1, La/a/a/c/i;

    invoke-direct {v1, v0}, La/a/a/c/i;-><init>(La/a/a/c/f;)V

    iput-object v1, v0, La/a/a/c/f;->b:La/a/a/c/i;

    :cond_0
    iget-object v0, v0, La/a/a/c/f;->b:La/a/a/c/i;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    iget v0, p0, La/a/a/c/a;->b:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, La/a/a/c/a;->a(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, La/a/a/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    invoke-direct {p0}, La/a/a/c/a;->b()La/a/a/c/f;

    move-result-object v0

    iget-object v1, v0, La/a/a/c/f;->c:La/a/a/c/k;

    if-nez v1, :cond_0

    new-instance v1, La/a/a/c/k;

    invoke-direct {v1, v0}, La/a/a/c/k;-><init>(La/a/a/c/f;)V

    iput-object v1, v0, La/a/a/c/f;->c:La/a/a/c/k;

    :cond_0
    iget-object v0, v0, La/a/a/c/f;->c:La/a/a/c/k;

    return-object v0
.end method
