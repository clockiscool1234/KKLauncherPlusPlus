.class public Lcom/android/launcher3/Folder;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/aF;
.implements Lcom/android/launcher3/az;
.implements Lcom/android/launcher3/bl;


# static fields
.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Landroid/graphics/Rect;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:F

.field private H:F

.field private I:Z

.field private J:Landroid/view/inputmethod/InputMethodManager;

.field private M:I

.field private N:I

.field private O:Z

.field private P:La/a/a/e/a;

.field private Q:Ljava/lang/Runnable;

.field private R:Z

.field private S:Z

.field private T:Landroid/view/ActionMode$Callback;

.field private U:Lcom/android/launcher3/dU;

.field private V:Lcom/android/launcher3/dU;

.field protected a:Lcom/android/launcher3/ap;

.field protected b:Lcom/android/launcher3/Launcher;

.field protected c:Lcom/android/launcher3/bk;

.field protected d:Lcom/android/launcher3/CellLayout;

.field e:Lcom/android/launcher3/FolderEditText;

.field private f:I

.field private g:Landroid/widget/ScrollView;

.field private final h:Landroid/view/LayoutInflater;

.field private final i:Lcom/android/launcher3/bw;

.field private j:I

.field private k:Z

.field private l:Lcom/android/launcher3/FolderIcon;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/util/ArrayList;

.field private q:Z

.field private r:Lcom/android/launcher3/ey;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:Z

