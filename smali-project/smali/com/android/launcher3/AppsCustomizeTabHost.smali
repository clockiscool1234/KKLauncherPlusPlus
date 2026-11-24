.class public Lcom/android/launcher3/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/launcher3/bz;
.implements Lcom/android/launcher3/dH;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Lcom/android/launcher3/AppsCustomizePagedView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->k:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->a:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/launcher3/s;

    invoke-direct {v0, p0}, Lcom/android/launcher3/s;-><init>(Lcom/android/launcher3/AppsCustomizeTabHost;)V

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/launcher3/r;
    .locals 1

    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    goto :goto_0
.end method

.method private a(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->j()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->isChildrenDrawingOrderEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p0, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    if-eq v4, v2, :cond_2

    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed; can\'t get z-order of views"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/android/launcher3/AppsCustomizeTabHost;Lcom/android/launcher3/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizeTabHost;->d(Lcom/android/launcher3/r;)V

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/android/launcher3/AppsCustomizeTabHost;)Lcom/android/launcher3/AppsCustomizePagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    return-object v0
.end method

.method public static c(Lcom/android/launcher3/r;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/r;->a:Lcom/android/launcher3/r;

    if-ne p0, v0, :cond_0

    const-string v0, "APPS"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/r;->b:Lcom/android/launcher3/r;

    if-ne p0, v0, :cond_1

    const-string v0, "WIDGETS"

    goto :goto_0

    :cond_1
    const-string v0, "APPS"

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/launcher3/AppsCustomizeTabHost;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->p(I)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->requestFocus()Z

    return-void
.end method

.method private d(Lcom/android/launcher3/r;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/r;)V

    return-void
.end method

.method static synthetic e(Lcom/android/launcher3/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/android/launcher3/AppsCustomizeTabHost;)V
    .locals 0

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->i:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->p()V

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/Launcher;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/Launcher;F)V

    return-void
.end method

.method public final a(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/AppsCustomizePagedView;->a(Lcom/android/launcher3/Launcher;ZZ)V

    iput-boolean v3, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->g:Z

    iput-boolean p3, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->h:Z

    if-eqz p3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->p()V

    iput-boolean v2, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->i:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/AppsCustomizePagedView;->b(IZ)V

    goto :goto_0
.end method

.method final a(Lcom/android/launcher3/r;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppsCustomizeTabHost;->d(Lcom/android/launcher3/r;)V

    invoke-static {p1}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public final a_(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/AppsCustomizePagedView;->b(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->p(I)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/AppsCustomizePagedView;->b(Lcom/android/launcher3/Launcher;ZZ)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->buildLayer()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/cG;->dismissWorkspaceCling(Landroid/view/View;)V

    return-void
.end method

.method public final b(Lcom/android/launcher3/r;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-static {p1}, Lcom/android/launcher3/AppsCustomizeTabHost;->c(Lcom/android/launcher3/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->k()V

    return-void
.end method

.method public final c(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/AppsCustomizePagedView;->c(Lcom/android/launcher3/Launcher;ZZ)V

    iput-boolean v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->g:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->c_()V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizePagedView;->p(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(I)V

    :cond_1
    return-void
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->g:Z

    return v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    const v5, 0x7f040024

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setup()V

    const v0, 0x7f100003

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v1, 0x7f100005

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppsCustomizePagedView;

    iput-object v2, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->c:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    const v0, 0x7f100007

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->e:Landroid/widget/FrameLayout;

    const v0, 0x7f100002

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->f:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0

    :cond_1
    new-instance v3, Lcom/android/launcher3/t;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/t;-><init>(Lcom/android/launcher3/AppsCustomizeTabHost;Lcom/android/launcher3/AppsCustomizePagedView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "APPS"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "WIDGETS"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    new-instance v0, Lcom/android/launcher3/x;

    invoke-direct {v0}, Lcom/android/launcher3/x;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v1, 0x7f100004

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->n()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/launcher3/AppsCustomizeTabHost;->a(Ljava/lang/String;)Lcom/android/launcher3/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/android/launcher3/u;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/u;-><init>(Lcom/android/launcher3/AppsCustomizeTabHost;Lcom/android/launcher3/r;I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->h:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/AppsCustomizeTabHost;->d:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
