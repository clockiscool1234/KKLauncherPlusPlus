.class public Lcom/android/launcher3/PagedViewIcon;
.super Landroid/widget/TextView;


# instance fields
.field private a:Lcom/android/launcher3/ej;

.field private b:Z

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedViewIcon;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedViewIcon;->b:Z

    return-void
.end method

.method public final a(Lcom/android/launcher3/d;Lcom/android/launcher3/ej;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/d;->b:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/launcher3/PagedViewIcon;->c:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/launcher3/PagedViewIcon;->a:Lcom/android/launcher3/ej;

    iget-object v1, p0, Lcom/android/launcher3/PagedViewIcon;->c:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, La/a/a/c/d;->n(Landroid/content/Context;)F

    move-result v2

    iget v3, v0, Lcom/android/launcher3/al;->t:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, v0, Lcom/android/launcher3/al;->t:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v5, v1, v5, v5}, Lcom/android/launcher3/PagedViewIcon;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget v0, v0, Lcom/android/launcher3/al;->q:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewIcon;->setCompoundDrawablePadding(I)V

    iget-object v0, p1, Lcom/android/launcher3/d;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedViewIcon;->b:Z

    new-instance v0, Lcom/android/launcher3/ei;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ei;-><init>(Lcom/android/launcher3/PagedViewIcon;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewIcon;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe00000    # 1.75f

    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewIcon;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewIcon;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/PagedViewIcon;->a:Lcom/android/launcher3/ej;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedViewIcon;->a:Lcom/android/launcher3/ej;

    invoke-interface {v0, p0}, Lcom/android/launcher3/ej;->a(Lcom/android/launcher3/PagedViewIcon;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedViewIcon;->b:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewIcon;->setAlpha(F)V

    goto :goto_0
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

    iget v0, v0, Lcom/android/launcher3/al;->u:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/PagedViewIcon;->setTextSize(IF)V

    return-void
.end method
