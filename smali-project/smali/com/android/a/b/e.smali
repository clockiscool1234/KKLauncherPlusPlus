.class final Lcom/android/a/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final r:S

.field private static final s:S

.field private static final t:S

.field private static final u:S

.field private static final v:S

.field private static final w:S

.field private static final x:S


# instance fields
.field private final b:Lcom/android/a/b/a;

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/android/a/b/j;

.field private h:Lcom/android/a/b/h;

.field private i:Lcom/android/a/b/j;

.field private j:Lcom/android/a/b/j;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:[B

.field private o:I

.field private p:I

.field private final q:Lcom/android/a/b/c;

.field private final y:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/a/b/e;->a:Ljava/nio/charset/Charset;

    sget v0, Lcom/android/a/b/c;->d:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->r:S

    sget v0, Lcom/android/a/b/c;->e:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->s:S

    sget v0, Lcom/android/a/b/c;->h:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->t:S

    sget v0, Lcom/android/a/b/c;->f:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->u:S

    sget v0, Lcom/android/a/b/c;->g:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->v:S

    sget v0, Lcom/android/a/b/c;->a:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->w:S

    sget v0, Lcom/android/a/b/c;->c:I

    invoke-static {v0}, Lcom/android/a/b/c;->a(I)S

    move-result v0

    sput-short v0, Lcom/android/a/b/e;->x:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/a/b/c;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/a/b/e;->d:I

    iput v4, p0, Lcom/android/a/b/e;->e:I

    iput-boolean v4, p0, Lcom/android/a/b/e;->l:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lcom/android/a/b/e;->q:Lcom/android/a/b/c;

    invoke-direct {p0, p1}, Lcom/android/a/b/e;->a(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/a/b/e;->l:Z

    new-instance v0, Lcom/android/a/b/a;

    invoke-direct {v0, p1}, Lcom/android/a/b/a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/a/b/e;->c:I

    iget-boolean v0, p0, Lcom/android/a/b/e;->l:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->c()S

    move-result v0

    const/16 v1, 0x4949

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/a/b/a;->a(Ljava/nio/ByteOrder;)V

    :goto_1
    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->c()S

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    new-instance v0, Lcom/android/a/b/d;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/a/b/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/a/b/a;->a(Ljava/nio/ByteOrder;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/android/a/b/d;

    const-string v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/a/b/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->f()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    new-instance v2, Lcom/android/a/b/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid offset "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/a/b/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    long-to-int v2, v0

    iput v2, p0, Lcom/android/a/b/e;->o:I

    iput v4, p0, Lcom/android/a/b/e;->f:I

    invoke-direct {p0, v4}, Lcom/android/a/b/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/a/b/e;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_7
    invoke-direct {p0, v4, v0, v1}, Lcom/android/a/b/e;->a(IJ)V

    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/a/b/e;->n:[B

    iget-object v0, p0, Lcom/android/a/b/e;->n:[B

    invoke-virtual {p0, v0}, Lcom/android/a/b/e;->a([B)I

    goto :goto_0
.end method

.method protected static a(Ljava/io/InputStream;Lcom/android/a/b/c;)Lcom/android/a/b/e;
    .locals 2

    new-instance v0, Lcom/android/a/b/e;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/a/b/e;-><init>(Ljava/io/InputStream;ILcom/android/a/b/c;)V

    return-object v0
.end method

.method private a(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/a/b/g;

    invoke-direct {p0, p1}, Lcom/android/a/b/e;->a(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/a/b/g;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/android/a/b/e;->c:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/a/b/e;->c:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/android/a/b/e;->c:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/android/a/b/e;->c:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/android/a/b/e;->c:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/e;->q:Lcom/android/a/b/c;

    invoke-virtual {v0}, Lcom/android/a/b/c;->a()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p1}, Lcom/android/a/b/c;->a(II)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/android/a/b/a;

    invoke-direct {v4, p1}, Lcom/android/a/b/a;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lcom/android/a/b/a;->c()S

    move-result v2

    const/16 v3, -0x28

    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/android/a/b/d;

    const-string v1, "Invalid JPEG format"

    invoke-direct {v0, v1}, Lcom/android/a/b/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v4}, Lcom/android/a/b/a;->c()S

    move-result v2

    move v3, v2

    :goto_0
    const/16 v2, -0x27

    if-eq v3, v2, :cond_1

    const/16 v2, -0x40

    if-lt v3, v2, :cond_6

    const/16 v2, -0x31

    if-gt v3, v2, :cond_6

    const/16 v2, -0x3c

    if-eq v3, v2, :cond_6

    const/16 v2, -0x38

    if-eq v3, v2, :cond_6

    const/16 v2, -0x34

    if-eq v3, v2, :cond_6

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :goto_2
    return v0

    :cond_2
    invoke-virtual {v4}, Lcom/android/a/b/a;->d()I

    move-result v2

    const/16 v5, -0x1f

    if-ne v3, v5, :cond_3

    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    invoke-virtual {v4}, Lcom/android/a/b/a;->e()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/a/b/a;->c()S

    move-result v5

    add-int/lit8 v2, v2, -0x6

    const v6, 0x45786966

    if-ne v3, v6, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/android/a/b/a;->a()I

    move-result v1

    iput v1, p0, Lcom/android/a/b/e;->p:I

    iput v2, p0, Lcom/android/a/b/e;->m:I

    iget v1, p0, Lcom/android/a/b/e;->p:I

    iget v1, p0, Lcom/android/a/b/e;->m:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    add-int/lit8 v3, v2, -0x2

    int-to-long v5, v3

    add-int/lit8 v2, v2, -0x2

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Lcom/android/a/b/a;->skip(J)J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v0, "ExifParser"

    const-string v2, "Invalid JPEG format."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/android/a/b/a;->c()S

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/a/b/a;->a(J)V

    :goto_0
    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method private b(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/a/b/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/a/b/h;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Lcom/android/a/b/j;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/a/b/j;->b()S

    move-result v1

    invoke-virtual {p1}, Lcom/android/a/b/j;->a()I

    move-result v2

    sget-short v3, Lcom/android/a/b/e;->r:S

    if-ne v1, v3, :cond_3

    sget v3, Lcom/android/a/b/c;->d:I

    invoke-direct {p0, v2, v3}, Lcom/android/a/b/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v5}, Lcom/android/a/b/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/a/b/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/a/b/e;->a(IJ)V

    goto :goto_0

    :cond_3
    sget-short v3, Lcom/android/a/b/e;->s:S

    if-ne v1, v3, :cond_4

    sget v3, Lcom/android/a/b/c;->e:I

    invoke-direct {p0, v2, v3}, Lcom/android/a/b/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v6}, Lcom/android/a/b/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/a/b/e;->a(IJ)V

    goto :goto_0

    :cond_4
    sget-short v3, Lcom/android/a/b/e;->t:S

    if-ne v1, v3, :cond_5

    sget v3, Lcom/android/a/b/c;->h:I

    invoke-direct {p0, v2, v3}, Lcom/android/a/b/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v4}, Lcom/android/a/b/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/a/b/e;->a(IJ)V

    goto :goto_0

    :cond_5
    sget-short v3, Lcom/android/a/b/e;->u:S

    if-ne v1, v3, :cond_6

    sget v3, Lcom/android/a/b/c;->f:I

    invoke-direct {p0, v2, v3}, Lcom/android/a/b/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/a/b/h;

    invoke-direct {v1, v4}, Lcom/android/a/b/h;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    sget-short v3, Lcom/android/a/b/e;->v:S

    if-ne v1, v3, :cond_7

    sget v3, Lcom/android/a/b/c;->g:I

    invoke-direct {p0, v2, v3}, Lcom/android/a/b/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/a/b/e;->j:Lcom/android/a/b/j;

    goto/16 :goto_0

    :cond_7
    sget-short v3, Lcom/android/a/b/e;->w:S

    if-ne v1, v3, :cond_9

    sget v3, Lcom/android/a/b/c;->a:I

    invoke-direct {p0, v2, v3}, Lcom/android/a/b/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/a/b/j;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/a/b/j;->c()S

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/a/b/e;->b(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/a/b/j;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/a/b/f;

    invoke-direct {v3, p1, v0}, Lcom/android/a/b/f;-><init>(Lcom/android/a/b/j;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    sget-short v0, Lcom/android/a/b/e;->x:S

    if-ne v1, v0, :cond_0

    sget v0, Lcom/android/a/b/c;->c:I

    invoke-direct {p0, v2, v0}, Lcom/android/a/b/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/a/b/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/a/b/e;->i:Lcom/android/a/b/j;

    goto/16 :goto_0
.end method

.method private h()Z
    .locals 1

    iget v0, p0, Lcom/android/a/b/e;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/android/a/b/e;->d:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/a/b/e;->e:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->a()I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/a/b/e;->k:Z

    if-eqz v2, :cond_5

    :cond_2
    :goto_1
    if-lt v0, v1, :cond_4

    :goto_2
    invoke-direct {p0}, Lcom/android/a/b/e;->l()J

    move-result-wide v0

    iget v2, p0, Lcom/android/a/b/e;->f:I

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/a/b/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/a/b/e;->a(IJ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/a/b/e;->k()Lcom/android/a/b/j;

    move-result-object v2

    iput-object v2, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    add-int/lit8 v0, v0, 0xc

    iget-object v2, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    invoke-direct {p0, v2}, Lcom/android/a/b/e;->c(Lcom/android/a/b/j;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/a/b/e;->b(I)V

    goto :goto_2
.end method

.method private j()Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/a/b/e;->f:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/a/b/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/a/b/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/a/b/e;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/a/b/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/a/b/e;->a(I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private k()Lcom/android/a/b/j;
    .locals 12

    const-wide/32 v10, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->c()S

    move-result v1

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->c()S

    move-result v2

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->f()J

    move-result-wide v7

    cmp-long v0, v7, v10

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/a/b/d;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/android/a/b/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2}, Lcom/android/a/b/j;->a(S)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ExifParser"

    const-string v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/a/b/a;->skip(J)J

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/a/b/j;

    long-to-int v3, v7

    iget v4, p0, Lcom/android/a/b/e;->f:I

    long-to-int v9, v7

    if-eqz v9, :cond_2

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/android/a/b/j;-><init>(SSIIZ)V

    invoke-virtual {v0}, Lcom/android/a/b/j;->d()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v1}, Lcom/android/a/b/a;->f()J

    move-result-wide v3

    cmp-long v1, v3, v10

    if-lez v1, :cond_3

    new-instance v0, Lcom/android/a/b/d;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/android/a/b/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/a/b/e;->o:I

    int-to-long v9, v1

    cmp-long v1, v3, v9

    if-gez v1, :cond_4

    const/4 v1, 0x7

    if-ne v2, v1, :cond_4

    long-to-int v1, v7

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/a/b/e;->n:[B

    long-to-int v3, v3

    add-int/lit8 v3, v3, -0x8

    long-to-int v4, v7

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/android/a/b/j;->a([B)Z

    goto :goto_0

    :cond_4
    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/android/a/b/j;->e(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/a/b/j;->i()Z

    move-result v2

    invoke-virtual {v0, v6}, Lcom/android/a/b/j;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/android/a/b/e;->b(Lcom/android/a/b/j;)V

    invoke-virtual {v0, v2}, Lcom/android/a/b/j;->a(Z)V

    iget-object v2, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/a/b/a;->skip(J)J

    iget-object v1, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v1}, Lcom/android/a/b/a;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/android/a/b/j;->e(I)V

    goto :goto_0
.end method

.method private l()J
    .locals 4

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->e()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected final a()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v0, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/android/a/b/e;->l:Z

    if-nez v3, :cond_2

    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v3, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v3}, Lcom/android/a/b/a;->a()I

    move-result v3

    iget v4, p0, Lcom/android/a/b/e;->d:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/a/b/e;->e:I

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/a/b/e;->k()Lcom/android/a/b/j;

    move-result-object v3

    iput-object v3, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    iget-object v3, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    if-eqz v3, :cond_0

    iget-boolean v1, p0, Lcom/android/a/b/e;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    invoke-direct {p0, v1}, Lcom/android/a/b/e;->c(Lcom/android/a/b/j;)V

    goto :goto_0

    :cond_3
    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/a/b/e;->f:I

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/a/b/e;->l()J

    move-result-wide v3

    invoke-direct {p0, v0}, Lcom/android/a/b/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/a/b/e;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    cmp-long v1, v3, v6

    if-eqz v1, :cond_5

    invoke-direct {p0, v0, v3, v4}, Lcom/android/a/b/e;->a(IJ)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v3}, Lcom/android/a/b/a;->a()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_2
    if-ge v0, v1, :cond_7

    const-string v1, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid size of link to next IFD: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/a/b/e;->l()J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_5

    const-string v3, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid link to next IFD: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/a/b/e;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, v1, Lcom/android/a/b/g;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Lcom/android/a/b/g;

    iget v0, v0, Lcom/android/a/b/g;->a:I

    iput v0, p0, Lcom/android/a/b/e;->f:I

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->d()I

    move-result v0

    iput v0, p0, Lcom/android/a/b/e;->e:I

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/a/b/e;->d:I

    iget v0, p0, Lcom/android/a/b/e;->e:I

    mul-int/lit8 v0, v0, 0xc

    iget v3, p0, Lcom/android/a/b/e;->d:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/android/a/b/e;->m:I

    if-le v0, v3, :cond_9

    const-string v0, "ExifParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid size of IFD "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/a/b/e;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ExifParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to skip to data at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", the file may be broken."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/a/b/e;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/a/b/e;->k:Z

    check-cast v1, Lcom/android/a/b/g;

    iget-boolean v0, v1, Lcom/android/a/b/g;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/a/b/e;->i()V

    goto/16 :goto_1

    :cond_b
    instance-of v0, v1, Lcom/android/a/b/h;

    if-eqz v0, :cond_c

    check-cast v1, Lcom/android/a/b/h;

    iput-object v1, p0, Lcom/android/a/b/e;->h:Lcom/android/a/b/h;

    iget-object v0, p0, Lcom/android/a/b/e;->h:Lcom/android/a/b/h;

    iget v0, v0, Lcom/android/a/b/h;->b:I

    goto/16 :goto_0

    :cond_c
    check-cast v1, Lcom/android/a/b/f;

    iget-object v0, v1, Lcom/android/a/b/f;->a:Lcom/android/a/b/j;

    iput-object v0, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    iget-object v0, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    invoke-virtual {v0}, Lcom/android/a/b/j;->c()S

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_d

    iget-object v0, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    invoke-virtual {p0, v0}, Lcom/android/a/b/e;->b(Lcom/android/a/b/j;)V

    iget-object v0, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    invoke-direct {p0, v0}, Lcom/android/a/b/e;->c(Lcom/android/a/b/j;)V

    :cond_d
    iget-boolean v0, v1, Lcom/android/a/b/f;->b:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method

.method protected final a([B)I
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0, p1}, Lcom/android/a/b/a;->read([B)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/android/a/b/j;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/a/b/j;->h()I

    move-result v0

    iget-object v1, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v1}, Lcom/android/a/b/a;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/a/b/j;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/a/b/f;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/a/b/f;-><init>(Lcom/android/a/b/j;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final b()Lcom/android/a/b/j;
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/e;->g:Lcom/android/a/b/j;

    return-object v0
.end method

.method protected final b(Lcom/android/a/b/j;)V
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/a/b/j;->c()S

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v2

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v3}, Lcom/android/a/b/a;->a()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/a/b/h;

    if-eqz v2, :cond_2

    const-string v0, "ExifParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thumbnail overlaps value for tag: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/a/b/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    const-string v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid thumbnail offset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/a/b/j;->c()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_2
    instance-of v2, v0, Lcom/android/a/b/g;

    if-eqz v2, :cond_4

    const-string v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ifd "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/android/a/b/g;

    iget v0, v0, Lcom/android/a/b/g;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " overlaps value for tag: \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/a/b/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/a/b/e;->y:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v2}, Lcom/android/a/b/a;->a()I

    move-result v2

    sub-int/2addr v0, v2

    const-string v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid size of tag: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/a/b/j;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting count to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->c(I)V

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/android/a/b/f;

    if-eqz v2, :cond_3

    const-string v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tag value for tag: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/android/a/b/f;

    iget-object v0, v0, Lcom/android/a/b/f;->a:Lcom/android/a/b/j;

    invoke-virtual {v0}, Lcom/android/a/b/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " overlaps value for tag: \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/a/b/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/a/b/e;->a([B)I

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->a([B)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    sget-object v1, Lcom/android/a/b/e;->a:Ljava/nio/charset/Charset;

    if-lez v0, :cond_5

    iget-object v2, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v2, v0, v1}, Lcom/android/a/b/a;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->a(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_5
    const-string v0, ""

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    new-array v0, v0, [J

    array-length v2, v0

    :goto_4
    if-lt v1, v2, :cond_6

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->a([J)Z

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/a/b/e;->l()J

    move-result-wide v3

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    new-array v0, v0, [Lcom/android/a/b/l;

    array-length v2, v0

    :goto_5
    if-lt v1, v2, :cond_7

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->a([Lcom/android/a/b/l;)Z

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/a/b/e;->l()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/a/b/e;->l()J

    move-result-wide v5

    new-instance v7, Lcom/android/a/b/l;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/a/b/l;-><init>(JJ)V

    aput-object v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_5
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    new-array v0, v0, [I

    array-length v2, v0

    :goto_6
    if-lt v1, v2, :cond_8

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->a([I)Z

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v3}, Lcom/android/a/b/a;->c()S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    new-array v0, v0, [I

    array-length v2, v0

    :goto_7
    if-lt v1, v2, :cond_9

    invoke-virtual {p1, v0}, Lcom/android/a/b/j;->a([I)Z

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v3}, Lcom/android/a/b/a;->e()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_7
    invoke-virtual {p1}, Lcom/android/a/b/j;->e()I

    move-result v0

    new-array v2, v0, [Lcom/android/a/b/l;

    array-length v3, v2

    move v0, v1

    :goto_8
    if-lt v0, v3, :cond_a

    invoke-virtual {p1, v2}, Lcom/android/a/b/j;->a([Lcom/android/a/b/l;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v1}, Lcom/android/a/b/a;->e()I

    move-result v1

    iget-object v4, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v4}, Lcom/android/a/b/a;->e()I

    move-result v4

    new-instance v5, Lcom/android/a/b/l;

    int-to-long v6, v1

    int-to-long v8, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/a/b/l;-><init>(JJ)V

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected final c()I
    .locals 1

    iget v0, p0, Lcom/android/a/b/e;->f:I

    return v0
.end method

.method protected final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/e;->h:Lcom/android/a/b/h;

    iget v0, v0, Lcom/android/a/b/h;->a:I

    return v0
.end method

.method protected final e()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/a/b/e;->i:Lcom/android/a/b/j;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/a/b/e;->i:Lcom/android/a/b/j;

    invoke-virtual {v1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final f()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/a/b/e;->j:Lcom/android/a/b/j;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/a/b/e;->j:Lcom/android/a/b/j;

    invoke-virtual {v1, v0}, Lcom/android/a/b/j;->d(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final g()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/android/a/b/e;->b:Lcom/android/a/b/a;

    invoke-virtual {v0}, Lcom/android/a/b/a;->b()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method
