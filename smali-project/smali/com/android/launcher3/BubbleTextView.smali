.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:Lcom/android/launcher3/bs;

.field private final c:Landroid/graphics/Canvas;

.field private final d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Lcom/android/launcher3/S;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->a:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->c:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->d:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->l:Z

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->a:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->c:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->d:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->l:Z

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->a:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->c:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->d:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->l:Z

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->d()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->b:Lcom/android/launcher3/bs;

    iget v0, v0, Lcom/android/launcher3/bs;->a:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->b:Lcom/android/launcher3/bs;

    const/4 v5, 0x2

    move-object v2, p1

    move v3, p3

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/bs;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private d()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/S;

    invoke-direct {v0, p0}, Lcom/android/launcher3/S;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->p:Lcom/android/launcher3/S;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/bs;->a(Landroid/content/Context;)Lcom/android/launcher3/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->b:Lcom/android/launcher3/bs;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->j:I

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->i:I

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->h:I

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->g:I

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ex;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->a(Lcom/android/launcher3/BubbleTextView;)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->e()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->j:I

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->i:I

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->h:I

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->g:I

    return-void
.end method

.method public final a(Lcom/android/launcher3/ey;Lcom/android/launcher3/bw;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/ey;->a(Lcom/android/launcher3/bw;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget v0, v1, Lcom/android/launcher3/al;->q:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p1, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->o:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->e()V

    return-void
.end method

.method final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->l:Z

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    return-void
.end method

.method final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->b:Lcom/android/launcher3/bs;

    iget v0, v0, Lcom/android/launcher3/bs;->a:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final c(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->k:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->p:Lcom/android/launcher3/S;

    invoke-virtual {v0}, Lcom/android/launcher3/S;->b()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->m:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v7, p0, Lcom/android/launcher3/BubbleTextView;->m:Z

    :cond_1
    or-int v3, v1, v2

    if-nez v3, :cond_3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe00000    # 1.75f

    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->e()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->o:Z

    if-nez v3, :cond_3

    iput-object v4, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_6

    iput-object v4, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    :goto_2
    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->o:Z

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->e()V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->e()V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->c:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/android/launcher3/BubbleTextView;->h:I

    iget v5, p0, Lcom/android/launcher3/BubbleTextView;->g:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher3/BubbleTextView;->a(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    const/4 v1, 0x0

    iget v0, v0, Lcom/android/launcher3/al;->p:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->a:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->c:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->j:I

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->i:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/BubbleTextView;->a(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->e:Z

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->e()V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->p:Lcom/android/launcher3/S;

    invoke-virtual {v1}, Lcom/android/launcher3/S;->a()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->e:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->f:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->p:Lcom/android/launcher3/S;

    invoke-virtual {v1}, Lcom/android/launcher3/S;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setFrame(IIII)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->m:Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-static {v0}, Lcom/android/launcher3/cO;->a(Lcom/android/launcher3/bD;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->k:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->n:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
