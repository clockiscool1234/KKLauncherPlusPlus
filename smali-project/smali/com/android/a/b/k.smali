.class final Lcom/android/a/b/k;
.super Ljava/lang/Object;


# static fields
.field private static final c:[I


# instance fields
.field private final a:I

.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v3, v0, v3

    aput v4, v0, v4

    sput-object v0, Lcom/android/a/b/k;->c:[I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/a/b/k;->b:Ljava/util/Map;

    iput p1, p0, Lcom/android/a/b/k;->a:I

    return-void
.end method

.method protected static a()[I
    .locals 1

    sget-object v0, Lcom/android/a/b/k;->c:[I

    return-object v0
.end method

.method private c()I
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a(Lcom/android/a/b/j;)Lcom/android/a/b/j;
    .locals 2

    iget v0, p0, Lcom/android/a/b/k;->a:I

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->b(I)V

    iget-object v0, p0, Lcom/android/a/b/k;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/a/b/j;->b()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/b/j;

    return-object v0
.end method

.method protected final a(S)Lcom/android/a/b/j;
    .locals 2

    iget-object v0, p0, Lcom/android/a/b/k;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/b/j;

    return-object v0
.end method

.method protected final b()I
    .locals 1

    iget v0, p0, Lcom/android/a/b/k;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/a/b/k;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/a/b/k;

    iget v0, p1, Lcom/android/a/b/k;->a:I

    iget v1, p0, Lcom/android/a/b/k;->a:I

    if-ne v0, v1, :cond_4

    invoke-direct {p1}, Lcom/android/a/b/k;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/android/a/b/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/android/a/b/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p1, Lcom/android/a/b/k;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/a/b/j;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/a/b/j;

    array-length v5, v0

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    aget-object v6, v0, v4

    invoke-virtual {v6}, Lcom/android/a/b/j;->b()S

    move-result v1

    invoke-static {v1}, Lcom/android/a/b/c;->a(S)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/a/b/k;->b:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/a/b/j;->b()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/a/b/j;

    invoke-virtual {v6, v1}, Lcom/android/a/b/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method
