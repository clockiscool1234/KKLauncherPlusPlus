.class public abstract Lcom/android/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/android/b/h;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:Lcom/android/b/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/b/c;->a:Lcom/android/b/c;

    iput-object v0, p0, Lcom/android/b/b;->e:Lcom/android/b/c;

    iput p1, p0, Lcom/android/b/b;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public final a()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/android/a/b/c;

    invoke-direct {v0}, Lcom/android/a/b/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/b/b;->a(Lcom/android/a/b/c;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/a/b/c;->b:I

    invoke-virtual {v0, v3}, Lcom/android/a/b/c;->b(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/a/b/c;->b(S)I

    move-result v0

    iput v0, p0, Lcom/android/b/b;->d:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/b/b;->g()Lcom/android/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/b;->a:Lcom/android/b/h;

    iget-object v0, p0, Lcom/android/b/b;->a:Lcom/android/b/h;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/b/c;->c:Lcom/android/b/c;

    iput-object v0, p0, Lcom/android/b/b;->e:Lcom/android/b/c;

    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/b/b;->a:Lcom/android/b/h;

    invoke-interface {v0}, Lcom/android/b/h;->a()I

    move-result v0

    iget-object v3, p0, Lcom/android/b/b;->a:Lcom/android/b/h;

    invoke-interface {v3}, Lcom/android/b/h;->b()I

    move-result v3

    iget v4, p0, Lcom/android/b/b;->c:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/b/b;->c:I

    const/16 v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    int-to-float v4, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v0, v3, v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    if-gt v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, v5}, Lcom/android/b/b;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/b;->b:Landroid/graphics/Bitmap;

    :cond_2
    sget-object v0, Lcom/android/b/c;->b:Lcom/android/b/c;

    iput-object v0, p0, Lcom/android/b/b;->e:Lcom/android/b/c;

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    if-gt v0, v3, :cond_4

    invoke-static {v0}, Lcom/android/a/a/a;->b(I)I

    move-result v0

    goto :goto_1

    :cond_4
    div-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method public abstract a(Lcom/android/a/b/c;)Z
.end method

.method public final b()Lcom/android/b/c;
    .locals 1

    iget-object v0, p0, Lcom/android/b/b;->e:Lcom/android/b/c;

    return-object v0
.end method

.method public final c()Lcom/android/b/h;
    .locals 1

    iget-object v0, p0, Lcom/android/b/b;->a:Lcom/android/b/h;

    return-object v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/b/b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/android/b/b;->c:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/android/b/b;->d:I

    return v0
.end method

.method public abstract g()Lcom/android/b/h;
.end method
