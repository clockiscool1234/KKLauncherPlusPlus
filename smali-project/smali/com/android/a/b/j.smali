.class public final Lcom/android/a/b/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/nio/charset/Charset;

.field private static final b:[I


# instance fields
.field private final c:S

.field private final d:S

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/a/b/j;->a:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/a/b/j;->b:[I

    aput v2, v0, v2

    sget-object v0, Lcom/android/a/b/j;->b:[I

    aput v2, v0, v4

    sget-object v0, Lcom/android/a/b/j;->b:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/android/a/b/j;->b:[I

    aput v3, v0, v3

    sget-object v0, Lcom/android/a/b/j;->b:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    sget-object v0, Lcom/android/a/b/j;->b:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/android/a/b/j;->b:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lcom/android/a/b/j;->b:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/android/a/b/j;->c:S

    iput-short p2, p0, Lcom/android/a/b/j;->d:S

    iput p3, p0, Lcom/android/a/b/j;->f:I

    iput-boolean p5, p0, Lcom/android/a/b/j;->e:Z

    iput p4, p0, Lcom/android/a/b/j;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static a(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static b(S)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private f(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/a/b/j;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/a/b/j;->f:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/a/b/j;->g:I

    return v0
.end method

.method protected final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/a/b/j;->e:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-short v0, p0, Lcom/android/a/b/j;->d:S

    if-eq v0, v4, :cond_0

    iget-short v0, p0, Lcom/android/a/b/j;->d:S

    if-eq v0, v5, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/a/b/j;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    if-eqz v3, :cond_1

    iget-short v3, p0, Lcom/android/a/b/j;->d:S

    if-ne v3, v5, :cond_2

    :cond_1
    :goto_1
    array-length v3, v0

    invoke-direct {p0, v3}, Lcom/android/a/b/j;->f(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-short v3, p0, Lcom/android/a/b/j;->d:S

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/a/b/j;->f:I

    if-ne v3, v2, :cond_1

    new-array v0, v2, [B

    goto :goto_1

    :cond_4
    iput v3, p0, Lcom/android/a/b/j;->f:I

    iput-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    move v0, v2

    goto :goto_0
.end method

.method public final a([B)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/a/b/j;->f(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v3, p0, Lcom/android/a/b/j;->d:S

    if-eq v3, v1, :cond_2

    iget-short v3, p0, Lcom/android/a/b/j;->d:S

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    :cond_2
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/android/a/b/j;->f:I

    move v0, v1

    goto :goto_0
.end method

.method public final a([I)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/a/b/j;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-eq v2, v4, :cond_2

    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v2, v6, :cond_0

    :cond_2
    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v2, v4, :cond_3

    array-length v3, p1

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_0

    :cond_3
    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v2, v6, :cond_4

    array-length v3, p1

    move v2, v0

    :goto_3
    if-lt v2, v3, :cond_8

    move v2, v0

    :goto_4
    if-nez v2, :cond_0

    :cond_4
    array-length v2, p1

    new-array v2, v2, [J

    :goto_5
    array-length v3, p1

    if-lt v0, v3, :cond_a

    iput-object v2, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    array-length v0, p1

    iput v0, p0, Lcom/android/a/b/j;->f:I

    move v0, v1

    goto :goto_0

    :cond_5
    aget v4, p1, v2

    const v5, 0xffff

    if-gt v4, v5, :cond_6

    if-gez v4, :cond_7

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    aget v4, p1, v2

    if-gez v4, :cond_9

    move v2, v1

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    aget v3, p1, v0

    int-to-long v3, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public final a([J)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/a/b/j;->f(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v3, p1

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move v2, v0

    :goto_2
    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    array-length v0, p1

    iput v0, p0, Lcom/android/a/b/j;->f:I

    move v0, v1

    goto :goto_0

    :cond_2
    aget-wide v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final a([Lcom/android/a/b/l;)Z
    .locals 12

    const-wide/32 v10, -0x80000000

    const/16 v9, 0xa

    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/a/b/j;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-eq v2, v3, :cond_2

    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v2, v9, :cond_0

    :cond_2
    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v2, v3, :cond_3

    array-length v3, p1

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_0

    :cond_3
    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v2, v9, :cond_4

    array-length v3, p1

    move v2, v0

    :goto_3
    if-lt v2, v3, :cond_8

    move v2, v0

    :goto_4
    if-nez v2, :cond_0

    :cond_4
    iput-object p1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    array-length v0, p1

    iput v0, p0, Lcom/android/a/b/j;->f:I

    move v0, v1

    goto :goto_0

    :cond_5
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/android/a/b/l;->a()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/a/b/l;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/a/b/l;->a()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/a/b/l;->b()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/android/a/b/l;->a()J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-ltz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/a/b/l;->b()J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-ltz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/a/b/l;->a()J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/a/b/l;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    :cond_9
    move v2, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public final b()S
    .locals 1

    iget-short v0, p0, Lcom/android/a/b/j;->c:S

    return v0
.end method

.method protected final b(I)V
    .locals 0

    iput p1, p0, Lcom/android/a/b/j;->g:I

    return-void
.end method

.method public final c()S
    .locals 1

    iget-short v0, p0, Lcom/android/a/b/j;->d:S

    return v0
.end method

.method protected final c(I)V
    .locals 0

    iput p1, p0, Lcom/android/a/b/j;->f:I

    return-void
.end method

.method public final d()I
    .locals 3

    iget v0, p0, Lcom/android/a/b/j;->f:I

    iget-short v1, p0, Lcom/android/a/b/j;->d:S

    sget-object v2, Lcom/android/a/b/j;->b:[I

    aget v1, v2, v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected final d(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get integer value from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    invoke-static {v2}, Lcom/android/a/b/j;->b(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/android/a/b/j;->f:I

    return v0
.end method

.method protected final e(I)V
    .locals 0

    iput p1, p0, Lcom/android/a/b/j;->i:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/a/b/j;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/a/b/j;

    iget-short v1, p1, Lcom/android/a/b/j;->c:S

    iget-short v2, p0, Lcom/android/a/b/j;->c:S

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/a/b/j;->f:I

    iget v2, p0, Lcom/android/a/b/j;->f:I

    if-ne v1, v2, :cond_0

    iget-short v1, p1, Lcom/android/a/b/j;->d:S

    iget-short v2, p0, Lcom/android/a/b/j;->d:S

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/a/b/l;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/a/b/l;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [Lcom/android/a/b/l;

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v1, [Lcom/android/a/b/l;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()[I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [J

    array-length v1, v0

    new-array v2, v1, [I

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    aget-wide v3, v0, v1

    long-to-int v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected final h()I
    .locals 1

    iget v0, p0, Lcom/android/a/b/j;->i:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/a/b/j;->e:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tag id: %04X\n"

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/android/a/b/j;->c:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/a/b/j;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/a/b/j;->d:S

    invoke-static {v1}, Lcom/android/a/b/j;->b(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/a/b/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/a/b/j;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    iget-short v0, p0, Lcom/android/a/b/j;->d:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v3, Lcom/android/a/b/j;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v4

    if-nez v0, :cond_5

    const-string v0, ""

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/a/b/j;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
