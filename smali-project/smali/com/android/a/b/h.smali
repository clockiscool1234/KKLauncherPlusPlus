.class final Lcom/android/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/b/h;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/a/b/h;->b:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/a/b/h;->b:I

    iput p2, p0, Lcom/android/a/b/h;->a:I

    return-void
.end method
