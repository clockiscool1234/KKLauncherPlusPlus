.class public Lcom/android/launcher3/HolographicLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final a:Lcom/android/launcher3/bt;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->g:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/HolographicLinearLayout;->c:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/HolographicLinearLayout;->d:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/HolographicLinearLayout;->setWillNotDraw(Z)V

    new-instance v0, Lcom/android/launcher3/bt;

    invoke-direct {v0, p1}, Lcom/android/launcher3/bt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->a:Lcom/android/launcher3/bt;

    new-instance v0, Lcom/android/launcher3/bq;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bq;-><init>(Lcom/android/launcher3/HolographicLinearLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/HolographicLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/android/launcher3/br;

    invoke-direct {v0, p0}, Lcom/android/launcher3/br;-><init>(Lcom/android/launcher3/HolographicLinearLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/HolographicLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/HolographicLinearLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/HolographicLinearLayout;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/HolographicLinearLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/android/launcher3/HolographicLinearLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/HolographicLinearLayout;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/HolographicLinearLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->f:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->a:Lcom/android/launcher3/bt;

    iget-object v1, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bt;->b(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/HolographicLinearLayout;->invalidate()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->a:Lcom/android/launcher3/bt;

    iget-object v1, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bt;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/HolographicLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/HolographicLinearLayout;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f01000f

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/HolographicLinearLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->c:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/HolographicLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/HolographicLinearLayout;->a:Lcom/android/launcher3/bt;

    iget-object v1, p0, Lcom/android/launcher3/HolographicLinearLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/bt;->a(Landroid/widget/ImageView;)V

    return-void
.end method
