.class public Lcom/android/launcher3/HolographicImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private final a:Lcom/android/launcher3/bt;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher3/bt;

    invoke-direct {v0, p1}, Lcom/android/launcher3/bt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/HolographicImageView;->a:Lcom/android/launcher3/bt;

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->g:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/HolographicImageView;->b:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/android/launcher3/bo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bo;-><init>(Lcom/android/launcher3/HolographicImageView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/HolographicImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/android/launcher3/bp;

    invoke-direct {v0, p0}, Lcom/android/launcher3/bp;-><init>(Lcom/android/launcher3/HolographicImageView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/HolographicImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/HolographicImageView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/HolographicImageView;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/HolographicImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/HolographicImageView;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/android/launcher3/HolographicImageView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/HolographicImageView;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/HolographicImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/HolographicImageView;->d:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/HolographicImageView;->a:Lcom/android/launcher3/bt;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/bt;->b(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/launcher3/HolographicImageView;->a:Lcom/android/launcher3/bt;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/bt;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/HolographicImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/HolographicImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/HolographicImageView;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f01000f

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/HolographicImageView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/HolographicImageView;->a:Lcom/android/launcher3/bt;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/bt;->a(Landroid/widget/ImageView;)V

    return-void
.end method