.field private v:[I

.field private w:[I

.field private x:[I

.field private y:Lcom/android/launcher3/a;

.field private z:Lcom/android/launcher3/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Folder;->j:I

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->p:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->q:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->u:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/Folder;->v:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/Folder;->w:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->y:Lcom/android/launcher3/a;

    new-instance v0, Lcom/android/launcher3/a;

    invoke-direct {v0}, Lcom/android/launcher3/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->z:Lcom/android/launcher3/a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->B:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->C:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->D:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->E:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->F:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->I:Z

    iput v2, p0, Lcom/android/launcher3/Folder;->M:I

    iput v3, p0, Lcom/android/launcher3/Folder;->N:I

    new-instance v0, Lcom/android/launcher3/aO;

    invoke-direct {v0, p0}, Lcom/android/launcher3/aO;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->T:Landroid/view/ActionMode$Callback;

    new-instance v0, Lcom/android/launcher3/aP;

    invoke-direct {v0, p0}, Lcom/android/launcher3/aP;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->U:Lcom/android/launcher3/dU;

    new-instance v0, Lcom/android/launcher3/aQ;

    invoke-direct {v0, p0}, Lcom/android/launcher3/aQ;-><init>(Lcom/android/launcher3/Folder;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->V:Lcom/android/launcher3/dU;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Folder;->h:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->e()Lcom/android/launcher3/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Folder;->i:Lcom/android/launcher3/bw;

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v1, Lcom/android/launcher3/al;->d:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/Folder;->m:I

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/launcher3/Folder;->o:I

    iput v0, p0, Lcom/android/launcher3/Folder;->n:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->J:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0e001b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Folder;->f:I

    sget-object v0, Lcom/android/launcher3/Folder;->K:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0a0014

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Folder;->K:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/launcher3/Folder;->L:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f0a004e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Folder;->L:Ljava/lang/String;

    :cond_1
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Folder;->setFocusableInTouchMode(Z)V

    return-void

    :cond_2
    iget v0, v1, Lcom/android/launcher3/al;->c:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/Folder;->n:I

    iget v0, p0, Lcom/android/launcher3/Folder;->m:I

    iget v1, p0, Lcom/android/launcher3/Folder;->n:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/Folder;->o:I

    goto :goto_0
.end method

.method private A()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->y()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/Folder;->A:I

    add-int/2addr v0, v1

    return v0
.end method

.method private B()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/aV;

    invoke-direct {v0, p0}, Lcom/android/launcher3/aV;-><init>(Lcom/android/launcher3/Folder;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/Folder;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/FolderIcon;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->O:Z

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private C()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/Folder;->c(I)Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setNextFocusDownId(I)V

    iget-object v1, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setNextFocusRightId(I)V

    iget-object v1, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/FolderEditText;->setNextFocusLeftId(I)V

    iget-object v1, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/FolderEditText;->setNextFocusUpId(I)V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/android/launcher3/Folder;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method private a(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v0

    :cond_0
    const/4 v3, 0x0

    move v4, v1

    move v13, v0

    move v0, v3

    move v3, v13

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/CellLayout;->b(II)V

    const/4 v0, 0x2

    new-array v12, v0, [I

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v11, v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->q:Z

    return-void

    :cond_1
    mul-int v0, v4, v3

    if-ge v0, p1, :cond_5

    if-le v4, v3, :cond_2

    iget v0, p0, Lcom/android/launcher3/Folder;->n:I

    if-ne v3, v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/launcher3/Folder;->m:I

    if-ge v4, v0, :cond_4

    add-int/lit8 v1, v4, 0x1

    move v0, v3

    :goto_3
    if-nez v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_4
    if-ne v1, v4, :cond_0

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    move v4, v1

    move v13, v0

    move v0, v3

    move v3, v13

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/launcher3/Folder;->n:I

    if-ge v3, v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    move v1, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v3, -0x1

    mul-int/2addr v0, v4

    if-lt v0, p1, :cond_6

    if-lt v3, v4, :cond_6

    const/4 v0, 0x0

    add-int/lit8 v1, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v4, -0x1

    mul-int/2addr v0, v3

    if-lt v0, p1, :cond_b

    const/4 v0, 0x0

    add-int/lit8 v1, v4, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v3

    goto :goto_4

    :cond_7
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/launcher3/CellLayout;->b([III)Z

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/bD;

    iget v0, v1, Lcom/android/launcher3/bD;->j:I

    const/4 v2, 0x0

    aget v2, v12, v2

    if-ne v0, v2, :cond_8

    iget v0, v1, Lcom/android/launcher3/bD;->k:I

    const/4 v2, 0x1

    aget v2, v12, v2

    if-eq v0, v2, :cond_9

    :cond_8
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher3/bD;->j:I

    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher3/bD;->k:I

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v2, v2, Lcom/android/launcher3/bk;->f:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lcom/android/launcher3/bD;->j:I

    iget v7, v1, Lcom/android/launcher3/bD;->k:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    const/4 v2, -0x1

    iget-wide v3, v1, Lcom/android/launcher3/bD;->f:J

    long-to-int v3, v3

    const/4 v5, 0x1

    move-object v1, v9

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto/16 :goto_2

    :cond_a
    move-object v10, v2

    goto/16 :goto_1

    :cond_b
    move v0, v3

    move v1, v4

    goto/16 :goto_4

    :cond_c
    move v0, v3

    move v1, v4

    goto/16 :goto_3
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Folder;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Folder;->j:I

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Folder;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/Folder;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Folder;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Folder;->Q:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/Folder;[I[I)V
    .locals 12

    const/4 v5, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    if-le v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_9

    const/4 v0, 0x0

    aget v0, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    move v9, v0

    :goto_3
    const/4 v0, 0x1

    aget v0, p2, v0

    if-le v9, v0, :cond_5

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    aget v0, p1, v0

    if-ne v9, v0, :cond_6

    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    :goto_4
    const/4 v1, 0x1

    aget v1, p2, v1

    if-ge v9, v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    :goto_5
    move v11, v0

    :goto_6
    if-le v11, v10, :cond_8

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    aget v1, p2, v1

    move v10, v1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v11, v9}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/16 v4, 0xe6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IIIIZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    aput v11, p1, v0

    const/4 v0, 0x1

    aput v9, p1, v0

    int-to-float v0, v5

    add-float/2addr v0, v8

    float-to-int v5, v0

    float-to-double v0, v8

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_7
    add-int/lit8 v1, v11, 0x1

    move v8, v0

    move v11, v1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_b

    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    move v9, v0

    :goto_a
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt v9, v0, :cond_1

    const/4 v0, 0x1

    aget v0, p1, v0

    if-ne v9, v0, :cond_c

    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    const/4 v1, 0x1

    aget v1, p2, v1

    if-le v9, v1, :cond_d

    const/4 v1, 0x0

    move v10, v1

    :goto_c
    move v11, v0

    :goto_d
    if-ge v11, v10, :cond_e

    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    aget v1, p2, v1

    move v10, v1

    goto :goto_c

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v11, v9}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/16 v4, 0xe6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IIIIZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    aput v11, p1, v0

    const/4 v0, 0x1

    aput v9, p1, v0

    int-to-float v0, v5

    add-float/2addr v0, v8

    float-to-int v5, v0

    float-to-double v0, v8

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_e
    add-int/lit8 v1, v11, -0x1

    move v8, v0

    move v11, v1

    goto :goto_d

    :cond_f
    move v0, v8

    goto :goto_e

    :cond_10
    move v0, v8

    goto :goto_7
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    :goto_0
    if-lt v3, v4, :cond_0

    new-instance v0, Lcom/android/launcher3/aY;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/aY;-><init>(Lcom/android/launcher3/Folder;I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_1

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    iget v5, v0, Lcom/android/launcher3/ey;->j:I

    if-le v5, v1, :cond_2

    iget v0, v0, Lcom/android/launcher3/ey;->j:I

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    rem-int v2, v1, v3

    div-int v5, v1, v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    iput v2, v0, Lcom/android/launcher3/ey;->j:I

    iput v5, v0, Lcom/android/launcher3/ey;->k:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/launcher3/Folder;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    return-object v0
.end method

.method private b(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->a(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/DragLayer$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->c:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->x()V

    return-void
.end method

.method static synthetic b(Lcom/android/launcher3/Folder;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->v:[I

    return-object v0
.end method

.method private c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ex;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/launcher3/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->B()V

    return-void
.end method

.method static synthetic d(Lcom/android/launcher3/Folder;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/android/launcher3/Folder;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Folder;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ap;->b(Lcom/android/launcher3/aF;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->requestFocus()Z

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->b(I)V

    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->k:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->C:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->E:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->B()V

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->E:Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->C:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->D:Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/launcher3/Folder;)Lcom/android/launcher3/FolderIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    return-object v0
.end method

.method private f(Lcom/android/launcher3/ey;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    iget v4, p1, Lcom/android/launcher3/ey;->l:I

    iget v5, p1, Lcom/android/launcher3/ey;->m:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/launcher3/CellLayout;->a([III)Z

    move-result v3

    if-eqz v3, :cond_0

    aget v1, v2, v1

    iput v1, p1, Lcom/android/launcher3/ey;->j:I

    aget v1, v2, v0

    iput v1, p1, Lcom/android/launcher3/ey;->k:I

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private g(Lcom/android/launcher3/ey;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->h:Landroid/view/LayoutInflater;

    const v2, 0x7f040003

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->i:Lcom/android/launcher3/bw;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/ey;->a(Lcom/android/launcher3/bw;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v0, v0}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/android/launcher3/ey;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->b(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->a(I)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    iget v3, p1, Lcom/android/launcher3/ey;->j:I

    iget v4, p1, Lcom/android/launcher3/ey;->k:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/android/launcher3/ey;->j:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/android/launcher3/ey;->k:I

    if-ltz v2, :cond_0

    iget v2, p1, Lcom/android/launcher3/ey;->j:I

    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p1, Lcom/android/launcher3/ey;->k:I

    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const-string v2, "Launcher.Folder"

    const-string v3, "Folder order not properly persisted during bind"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/ey;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v0, p1, Lcom/android/launcher3/ey;->j:I

    iget v2, p1, Lcom/android/launcher3/ey;->k:I

    iget v3, p1, Lcom/android/launcher3/ey;->l:I

    iget v5, p1, Lcom/android/launcher3/ey;->m:I

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    new-instance v0, Lcom/android/launcher3/bm;

    invoke-direct {v0}, Lcom/android/launcher3/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    const/4 v2, -0x1

    iget-wide v5, p1, Lcom/android/launcher3/ey;->f:J

    long-to-int v3, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    goto :goto_0
.end method

.method private h(Lcom/android/launcher3/ey;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v3

    if-lt v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private v()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/bD;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v2, v2, Lcom/android/launcher3/bk;->f:J

    const-wide/16 v4, 0x0

    iget v6, v1, Lcom/android/launcher3/bD;->j:I

    iget v7, v1, Lcom/android/launcher3/bD;->k:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0
.end method

.method private w()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->u()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v5, v1, Lcom/android/launcher3/bk;->f:J

    invoke-static {v0, v4, v5, v6, v2}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bD;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private x()V
    .locals 12

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DragLayer$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    const v2, 0x7f100036

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/DragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->v()I

    move-result v3

    add-int v4, v2, v3

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->A()I

    move-result v5

    iget-object v2, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    iget-object v3, p0, Lcom/android/launcher3/Folder;->B:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v6

    iget-object v3, p0, Lcom/android/launcher3/Folder;->B:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v7, p0, Lcom/android/launcher3/Folder;->B:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    div-float/2addr v7, v9

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget-object v7, p0, Lcom/android/launcher3/Folder;->B:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/Folder;->B:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    add-float/2addr v2, v7

    float-to-int v2, v2

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v3, v5, 0x2

    sub-int v8, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->D()I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->b(I)V

    iget-object v2, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v2

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2, v9}, Lcom/android/launcher3/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v1, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/Workspace;->r(I)V

    iget v1, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v3, v10

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v3, v6, Lcom/android/launcher3/al;->g:Z

    if-nez v3, :cond_2

    iget-boolean v3, v6, Lcom/android/launcher3/al;->h:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    iget v3, v6, Lcom/android/launcher3/al;->m:I

    sub-int/2addr v3, v4

    iget v10, v6, Lcom/android/launcher3/al;->o:I

    if-ge v3, v10, :cond_3

    iget v1, v6, Lcom/android/launcher3/al;->m:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    :cond_0
    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v5, v3, :cond_1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_1
    div-int/lit8 v3, v4, 0x2

    sub-int v6, v7, v1

    add-int/2addr v3, v6

    div-int/lit8 v6, v5, 0x2

    sub-int v7, v8, v2

    add-int/2addr v6, v7

    int-to-float v7, v3

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Folder;->setPivotX(F)V

    int-to-float v7, v6

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Folder;->setPivotY(F)V

    iget-object v7, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v7}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v3, v3

    mul-float/2addr v3, v11

    int-to-float v8, v4

    div-float/2addr v3, v8

    mul-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/Folder;->G:F

    iget-object v3, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/FolderIcon;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v6

    mul-float/2addr v6, v11

    int-to-float v7, v5

    div-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/Folder;->H:F

    iput v4, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->width:I

    iput v5, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->height:I

    iput v1, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->a:I

    iput v2, v0, Lcom/android/launcher3/DragLayer$LayoutParams;->b:I

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v4, v3, :cond_0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method private y()I
    .locals 3

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/launcher3/al;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/al;->a(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v1, Lcom/android/launcher3/al;->n:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/android/launcher3/Folder;->A:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->w()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private z()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->v()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Folder;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->R:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Folder"

    const-string v1, "Deferred handling drop because waiting for uninstall."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/aU;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/aU;-><init>(Lcom/android/launcher3/Folder;Landroid/view/View;Lcom/android/launcher3/aH;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->Q:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Folder;->Q:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-eqz p4, :cond_7

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->S:Z

    if-eqz v0, :cond_7

    :cond_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lcom/android/launcher3/Folder;->D:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher3/Folder;->F:Z

    if-nez v3, :cond_2

    if-eq p1, p0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->B()V

    :cond_2
    :goto_3
    if-eq p1, p0, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/Folder;->z:Lcom/android/launcher3/a;

    invoke-virtual {v3}, Lcom/android/launcher3/a;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/Folder;->z:Lcom/android/launcher3/a;

    invoke-virtual {v3}, Lcom/android/launcher3/a;->a()V

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->E:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->l()V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/Workspace;->a(ZLjava/lang/Runnable;)V

    :cond_5
    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->D:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->C:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->F:Z

    iput-object v4, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    iput-object v4, p0, Lcom/android/launcher3/Folder;->s:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->u:Z

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->w()V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/Folder;->b(I)V

    iget-object v3, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/FolderIcon;->a(Lcom/android/launcher3/aH;)V

    goto :goto_3
.end method

.method final a(Lcom/android/launcher3/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    return-void
.end method

.method public final a(Lcom/android/launcher3/aH;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/launcher3/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Folder;->a:Lcom/android/launcher3/ap;

    return-void
.end method

.method final a(Lcom/android/launcher3/bk;)V
    .locals 6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-object v3, p1, Lcom/android/launcher3/bk;->b:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/Folder;->b(I)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/Folder;->a(Ljava/util/ArrayList;)V

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/launcher3/Folder;->b(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->q:Z

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->C()V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/bk;->a(Lcom/android/launcher3/bl;)V

    sget-object v0, Lcom/android/launcher3/Folder;->K:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-object v1, v1, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-object v1, v1, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->v()V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->l:Lcom/android/launcher3/FolderIcon;

    new-instance v1, Lcom/android/launcher3/aR;

    invoke-direct {v1, p0}, Lcom/android/launcher3/aR;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->g(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/bk;->b(Lcom/android/launcher3/ey;)V

    iget-object v2, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final a(Lcom/android/launcher3/ey;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->b(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/ey;)Z

    iput-object p1, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/launcher3/ey;->j:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    iget v1, p1, Lcom/android/launcher3/ey;->k:I

    aput v1, v0, v3

    iput-boolean v3, p0, Lcom/android/launcher3/Folder;->t:Z

    iput-boolean v3, p0, Lcom/android/launcher3/Folder;->C:Z

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    sget-object v1, Lcom/android/launcher3/Folder;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iput-object v3, v4, Lcom/android/launcher3/bk;->q:Ljava/lang/CharSequence;

    move v1, v2

    :goto_0
    iget-object v0, v4, Lcom/android/launcher3/bk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-static {v0, v1}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a0067

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Folder;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->requestFocus()Z

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->I:Z

    return-void

    :cond_0
    iget-object v0, v4, Lcom/android/launcher3/bk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/bl;

    invoke-interface {v0, v3}, Lcom/android/launcher3/bl;->a(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->I:Z

    return v0
.end method

.method public final a(Lcom/android/launcher3/aH;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/bD;

    iget v0, v0, Lcom/android/launcher3/bD;->g:I

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->o()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/android/launcher3/aH;)V
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    iget-object v2, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v1, v1, Lcom/android/launcher3/Folder;

    if-nez v1, :cond_4

    new-instance v0, Lcom/android/launcher3/aW;

    invoke-direct {v0, p0}, Lcom/android/launcher3/aW;-><init>(Lcom/android/launcher3/Folder;)V

    move-object v6, v0

    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v8, Lcom/android/launcher3/ey;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v8, Lcom/android/launcher3/ey;->k:I

    invoke-direct {p0, v8}, Lcom/android/launcher3/Folder;->g(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v1

    :goto_1
    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getScaleY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v6, v5}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->q:Z

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->a(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v2, v1, Lcom/android/launcher3/bk;->f:J

    const-wide/16 v4, 0x0

    iget v6, v8, Lcom/android/launcher3/ey;->j:I

    iget v7, v8, Lcom/android/launcher3/ey;->k:I

    move-object v1, v8

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    if-eq v0, p0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->w()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->t:Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->u:Z

    iget-object v0, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/bk;->a(Lcom/android/launcher3/ey;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->u:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Folder;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->a:I

    iput v0, v8, Lcom/android/launcher3/ey;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Folder;->x:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->b:I

    iput v0, v8, Lcom/android/launcher3/ey;->j:I

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    const/4 v2, -0x1

    iget-wide v9, v8, Lcom/android/launcher3/ey;->f:J

    long-to-int v3, v9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->a(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/aH;->k:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public final b(Lcom/android/launcher3/ey;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->h(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->R:Z

    iput-boolean p1, p0, Lcom/android/launcher3/Folder;->S:Z

    iget-object v0, p0, Lcom/android/launcher3/Folder;->Q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->Q:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Folder;->J:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->a(Z)V

    return-void
.end method

.method public final c(Lcom/android/launcher3/aH;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->w:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->w:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->z:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    return-void
.end method

.method public final c(Lcom/android/launcher3/ey;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->h(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    return-object v0
.end method

.method public final d(Lcom/android/launcher3/aH;)V
    .locals 11

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->g:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v9

    iget v1, p1, Lcom/android/launcher3/aH;->a:I

    iget v2, p1, Lcom/android/launcher3/aH;->b:I

    iget v3, p1, Lcom/android/launcher3/aH;->c:I

    iget v5, p1, Lcom/android/launcher3/aH;->d:I

    new-array v10, v4, [F

    sub-int/2addr v1, v3

    sub-int/2addr v2, v5

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    aput v1, v10, v7

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v10, v8

    aget v0, v10, v7

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, v10, v7

    aget v0, v10, v8

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, v10, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p1, Lcom/android/launcher3/aH;->a:I

    int-to-float v5, v2

    iget v2, p1, Lcom/android/launcher3/aH;->b:I

    int-to-float v6, v2

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->P:La/a/a/e/a;

    invoke-virtual {v1}, La/a/a/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->P:La/a/a/e/a;

    invoke-virtual {v1, v8}, La/a/a/e/a;->a(Z)La/a/a/e/a;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Folder;->P:La/a/a/e/a;

    invoke-virtual {v1, p0, v0}, La/a/a/e/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Folder;->y:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    aget v1, v10, v7

    float-to-int v1, v1

    aget v2, v10, v8

    float-to-int v2, v2

    add-int/2addr v2, v9

    iget-object v5, p0, Lcom/android/launcher3/Folder;->v:[I

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->c(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Folder;->v:[I

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getLayoutDirection()I

    move-result v0

    if-ne v0, v8, :cond_5

    move v0, v8

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Folder;->v:[I

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/Folder;->v:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v7

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Folder;->v:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/android/launcher3/Folder;->w:[I

    aget v1, v1, v7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/Folder;->v:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/launcher3/Folder;->w:[I

    aget v1, v1, v8

    if-eq v0, v1, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Folder;->y:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->y:Lcom/android/launcher3/a;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->U:Lcom/android/launcher3/dU;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->y:Lcom/android/launcher3/a;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/a;->a(J)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->w:[I

    iget-object v1, p0, Lcom/android/launcher3/Folder;->v:[I

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/android/launcher3/Folder;->w:[I

    iget-object v1, p0, Lcom/android/launcher3/Folder;->v:[I

    aget v1, v1, v8

    aput v1, v0, v8

    iget v0, p0, Lcom/android/launcher3/Folder;->N:I

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method public final d(Lcom/android/launcher3/ey;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->q:Z

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/ey;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->b(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->f(Lcom/android/launcher3/ey;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->g(Lcom/android/launcher3/ey;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-wide v2, v1, Lcom/android/launcher3/bk;->f:J

    const-wide/16 v4, 0x0

    iget v6, p1, Lcom/android/launcher3/ey;->j:I

    iget v7, p1, Lcom/android/launcher3/ey;->k:I

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bD;JJII)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final e()Lcom/android/launcher3/bk;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    return-object v0
.end method

.method public final e(Lcom/android/launcher3/aH;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Folder;->P:La/a/a/e/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/a/a/e/a;->a(Z)La/a/a/e/a;

    iget-boolean v0, p1, Lcom/android/launcher3/aH;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->z:Lcom/android/launcher3/a;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->V:Lcom/android/launcher3/dU;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/a;->a(Lcom/android/launcher3/dU;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->z:Lcom/android/launcher3/a;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/a;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Folder;->y:Lcom/android/launcher3/a;

    invoke-virtual {v0}, Lcom/android/launcher3/a;->a()V

    return-void
.end method

.method public final e(Lcom/android/launcher3/ey;)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->q:Z

    iget-object v0, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/Folder;->h(Lcom/android/launcher3/ey;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/launcher3/Folder;->j:I

    if-ne v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->k:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->B()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Folder;->b(I)V

    goto :goto_1
.end method

.method public final f()V
    .locals 8

    const/4 v7, 0x2

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Folder;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->setAlpha(F)V

    iput v4, p0, Lcom/android/launcher3/Folder;->j:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/Folder;->x()V

    const-string v0, "alpha"

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Lcom/android/launcher3/cw;->a(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/aS;

    invoke-direct {v1, p0}, Lcom/android/launcher3/aS;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v1, p0, Lcom/android/launcher3/Folder;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->a:Lcom/android/launcher3/ap;

    invoke-virtual {v0}, Lcom/android/launcher3/ap;->f()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final k()V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/DragLayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "alpha"

    new-array v1, v5, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "scaleX"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Lcom/android/launcher3/cw;->a(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/aT;

    invoke-direct {v1, p0}, Lcom/android/launcher3/aT;-><init>(Lcom/android/launcher3/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v1, p0, Lcom/android/launcher3/Folder;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->v()V

    iput-object v2, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    iput-object v2, p0, Lcom/android/launcher3/Folder;->s:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->k:Z

    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->t:Z

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->R:Z

    return-void
.end method

.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->F:Z

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->r()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Folder;->o:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->g:Landroid/widget/ScrollView;

    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    iget v2, v0, Lcom/android/launcher3/al;->x:I

    iget v0, v0, Lcom/android/launcher3/al;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/CellLayout;->a(II)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/CellLayout;->b(II)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ex;->setMotionEventSplittingEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/CellLayout;->b(Z)V

    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderEditText;

    iput-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderEditText;->a(Lcom/android/launcher3/Folder;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/FolderEditText;->measure(II)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderEditText;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Folder;->A:I

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->T:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/FolderEditText;->setSelectAllOnFocus(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/FolderEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setInputType(I)V

    new-instance v0, Lcom/android/launcher3/aZ;

    iget-object v1, p0, Lcom/android/launcher3/Folder;->g:Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/aZ;-><init>(Landroid/widget/ScrollView;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->P:La/a/a/e/a;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Folder;->I:Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/ey;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/android/launcher3/ey;

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/cG;->dismissFolderCling(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/Folder;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3, p1, p0}, Lcom/android/launcher3/Workspace;->a(Landroid/view/View;Lcom/android/launcher3/az;)V

    iput-object v0, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    iget-object v3, p0, Lcom/android/launcher3/Folder;->x:[I

    iget v4, v0, Lcom/android/launcher3/ey;->j:I

    aput v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/Folder;->x:[I

    iget v0, v0, Lcom/android/launcher3/ey;->k:I

    aput v0, v3, v1

    iput-object p1, p0, Lcom/android/launcher3/Folder;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Folder;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Folder;->c:Lcom/android/launcher3/bk;

    iget-object v3, p0, Lcom/android/launcher3/Folder;->r:Lcom/android/launcher3/ey;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/bk;->b(Lcom/android/launcher3/ey;)V

    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->C:Z

    iput-boolean v2, p0, Lcom/android/launcher3/Folder;->F:Z

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Folder;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->v()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->A()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->z()I

    move-result v2

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->y()I

    move-result v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->z()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->w()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/CellLayout;->d(II)V

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/Folder;->g:Landroid/widget/ScrollView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/ScrollView;->measure(II)V

    iget-object v3, p0, Lcom/android/launcher3/Folder;->e:Lcom/android/launcher3/FolderEditText;

    iget v4, p0, Lcom/android/launcher3/Folder;->A:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/FolderEditText;->measure(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Folder;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->z()I

    move-result v5

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->y()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/CellLayout;->d(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final p()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Folder;->G:F

    return v0
.end method

.method final q()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/Folder;->H:F

    return v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->q()Lcom/android/launcher3/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ex;->getChildCount()I

    move-result v0

    return v0
.end method

.method final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->O:Z

    return v0
.end method

.method public final t()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Folder;->C()V

    return-void
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Folder;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Folder;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->l()I

    move-result v2

    if-lt v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/Folder;->q:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Folder;->p:Ljava/util/ArrayList;

    return-object v0

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->k()I

    move-result v3

    if-lt v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/Folder;->d:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/CellLayout;->e(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/Folder;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
