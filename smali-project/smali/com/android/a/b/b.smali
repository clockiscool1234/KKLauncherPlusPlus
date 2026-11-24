.class final Lcom/android/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/android/a/b/k;

.field private b:[B

.field private c:Ljava/util/ArrayList;

.field private final d:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x49

    new-array v0, v6, [B

    const/16 v1, 0x41

    aput-byte v1, v0, v3

    const/16 v1, 0x53

    aput-byte v1, v0, v4

    const/16 v1, 0x43

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    new-array v0, v6, [B

    const/16 v1, 0x4a

    aput-byte v1, v0, v3

    aput-byte v2, v0, v4

    const/16 v1, 0x53

    aput-byte v1, v0, v5

    new-array v0, v6, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    const/16 v1, 0x4e

    aput-byte v1, v0, v4

    aput-byte v2, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/a/b/k;

    iput-object v0, p0, Lcom/android/a/b/b;->a:[Lcom/android/a/b/k;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/a/b/b;->d:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected final a(SI)Lcom/android/a/b/j;
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/b;->a:[Lcom/android/a/b/k;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/a/b/k;->a(S)Lcom/android/a/b/j;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(I)Lcom/android/a/b/k;
    .locals 1

    invoke-static {p1}, Lcom/android/a/b/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/a/b/b;->a:[Lcom/android/a/b/k;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(I[B)V
    .locals 3

    iget-object v0, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected final a(Lcom/android/a/b/k;)V
    .locals 2

    iget-object v0, p0, Lcom/android/a/b/b;->a:[Lcom/android/a/b/k;

    invoke-virtual {p1}, Lcom/android/a/b/k;->b()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/a/b/b;->b:[B

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/a/b/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/a/b/b;

    iget-object v0, p1, Lcom/android/a/b/b;->d:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/android/a/b/b;->d:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/a/b/b;->b:[B

    iget-object v1, p0, Lcom/android/a/b/b;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    move v0, v3

    :goto_2
    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/a/b/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/a/b/b;->a(I)Lcom/android/a/b/k;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/a/b/b;->a(I)Lcom/android/a/b/k;

    move-result-object v2

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/a/b/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
