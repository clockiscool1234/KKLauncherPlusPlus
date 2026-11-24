.class public Lcom/android/launcher3/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field private e:Lcom/android/launcher3/bw;

.field private f:Lcom/android/launcher3/c;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/bw;Lcom/android/launcher3/c;)V
    .locals 2

    const/16 v1, 0x2a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    iput-object p2, p0, Lcom/android/launcher3/b;->f:Lcom/android/launcher3/c;

    return-void
.end method

.method private static a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/launcher3/b;->a(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher3/b;->a(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, p1, p2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    if-lt v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v3, v0, Lcom/android/launcher3/BubbleTextView;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/android/launcher3/FolderIcon;

    if-nez v3, :cond_1

    add-int v0, v1, p2

    move v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2

    check-cast p0, Lcom/android/launcher3/dX;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dX;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    return-object v0

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/android/launcher3/aN;

    invoke-direct {v0, v1}, Lcom/android/launcher3/aN;-><init>(I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/b;->a(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    const v4, 0x7f100004

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_2

    move v2, v0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_1

    if-eq p0, v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_0

    if-ne p0, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Lcom/android/launcher3/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FocusOnlyTabWidget;

    invoke-static {v0}, Lcom/android/launcher3/b;->a(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/FocusOnlyTabWidget;->getTabCount()I

    move-result v6

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FocusOnlyTabWidget;->a(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_1

    move v3, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :pswitch_0
    if-eqz v3, :cond_2

    if-lez v7, :cond_2

    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_3

    add-int/lit8 v2, v6, -0x1

    if-ge v7, v2, :cond_4

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/AccessibleTabView;->getNextFocusRightId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/AccessibleTabView;->getNextFocusRightId()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :pswitch_2
    move v0, v1

    goto :goto_2

    :pswitch_3
    if-eqz v3, :cond_5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_5
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 15

    invoke-static/range {p0 .. p1}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v2

    iget v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    add-int v3, v10, p3

    if-ltz v3, :cond_7

    if-ge v3, v2, :cond_7

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-gez p3, :cond_0

    const/4 v2, -0x1

    move v4, v2

    :goto_0
    move v7, v3

    :goto_1
    if-ne v6, v4, :cond_1

    if-ltz v5, :cond_7

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_2
    return-object v1

    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-gez p3, :cond_4

    iget v8, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    if-ge v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_8

    instance-of v8, v2, Lcom/android/launcher3/BubbleTextView;

    if-nez v8, :cond_2

    instance-of v2, v2, Lcom/android/launcher3/FolderIcon;

    if-eqz v2, :cond_8

    :cond_2
    iget v2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iget v8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    sub-int/2addr v2, v8

    int-to-double v11, v2

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpg-float v3, v2, v7

    if-gez v3, :cond_8

    move v3, v2

    move v2, v6

    :goto_4
    if-gt v6, v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    move v5, v2

    move v7, v3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    iget v8, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    if-le v8, v10, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, -0x1

    move v5, v2

    move v7, v3

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    move v2, v5

    move v3, v7

    goto :goto_4
.end method

.method private static b(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ex;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    return-object v0
.end method

.method static b(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ex;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v3

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v2

    move-object v4, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dX;

    invoke-static {v0}, Lcom/android/launcher3/b;->a(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dX;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dX;->d(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/android/launcher3/dX;->getChildCount()I

    move-result v10

    rem-int v11, v7, v2

    div-int v12, v7, v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    move v5, v4

    :goto_1
    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    move v0, v4

    :goto_2
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/eh;

    invoke-virtual {v1}, Lcom/android/launcher3/eh;->c()I

    move-result v2

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/eh;

    invoke-virtual {v1}, Lcom/android/launcher3/eh;->d()I

    move-result v1

    move-object v3, v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    :sswitch_0
    if-eqz v5, :cond_2

    if-lez v7, :cond_3

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    if-lez v9, :cond_2

    add-int/lit8 v1, v9, -0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/b;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dX;->o(I)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :sswitch_1
    if-eqz v5, :cond_4

    add-int/lit8 v1, v8, -0x1

    if-ge v7, v1, :cond_5

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    :goto_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v10, -0x1

    if-ge v9, v1, :cond_4

    add-int/lit8 v1, v9, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/b;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dX;->o(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :sswitch_2
    if-eqz v5, :cond_6

    if-lez v12, :cond_7

    add-int/lit8 v0, v12, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v11

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_6
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v6}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_5

    :sswitch_3
    if-eqz v5, :cond_8

    add-int/lit8 v0, v1, -0x1

    if-ge v12, v0, :cond_8

    add-int/lit8 v0, v8, -0x1

    add-int/lit8 v1, v12, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v5, :cond_9

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v5, :cond_a

    if-lez v9, :cond_b

    add-int/lit8 v1, v9, -0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/b;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_a

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dX;->o(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_a
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    :sswitch_6
    if-eqz v5, :cond_c

    add-int/lit8 v1, v10, -0x1

    if-ge v9, v1, :cond_d

    add-int/lit8 v1, v9, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/b;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_c

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dX;->o(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_c
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    :sswitch_7
    if-eqz v5, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_8
    if-eqz v5, :cond_f

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static c(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v4, 0x7f100037

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->C()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_0

    move v4, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move v4, v3

    goto :goto_0

    :pswitch_0
    if-eqz v4, :cond_1

    if-lez v5, :cond_2

    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    goto :goto_2

    :pswitch_1
    if-eqz v4, :cond_3

    add-int/lit8 v3, v6, -0x1

    if-ge v5, v3, :cond_4

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_3
    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    goto :goto_3

    :pswitch_2
    if-eqz v4, :cond_5

    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v2}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_5
    :goto_4
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->requestFocus()Z

    goto :goto_4

    :pswitch_3
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static d(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f100039

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v7, 0x7f100038

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v5, :cond_1

    move v7, v5

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    move v7, v6

    goto :goto_0

    :sswitch_0
    if-eqz v7, :cond_2

    invoke-static {v1, v0, p0, v10}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_2
    move v0, v5

    goto :goto_1

    :cond_3
    if-lez v8, :cond_2

    add-int/lit8 v0, v8, -0x1

    invoke-static {v2, v0}, Lcom/android/launcher3/b;->b(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v3

    invoke-static {v1, v0, v3, v10}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v7, :cond_5

    invoke-static {v1, v0, p0, v5}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_5
    :goto_3
    move v0, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v9, -0x1

    if-ge v8, v0, :cond_5

    add-int/lit8 v0, v8, 0x1

    invoke-static {v2, v0}, Lcom/android/launcher3/b;->b(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-static {v1, v0, v10, v5}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    goto :goto_3

    :sswitch_2
    if-eqz v7, :cond_0

    invoke-static {v1, v0, p0, v10}, Lcom/android/launcher3/b;->b(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    :goto_4
    move v0, v5

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    move v0, v6

    goto :goto_1

    :sswitch_3
    if-eqz v7, :cond_0

    invoke-static {v1, v0, p0, v5}, Lcom/android/launcher3/b;->b(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    move v0, v6

    goto :goto_1

    :sswitch_4
    if-eqz v7, :cond_b

    if-lez v8, :cond_d

    add-int/lit8 v0, v8, -0x1

    invoke-static {v2, v0}, Lcom/android/launcher3/b;->b(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-static {v1, v0, v10, v5}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_b
    :goto_5
    move v0, v5

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    goto :goto_5

    :cond_d
    invoke-static {v1, v0, v10, v5}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    :sswitch_5
    if-eqz v7, :cond_e

    add-int/lit8 v3, v9, -0x1

    if-ge v8, v3, :cond_10

    add-int/lit8 v0, v8, 0x1

    invoke-static {v2, v0}, Lcom/android/launcher3/b;->b(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-static {v1, v0, v10, v5}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_e
    :goto_6
    move v0, v5

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->o(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v2

    invoke-static {v1, v0, v2, v10}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    :sswitch_6
    if-eqz v7, :cond_11

    invoke-static {v1, v0, v10, v5}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_11
    move v0, v5

    goto/16 :goto_1

    :sswitch_7
    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v2

    invoke-static {v1, v0, v2, v10}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static e(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ex;

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Folder;

    iget-object v5, v2, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_0

    move v2, v3

    :goto_0
    sparse-switch p1, :sswitch_data_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move v2, v4

    goto :goto_0

    :sswitch_0
    if-eqz v2, :cond_1

    invoke-static {v1, v0, p0, v6}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    move v0, v3

    goto :goto_1

    :sswitch_1
    if-eqz v2, :cond_2

    invoke-static {v1, v0, p0, v3}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :sswitch_2
    if-eqz v2, :cond_4

    invoke-static {v1, v0, p0, v6}, Lcom/android/launcher3/b;->b(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    move v0, v3

    goto :goto_1

    :sswitch_3
    if-eqz v2, :cond_5

    invoke-static {v1, v0, p0, v3}, Lcom/android/launcher3/b;->b(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_5
    :goto_3
    move v0, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :sswitch_4
    if-eqz v2, :cond_7

    invoke-static {v1, v0, v6, v3}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_7
    move v0, v3

    goto :goto_1

    :sswitch_5
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v2

    invoke-static {v1, v0, v2, v6}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    move v0, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1, p2}, Lcom/android/launcher3/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Lcom/android/launcher3/d;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/launcher3/d;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/bw;Ljava/util/HashMap;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/d;)V

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/d;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/b;->f:Lcom/android/launcher3/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/b;->f:Lcom/android/launcher3/c;

    iget-object v2, p1, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/launcher3/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v0, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    invoke-virtual {v0}, Lcom/android/launcher3/bw;->b()V

    return-void

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v3, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher3/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-gez v4, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-lt v3, v4, :cond_5

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v1, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/bw;->a(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    move-object v1, v2

    :goto_3
    if-nez v1, :cond_8

    new-instance v1, Lcom/android/launcher3/d;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    invoke-direct {v1, v6, v0, v7, v2}, Lcom/android/launcher3/d;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/bw;Ljava/util/HashMap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/b;->a(Lcom/android/launcher3/d;)V

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/d;

    iget-object v9, v1, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    iget-object v7, v1, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/bw;->a(Landroid/content/ComponentName;)V

    iget-object v6, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    invoke-virtual {v6, v1, v0, v2}, Lcom/android/launcher3/bw;->a(Lcom/android/launcher3/d;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/launcher3/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v2, v0, Lcom/android/launcher3/d;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/launcher3/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/b;->e:Lcom/android/launcher3/bw;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/bw;->a(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/launcher3/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5
.end method
