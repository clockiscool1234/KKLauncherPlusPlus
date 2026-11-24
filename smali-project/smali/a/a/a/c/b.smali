.class final La/a/a/c/b;
.super La/a/a/c/f;


# instance fields
.field private synthetic d:La/a/a/c/a;


# direct methods
.method constructor <init>(La/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-direct {p0}, La/a/a/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    iget v0, v0, La/a/a/c/a;->b:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-virtual {v0}, La/a/a/c/a;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, La/a/a/c/a;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    iget-object v0, v0, La/a/a/c/a;->a:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, La/a/a/c/l;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v0, v0, La/a/a/c/l;->a:[Ljava/lang/Object;

    aput-object p2, v0, v1

    return-object v2
.end method

.method protected final a(I)V
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-virtual {v0, p1}, La/a/a/c/a;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-virtual {v0, p1, p2}, La/a/a/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-virtual {v0, p1}, La/a/a/c/a;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, La/a/a/c/b;->d:La/a/a/c/a;

    invoke-virtual {v0}, La/a/a/c/a;->clear()V

    return-void
.end method
