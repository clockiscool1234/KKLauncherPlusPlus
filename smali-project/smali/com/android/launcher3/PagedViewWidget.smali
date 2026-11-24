.class public Lcom/android/launcher3/PagedViewWidget;
.super Landroid/widget/LinearLayout;


# static fields
.field static c:Lcom/android/launcher3/PagedViewWidget;

.field private static d:Z

.field private static e:Z


# instance fields
.field a:Lcom/android/launcher3/el;

.field b:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/android/launcher3/ek;

.field private h:Z

.field private final i:Landroid/graphics/Rect;

.field private j:Ljava/lang/Object;

.field private k:Lcom/android/launcher3/fr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/PagedViewWidget;->d:Z

    sput-boolean v0, Lcom/android/launcher3/PagedViewWidget;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/PagedViewWidget;->c:Lcom/android/launcher3/PagedViewWidget;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->g:Lcom/android/launcher3/ek;

    iput-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->a:Lcom/android/launcher3/el;

    iput-boolean v2, p0, Lcom/android/launcher3/PagedViewWidget;->b:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->f:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedViewWidget;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedViewWidget;->setClipToPadding(Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/PagedViewWidget;->d:Z

    return-void
.end method

.method static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/PagedViewWidget;->c:Lcom/android/launcher3/PagedViewWidget;

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/PagedViewWidget;->e:Z

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->g:Lcom/android/launcher3/ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->g:Lcom/android/launcher3/ek;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedViewWidget;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->a:Lcom/android/launcher3/el;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->a:Lcom/android/launcher3/el;

    invoke-interface {v0}, Lcom/android/launcher3/el;->e()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedViewWidget;->b:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher3/fr;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iput-boolean v5, p0, Lcom/android/launcher3/PagedViewWidget;->h:Z

    iput-object p1, p0, Lcom/android/launcher3/PagedViewWidget;->j:Ljava/lang/Object;

    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10000b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    aget v2, p3, v6

    iget v3, v1, Lcom/android/launcher3/al;->d:F

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p3, v5

    iget v1, v1, Lcom/android/launcher3/al;->c:F

    float-to-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/PagedViewWidget;->f:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p4, p0, Lcom/android/launcher3/PagedViewWidget;->k:Lcom/android/launcher3/fr;

    return-void
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/fr;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/PagedViewWidget;->h:Z

    iput-object p2, p0, Lcom/android/launcher3/PagedViewWidget;->j:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10000b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/PagedViewWidget;->f:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/PagedViewWidget;->k:Lcom/android/launcher3/fr;

    return-void
.end method

.method final a(Lcom/android/launcher3/aJ;)V
    .locals 5

    const/4 v2, 0x0

    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedViewWidgetImageView;

    if-eqz p1, :cond_1

    iput-boolean v2, v0, Lcom/android/launcher3/PagedViewWidgetImageView;->a:Z

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedViewWidgetImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/android/launcher3/PagedViewWidget;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedViewWidget;->a()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {p1}, Lcom/android/launcher3/aJ;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/PagedViewWidgetImageView;->setPadding(IIII)V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedViewWidgetImageView;->setAlpha(F)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/PagedViewWidgetImageView;->a:Z

    :cond_1
    return-void
.end method

.method final a(Lcom/android/launcher3/el;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/PagedViewWidget;->a:Lcom/android/launcher3/el;

    return-void
.end method

.method public final a()[I
    .locals 5

    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    aput v0, v1, v2

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/launcher3/PagedViewWidget;->d:Z

    if-eqz v0, :cond_1

    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/aJ;

    sget-boolean v2, Lcom/android/launcher3/PagedViewWidget;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/PagedViewWidget;->j:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/aJ;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/PagedViewWidget;->k:Lcom/android/launcher3/fr;

    iget-object v3, p0, Lcom/android/launcher3/PagedViewWidget;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/launcher3/aJ;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/fr;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/PagedViewWidget;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v2, v1, Lcom/android/launcher3/al;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v0, 0x7f10000b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, v1, Lcom/android/launcher3/al;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/PagedViewWidget;->c()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/launcher3/PagedViewWidget;->c:Lcom/android/launcher3/PagedViewWidget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->g:Lcom/android/launcher3/ek;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher3/ek;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ek;-><init>(Lcom/android/launcher3/PagedViewWidget;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->g:Lcom/android/launcher3/ek;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/PagedViewWidget;->g:Lcom/android/launcher3/ek;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/PagedViewWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/PagedViewWidget;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
