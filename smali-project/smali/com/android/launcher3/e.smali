.class public final Lcom/android/launcher3/e;
.super Landroid/widget/FrameLayout;


# static fields
.field private static J:Landroid/graphics/Rect;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:[I

.field private H:[I

.field private I:[I

.field private K:Lcom/android/launcher3/Launcher;

.field private a:Lcom/android/launcher3/cE;

.field private b:Lcom/android/launcher3/CellLayout;

.field private c:Lcom/android/launcher3/DragLayer;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/e;->J:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/cE;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DragLayer;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/android/launcher3/e;->E:I

    iput v3, p0, Lcom/android/launcher3/e;->F:I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/e;->G:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/e;->H:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/e;->I:[I

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    iput-object v0, p0, Lcom/android/launcher3/e;->K:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/e;->t:I

    iput-object p4, p0, Lcom/android/launcher3/e;->c:Lcom/android/launcher3/DragLayer;

    invoke-virtual {p2}, Lcom/android/launcher3/cE;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iget-object v1, p0, Lcom/android/launcher3/e;->K:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/Launcher;->b(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v0

    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher3/e;->w:I

    aget v0, v0, v6

    iput v0, p0, Lcom/android/launcher3/e;->x:I

    const v0, 0x7f02006d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/e;->setBackgroundResource(I)V

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/launcher3/e;->setPadding(IIII)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x15

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/android/launcher3/cE;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/launcher3/e;->l:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/launcher3/e;->n:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/launcher3/e;->m:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/launcher3/e;->o:I

    iget v0, p0, Lcom/android/launcher3/e;->t:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/e;->K:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/e;->C:I

    iget v0, p0, Lcom/android/launcher3/e;->C:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/e;->D:I

    iget-object v0, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->d(Landroid/view/View;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher3/e;->t:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static a(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Launcher;I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/launcher3/Workspace;->a(Lcom/android/launcher3/Launcher;I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v3, p1

    add-int/lit8 v6, p1, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    mul-int/2addr v4, p2

    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v0, v5

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v4, p1

    add-int/lit8 v7, p1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    mul-int/2addr v5, p2

    add-int/lit8 v6, p2, -0x1

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p3, v4, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method

.method static a(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V
    .locals 6

    sget-object v0, Lcom/android/launcher3/e;->J:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher3/e;->a(Lcom/android/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher3/e;->J:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/launcher3/e;->J:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget-object v0, Lcom/android/launcher3/e;->J:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lcom/android/launcher3/e;->J:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method

.method private b(Z)V
    .locals 14

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/e;->w:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/e;->x:I

    iget-object v0, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->m()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->o()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->n()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->p()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/e;->y:I

    iget v3, p0, Lcom/android/launcher3/e;->A:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/e;->z:I

    iget v4, p0, Lcom/android/launcher3/e;->B:I

    add-int/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v0, v0

    div-float v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/e;->u:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v3, v3

    mul-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/e;->v:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v9

    iget-object v1, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    :cond_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    if-nez v7, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v0}, Lcom/android/launcher3/cE;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v11, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v12, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget-boolean v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    if-eqz v0, :cond_9

    iget v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    :goto_2
    iget-boolean v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->e:Z

    if-eqz v2, :cond_a

    iget v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    :goto_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-boolean v13, p0, Lcom/android/launcher3/e;->h:Z

    if-eqz v13, :cond_b

    neg-int v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v9, p0, Lcom/android/launcher3/e;->w:I

    sub-int/2addr v4, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v9, p0, Lcom/android/launcher3/e;->w:I

    sub-int/2addr v4, v9

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v1, v4

    move v9, v1

    move v1, v3

    move v3, v4

    :goto_4
    iget-boolean v4, p0, Lcom/android/launcher3/e;->j:Z

    if-eqz v4, :cond_c

    neg-int v4, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget v6, p0, Lcom/android/launcher3/e;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    neg-int v4, v7

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget v7, p0, Lcom/android/launcher3/e;->x:I

    sub-int/2addr v6, v7

    neg-int v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v4, v6

    move v10, v4

    move v4, v5

    move v5, v6

    :goto_5
    iget-object v6, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v7, 0x0

    const/4 v13, 0x0

    aput v13, v6, v7

    iget-object v6, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v7, 0x1

    const/4 v13, 0x0

    aput v13, v6, v7

    iget-boolean v6, p0, Lcom/android/launcher3/e;->h:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/launcher3/e;->i:Z

    if-eqz v6, :cond_11

    :cond_3
    add-int/2addr v3, v11

    add-int/2addr v1, v0

    if-eqz v9, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/e;->h:Z

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    :goto_6
    aput v0, v6, v7

    :cond_4
    :goto_7
    iget-boolean v0, p0, Lcom/android/launcher3/e;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher3/e;->k:Z

    if-eqz v0, :cond_10

    :cond_5
    add-int/2addr v5, v12

    add-int/2addr v2, v4

    if-eqz v10, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/e;->j:Z

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    :goto_8
    aput v0, v4, v6

    :cond_6
    move v4, v5

    :goto_9
    if-nez p1, :cond_7

    if-nez v10, :cond_7

    if-eqz v9, :cond_1

    :cond_7
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/e;->H:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v0, v5

    iget-object v0, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/e;->H:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v5

    :goto_a
    iget-object v0, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    iget-object v6, p0, Lcom/android/launcher3/e;->G:[I

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(IIIILandroid/view/View;[IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iput v1, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->c:I

    iput v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->d:I

    iput v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iput v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget v0, p0, Lcom/android/launcher3/e;->v:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/launcher3/e;->v:I

    iget v0, p0, Lcom/android/launcher3/e;->u:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/android/launcher3/e;->u:I

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    iget-object v1, p0, Lcom/android/launcher3/e;->K:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1, v3, v4}, Lcom/android/launcher3/e;->a(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v0}, Lcom/android/launcher3/cE;->requestLayout()V

    goto/16 :goto_1

    :cond_9
    iget v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    goto/16 :goto_2

    :cond_a
    iget v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    goto/16 :goto_3

    :cond_b
    iget-boolean v13, p0, Lcom/android/launcher3/e;->i:Z

    if-eqz v13, :cond_13

    add-int v3, v0, v11

    sub-int v3, v9, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->f:I

    iget v9, p0, Lcom/android/launcher3/e;->w:I

    sub-int/2addr v3, v9

    neg-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v1

    move v3, v1

    move v1, v4

    goto/16 :goto_4

    :cond_c
    iget-boolean v4, p0, Lcom/android/launcher3/e;->k:Z

    if-eqz v4, :cond_12

    add-int v4, v2, v12

    sub-int v4, v10, v4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->g:I

    iget v7, p0, Lcom/android/launcher3/e;->x:I

    sub-int/2addr v5, v7

    neg-int v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v4

    move v5, v4

    move v4, v6

    goto/16 :goto_5

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_8

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/e;->H:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v0, v5

    iget-object v0, p0, Lcom/android/launcher3/e;->H:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/e;->G:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v5

    goto/16 :goto_a

    :cond_10
    move v4, v12

    goto/16 :goto_9

    :cond_11
    move v1, v0

    move v3, v11

    goto/16 :goto_7

    :cond_12
    move v10, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_5

    :cond_13
    move v9, v3

    move v3, v1

    move v1, v4

    goto/16 :goto_4

    :cond_14
    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/e;->b(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/e;->requestLayout()V

    return-void
.end method

.method public final a(Z)V
    .locals 13

    const/4 v12, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v1}, Lcom/android/launcher3/cE;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/e;->C:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/e;->l:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/e;->m:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v2}, Lcom/android/launcher3/cE;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/e;->C:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/e;->n:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/e;->o:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/e;->I:[I

    iget-object v4, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v4}, Lcom/android/launcher3/cE;->getLeft()I

    move-result v4

    aput v4, v3, v8

    iget-object v3, p0, Lcom/android/launcher3/e;->I:[I

    iget-object v4, p0, Lcom/android/launcher3/e;->a:Lcom/android/launcher3/cE;

    invoke-virtual {v4}, Lcom/android/launcher3/cE;->getTop()I

    move-result v4

    aput v4, v3, v9

    iget-object v3, p0, Lcom/android/launcher3/e;->c:Lcom/android/launcher3/DragLayer;

    iget-object v4, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/e;->I:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;[I)F

    iget-object v3, p0, Lcom/android/launcher3/e;->I:[I

    aget v3, v3, v8

    iget v4, p0, Lcom/android/launcher3/e;->C:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/e;->l:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/e;->I:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/android/launcher3/e;->C:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/e;->n:I

    add-int/2addr v4, v5

    if-gez v4, :cond_0

    neg-int v5, v4

    iput v5, p0, Lcom/android/launcher3/e;->E:I

    :goto_0
    add-int v5, v4, v2

    iget-object v6, p0, Lcom/android/launcher3/e;->c:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_1

    add-int v5, v4, v2

    iget-object v6, p0, Lcom/android/launcher3/e;->c:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v6}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    neg-int v5, v5

    iput v5, p0, Lcom/android/launcher3/e;->F:I

    :goto_1
    if-nez p1, :cond_2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    iput v3, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    iget-object v0, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/e;->requestLayout()V

    :goto_2
    return-void

    :cond_0
    iput v8, p0, Lcom/android/launcher3/e;->E:I

    goto :goto_0

    :cond_1
    iput v8, p0, Lcom/android/launcher3/e;->F:I

    goto :goto_1

    :cond_2
    const-string v5, "width"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    aput v7, v6, v8

    aput v1, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v5, "height"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    aput v7, v6, v8

    aput v2, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v5, "x"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    aput v7, v6, v8

    aput v3, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v5, "y"

    new-array v6, v10, [I

    iget v7, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    aput v7, v6, v8

    aput v4, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    aput-object v4, v5, v12

    invoke-static {v0, p0, v5}, Lcom/android/launcher3/cw;->a(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v9, [F

    aput v11, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v9, [F

    aput v11, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/cw;->a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/g;

    invoke-direct {v5, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/launcher3/e;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Lcom/android/launcher3/cw;->b()Landroid/animation/AnimatorSet;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/e;->t:I

    if-ne v6, v10, :cond_3

    new-array v1, v12, [Landroid/animation/Animator;

    aput-object v0, v1, v8

    aput-object v3, v1, v9

    aput-object v4, v1, v10

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_3
    const-wide/16 v0, 0x96

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_3
    iget v6, p0, Lcom/android/launcher3/e;->t:I

    if-ne v6, v9, :cond_4

    new-array v3, v12, [Landroid/animation/Animator;

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    aput-object v2, v3, v10

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    :cond_4
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v12

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method public final a(II)Z
    .locals 8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/e;->t:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher3/e;->t:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/android/launcher3/e;->D:I

    if-ge p1, v4, :cond_3

    if-eqz v0, :cond_3

    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/android/launcher3/e;->h:Z

    invoke-virtual {p0}, Lcom/android/launcher3/e;->getWidth()I

    move-result v4

    iget v7, p0, Lcom/android/launcher3/e;->D:I

    sub-int/2addr v4, v7

    if-le p1, v4, :cond_4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/e;->i:Z

    iget v0, p0, Lcom/android/launcher3/e;->D:I

    iget v4, p0, Lcom/android/launcher3/e;->E:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_5

    if-eqz v3, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/launcher3/e;->j:Z

    invoke-virtual {p0}, Lcom/android/launcher3/e;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/android/launcher3/e;->D:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/launcher3/e;->F:I

    add-int/2addr v0, v4

    if-le p2, v0, :cond_6

    if-eqz v3, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/launcher3/e;->k:Z

    iget-boolean v0, p0, Lcom/android/launcher3/e;->h:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/e;->i:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/e;->j:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/e;->k:Z

    if-nez v0, :cond_7

    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher3/e;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->p:I

    invoke-virtual {p0}, Lcom/android/launcher3/e;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->q:I

    invoke-virtual {p0}, Lcom/android/launcher3/e;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->r:I

    invoke-virtual {p0}, Lcom/android/launcher3/e;->getTop()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->s:I

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/e;->d:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/launcher3/e;->h:Z

    if-eqz v0, :cond_8

    move v0, v5

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/e;->e:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/launcher3/e;->i:Z

    if-eqz v0, :cond_9

    move v0, v5

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/e;->f:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/launcher3/e;->j:Z

    if-eqz v0, :cond_a

    move v0, v5

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/e;->g:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/launcher3/e;->k:Z

    if-eqz v1, :cond_b

    :goto_a
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v3, v2

    goto/16 :goto_1

    :cond_3
    move v4, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_6

    :cond_8
    move v0, v6

    goto :goto_7

    :cond_9
    move v0, v6

    goto :goto_8

    :cond_a
    move v0, v6

    goto :goto_9

    :cond_b
    move v5, v6

    goto :goto_a
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->m()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->o()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->n()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/e;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->p()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/e;->u:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/e;->A:I

    iget v0, p0, Lcom/android/launcher3/e;->v:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/e;->B:I

    iput v3, p0, Lcom/android/launcher3/e;->y:I

    iput v3, p0, Lcom/android/launcher3/e;->z:I

    new-instance v0, Lcom/android/launcher3/f;

    invoke-direct {v0, p0}, Lcom/android/launcher3/f;-><init>(Lcom/android/launcher3/e;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/e;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/e;->h:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/e;->r:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->y:I

    iget v0, p0, Lcom/android/launcher3/e;->p:I

    iget v1, p0, Lcom/android/launcher3/e;->D:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/e;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->y:I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/e;->j:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/launcher3/e;->s:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->z:I

    iget v0, p0, Lcom/android/launcher3/e;->q:I

    iget v1, p0, Lcom/android/launcher3/e;->D:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/e;->z:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->z:I

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    iget-boolean v1, p0, Lcom/android/launcher3/e;->h:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/e;->r:I

    iget v2, p0, Lcom/android/launcher3/e;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iget v1, p0, Lcom/android/launcher3/e;->p:I

    iget v2, p0, Lcom/android/launcher3/e;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/launcher3/e;->j:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/launcher3/e;->s:I

    iget v2, p0, Lcom/android/launcher3/e;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    iget v1, p0, Lcom/android/launcher3/e;->q:I

    iget v2, p0, Lcom/android/launcher3/e;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    :cond_3
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/e;->b(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/e;->requestLayout()V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher3/e;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/e;->c:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/e;->r:I

    iget v2, p0, Lcom/android/launcher3/e;->p:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->y:I

    iget v0, p0, Lcom/android/launcher3/e;->p:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher3/e;->D:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/e;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->y:I

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/e;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/e;->c:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/e;->s:I

    iget v2, p0, Lcom/android/launcher3/e;->q:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->z:I

    iget v0, p0, Lcom/android/launcher3/e;->q:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher3/e;->D:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/e;->z:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/e;->z:I

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lcom/android/launcher3/e;->i:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/e;->p:I

    iget v2, p0, Lcom/android/launcher3/e;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/android/launcher3/e;->k:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/e;->q:I

    iget v2, p0, Lcom/android/launcher3/e;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    goto :goto_3
.end method
