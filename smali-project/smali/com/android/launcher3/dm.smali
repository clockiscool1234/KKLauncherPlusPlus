.class final Lcom/android/launcher3/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic a:Lcom/android/launcher3/al;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;Lcom/android/launcher3/al;)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/dm;->a:Lcom/android/launcher3/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Lcom/android/launcher3/bD;

    check-cast p2, Lcom/android/launcher3/bD;

    iget-object v0, p0, Lcom/android/launcher3/dm;->a:Lcom/android/launcher3/al;

    iget v0, v0, Lcom/android/launcher3/al;->d:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/dm;->a:Lcom/android/launcher3/al;

    iget v1, v1, Lcom/android/launcher3/al;->c:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    mul-int/lit8 v2, v1, 0x6

    iget-wide v3, p1, Lcom/android/launcher3/bD;->h:J

    int-to-long v5, v2

    mul-long/2addr v3, v5

    iget-wide v5, p1, Lcom/android/launcher3/bD;->i:J

    int-to-long v7, v1

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iget v5, p1, Lcom/android/launcher3/bD;->k:I

    mul-int/2addr v5, v0

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget v5, p1, Lcom/android/launcher3/bD;->j:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-wide v5, p2, Lcom/android/launcher3/bD;->h:J

    int-to-long v7, v2

    mul-long/2addr v5, v7

    iget-wide v7, p2, Lcom/android/launcher3/bD;->i:J

    int-to-long v1, v1

    mul-long/2addr v1, v7

    add-long/2addr v1, v5

    iget v5, p2, Lcom/android/launcher3/bD;->k:I

    mul-int/2addr v0, v5

    int-to-long v5, v0

    add-long v0, v1, v5

    iget v2, p2, Lcom/android/launcher3/bD;->j:I

    int-to-long v5, v2

    add-long/2addr v0, v5

    sub-long v0, v3, v0

    long-to-int v0, v0

    return v0
.end method
