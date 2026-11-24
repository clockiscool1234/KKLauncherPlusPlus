.class public final Lcom/android/a/c/b;
.super Lcom/android/a/c/k;


# instance fields
.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/a/c/b;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/a/c/k;-><init>(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/android/a/c/b;->e:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected final a_()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/a/c/b;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method
