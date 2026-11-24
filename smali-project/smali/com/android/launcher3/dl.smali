.class final Lcom/android/launcher3/dl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/launcher3/bD;

    check-cast p2, Lcom/android/launcher3/bD;

    iget-wide v0, p1, Lcom/android/launcher3/bD;->h:J

    iget-wide v2, p2, Lcom/android/launcher3/bD;->h:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
