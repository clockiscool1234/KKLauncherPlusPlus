.class public Lcom/android/launcher3/Hotseat;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/android/launcher3/CellLayout;

.field private b:Lcom/android/launcher3/Launcher;

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Hotseat;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/Hotseat;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/launcher3/Hotseat;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->b:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Hotseat;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method final a(II)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/Hotseat;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method

.method final a()Lcom/android/launcher3/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public final a(Lcom/android/launcher3/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->b:Lcom/android/launcher3/Launcher;

    new-instance v0, Lcom/android/launcher3/bv;

    invoke-direct {v0}, Lcom/android/launcher3/bv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method final b(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/Hotseat;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(II)Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v3, 0x1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-static {p0, v1, v0, v8}, Lcom/android/launcher3/eI;->a(Landroid/view/View;Landroid/view/View;[IZ)F

    aget v1, v0, v8

    aget v0, v0, v3

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ex;->b()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v5
.end method

.method final b()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    iget-object v4, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x7f020000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/eI;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a0030

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->b:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->s()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v0, Lcom/android/launcher3/bu;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bu;-><init>(Lcom/android/launcher3/Hotseat;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/launcher3/Hotseat;->c:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->a(I)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/Hotseat;->c:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Hotseat;->b(I)I

    move-result v2

    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v4, v0, v2, v5, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    iput-boolean v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->j:Z

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    const/4 v2, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    :cond_1
    return-void
.end method

.method public final c(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/Hotseat;->c:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iget v0, v1, Lcom/android/launcher3/al;->D:I

    iput v0, p0, Lcom/android/launcher3/Hotseat;->c:I

    const v0, 0x7f10001c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, v1, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/android/launcher3/al;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    iget v1, v1, Lcom/android/launcher3/al;->e:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/CellLayout;->b(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->f(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    iget v1, v1, Lcom/android/launcher3/al;->e:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->b(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->a:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
