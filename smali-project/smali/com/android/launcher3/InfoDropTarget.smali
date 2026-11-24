.class public Lcom/android/launcher3/InfoDropTarget;
.super Lcom/android/launcher3/E;


# instance fields
.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/az;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/android/launcher3/az;->h()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/InfoDropTarget;->d:Z

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/aH;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/d;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v0, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/InfoDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/content/ComponentName;)V

    :cond_1
    iput-boolean v2, p1, Lcom/android/launcher3/aH;->k:Z

    return v2

    :cond_2
    iget-object v1, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/ey;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v0, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/eo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/eo;

    iget-object v0, v0, Lcom/android/launcher3/eo;->a:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/E;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/InfoDropTarget;->d:Z

    return-void
.end method

.method public final c(Lcom/android/launcher3/aH;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/E;->c(Lcom/android/launcher3/aH;)V

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher3/InfoDropTarget;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget v0, p0, Lcom/android/launcher3/InfoDropTarget;->e:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setTextColor(I)V

    return-void
.end method

.method public final e(Lcom/android/launcher3/aH;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/E;->e(Lcom/android/launcher3/aH;)V

    iget-boolean v0, p1, Lcom/android/launcher3/aH;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/E;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/InfoDropTarget;->e:I

    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->g:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
