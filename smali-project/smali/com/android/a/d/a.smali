.class public final Lcom/android/a/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/a/d/a;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/d/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/android/a/d/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/a/d/a;->b:I

    iget-object v0, p0, Lcom/android/a/d/a;->a:[I

    iget v1, p0, Lcom/android/a/d/a;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/a/d/a;->a:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/a/d/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/a/d/a;->b:I

    iget v1, p0, Lcom/android/a/d/a;->b:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/a/d/a;->a:[I

    iget v2, p0, Lcom/android/a/d/a;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/a/d/a;->a:[I

    :cond_0
    iget-object v0, p0, Lcom/android/a/d/a;->a:[I

    iget v1, p0, Lcom/android/a/d/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/a/d/a;->b:I

    aput p1, v0, v1

    return-void
.end method
