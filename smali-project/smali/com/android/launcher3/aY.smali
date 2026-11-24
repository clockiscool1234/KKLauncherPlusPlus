.class final Lcom/android/launcher3/aY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Folder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/aY;->a:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/launcher3/ey;

    check-cast p2, Lcom/android/launcher3/ey;

    iget v0, p1, Lcom/android/launcher3/ey;->k:I

    iget v1, p0, Lcom/android/launcher3/aY;->a:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/ey;->j:I

    add-int/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/ey;->k:I

    iget v2, p0, Lcom/android/launcher3/aY;->a:I

    mul-int/2addr v1, v2

    iget v2, p2, Lcom/android/launcher3/ey;->j:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method
