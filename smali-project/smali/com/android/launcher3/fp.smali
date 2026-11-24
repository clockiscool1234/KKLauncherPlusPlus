.class public final Lcom/android/launcher3/fp;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private synthetic d:Lcom/android/launcher3/fo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/fo;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/fp;-><init>(Lcom/android/launcher3/fo;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/fo;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fp;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/fp;->a:Landroid/graphics/Paint;

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fp;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/fp;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x670000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/fp;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/fp;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    iget-object v1, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    invoke-static {v1}, Lcom/android/launcher3/fo;->a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    invoke-static {v1}, Lcom/android/launcher3/fo;->a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/dT;->c:[J

    array-length v8, v1

    int-to-float v0, v0

    int-to-float v1, v8

    div-float v9, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    int-to-float v0, v7

    iget-object v1, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    invoke-static {v1}, Lcom/android/launcher3/fo;->a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/launcher3/dT;->e:J

    long-to-float v1, v1

    div-float v11, v0, v1

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-lt v6, v8, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    invoke-static {v0}, Lcom/android/launcher3/fo;->a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/dT;->f:I

    int-to-float v0, v0

    mul-float v1, v0, v9

    const/4 v2, 0x0

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/fp;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    int-to-float v0, v6

    mul-float v1, v0, v9

    int-to-float v0, v7

    iget-object v2, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    invoke-static {v2}, Lcom/android/launcher3/fo;->a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/dT;->c:[J

    aget-wide v2, v2, v6

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/fp;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v0, v7

    iget-object v2, p0, Lcom/android/launcher3/fp;->d:Lcom/android/launcher3/fo;

    invoke-static {v2}, Lcom/android/launcher3/fo;->a(Lcom/android/launcher3/fo;)Lcom/android/launcher3/dT;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/dT;->d:[J

    aget-wide v2, v2, v6

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/fp;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method
