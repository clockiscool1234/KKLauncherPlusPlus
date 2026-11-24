.class public Lcom/android/launcher3/Cling;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/bz;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:F

.field private static p:F

.field private static q:F

.field private static r:F

.field private static s:F

.field private static t:F

.field private static u:F


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/content/ComponentName;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Paint;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/view/View;

.field private I:I

.field private final J:Landroid/graphics/Rect;

.field private v:Lcom/android/launcher3/Launcher;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x42700000    # 60.0f

    const-string v0, "first_run_portrait"

    sput-object v0, Lcom/android/launcher3/Cling;->a:Ljava/lang/String;

    const-string v0, "first_run_landscape"

    sput-object v0, Lcom/android/launcher3/Cling;->b:Ljava/lang/String;

    const-string v0, "workspace_portrait"

    sput-object v0, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    const-string v0, "workspace_landscape"

    sput-object v0, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    const-string v0, "workspace_large"

    sput-object v0, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    const-string v0, "workspace_custom"

    sput-object v0, Lcom/android/launcher3/Cling;->f:Ljava/lang/String;

    const-string v0, "migration_portrait"

    sput-object v0, Lcom/android/launcher3/Cling;->g:Ljava/lang/String;

    const-string v0, "migration_landscape"

    sput-object v0, Lcom/android/launcher3/Cling;->h:Ljava/lang/String;

    const-string v0, "migration_workspace_portrait"

    sput-object v0, Lcom/android/launcher3/Cling;->i:Ljava/lang/String;

    const-string v0, "migration_workspace_large_portrait"

    sput-object v0, Lcom/android/launcher3/Cling;->j:Ljava/lang/String;

    const-string v0, "migration_workspace_landscape"

    sput-object v0, Lcom/android/launcher3/Cling;->k:Ljava/lang/String;

    const-string v0, "folder_portrait"

    sput-object v0, Lcom/android/launcher3/Cling;->l:Ljava/lang/String;

    const-string v0, "folder_landscape"

    sput-object v0, Lcom/android/launcher3/Cling;->m:Ljava/lang/String;

    const-string v0, "folder_large"

    sput-object v0, Lcom/android/launcher3/Cling;->n:Ljava/lang/String;

    sput v1, Lcom/android/launcher3/Cling;->o:F

    const/high16 v0, 0x43340000    # 180.0f

    sput v0, Lcom/android/launcher3/Cling;->p:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/android/launcher3/Cling;->q:F

    sput v1, Lcom/android/launcher3/Cling;->r:F

    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/android/launcher3/Cling;->s:F

    const/high16 v0, 0x42280000    # 42.0f

    sput v0, Lcom/android/launcher3/Cling;->t:F

    const/high16 v0, 0x42380000    # 46.0f

    sput v0, Lcom/android/launcher3/Cling;->u:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Cling;->z:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Cling;->J:Landroid/graphics/Rect;

    sget-object v0, Lnl/ndsc/kitkatlauncher/A;->c:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->setClickable(Z)V

    return-void
.end method

.method private a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 7

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v0, 0x2

    sget v0, Lcom/android/launcher3/Cling;->s:F

    invoke-static {v0, p1}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget v3, Lcom/android/launcher3/Cling;->r:F

    invoke-static {v3, p1}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v1, v3

    sub-int v6, v2, v0

    sub-int/2addr v6, v3

    add-int/2addr v1, v3

    sub-int v0, v2, v0

    add-int/2addr v0, v3

    invoke-direct {v4, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method static synthetic a(Lcom/android/launcher3/Cling;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 5

    const v4, 0x7f100012

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/Cling;->J:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/al;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f100045

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Lcom/android/launcher3/al;->l:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Lcom/android/launcher3/al;->l:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v4, v2, Lcom/android/launcher3/al;->i:Z

    if-eqz v4, :cond_3

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v2, v2, Lcom/android/launcher3/al;->k:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v0, v1

    goto :goto_0
.end method

.method final a(IILandroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getResources()Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->i()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Hotseat;->a(I)I

    move-result v1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Hotseat;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Hotseat;->b(II)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Cling;->A:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher3/Cling;->B:Landroid/content/ComponentName;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/android/launcher3/eI;->a:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/android/launcher3/eI;->b:I

    add-int/2addr v0, v6

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget v2, v1, Lcom/android/launcher3/al;->B:I

    int-to-float v2, v2

    iget v1, v1, Lcom/android/launcher3/al;->o:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Lcom/android/launcher3/eI;->a(Landroid/graphics/Rect;F)V

    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f100061

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method final a(ILjava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const v0, 0x7f100012

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/V;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/V;-><init>(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/X;

    invoke-direct {v1, p0}, Lcom/android/launcher3/X;-><init>(Lcom/android/launcher3/Cling;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/W;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/W;-><init>(Lcom/android/launcher3/Cling;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method final a(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/Cling;->w:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    const/high16 v0, -0x34000000    # -3.3554432E7f

    iput v0, p0, Lcom/android/launcher3/Cling;->I:I

    invoke-virtual {p0, p0}, Lcom/android/launcher3/Cling;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/Cling;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/Cling;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Cling;->E:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/Cling;->E:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/Cling;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/Cling;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Cling;->G:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/Cling;->G:Landroid/graphics/Paint;

    const v1, 0x72bbed

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v3, p0, Lcom/android/launcher3/Cling;->w:Z

    :cond_0
    return-void
.end method

.method final a(ZI)V
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v5, 0xfa

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Cling;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x7f100012

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Cling;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/android/launcher3/U;

    invoke-direct {v0, p0}, Lcom/android/launcher3/U;-><init>(Lcom/android/launcher3/Cling;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->buildLayer()V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Cling;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public final a_(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Cling;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/Cling;->setPadding(IIII)V

    return-void
.end method

.method final b()V
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Cling;->a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10005e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Lcom/android/launcher3/al;->l:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/Cling;->J:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method final b(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f100016

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/Cling;->J:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Cling;->y:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Cling;->w:Z

    return-void
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/Cling;->w:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/Cling;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/al;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v0, p0, Lcom/android/launcher3/Cling;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Cling;->y:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/Cling;->H:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/Cling;->I:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, v1

    move-object v2, v1

    :goto_0
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getAlpha()F

    move-result v3

    const v6, 0x7f100012

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    mul-float/2addr v3, v6

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/Cling;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/Cling;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    const v0, 0x7f100013

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Cling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/android/launcher3/Cling;->F:Landroid/graphics/Paint;

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v2, Lcom/android/launcher3/Cling;->o:F

    invoke-static {v2, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/launcher3/Cling;->p:F

    invoke-static {v3, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/launcher3/Cling;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Cling;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/Cling;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v11, v11, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Cling;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/android/launcher3/Cling;->I:I

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/launcher3/Cling;->I:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    invoke-direct {p0, v5}, Lcom/android/launcher3/Cling;->a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/android/launcher3/Cling;->r:F

    invoke-static {v8, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sget v7, Lcom/android/launcher3/Cling;->q:F

    invoke-static {v7, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2, v10, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Cling;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Cling;->A:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->A:Landroid/graphics/drawable/Drawable;

    mul-float v1, v12, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_b
    iget-object v3, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher3/Cling;->i:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher3/Cling;->j:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher3/Cling;->k:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_c
    sget v3, Lcom/android/launcher3/Cling;->s:F

    invoke-static {v3, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/android/launcher3/Cling;->u:F

    invoke-static {v7, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/Cling;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/android/launcher3/Cling;->t:F

    invoke-static {v6, v5}, Lcom/android/launcher3/aI;->a(FLandroid/util/DisplayMetrics;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/Cling;->D:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2, v10, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    return-object v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p0, p1}, Lcom/android/launcher3/Cling;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Cling;->C:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/Cling;->z:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/Cling;->z:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Cling;->B:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/cG;->dismissWorkspaceCling(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/cG;->dismissWorkspaceCling(Landroid/view/View;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/Cling;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->n()Lcom/android/launcher3/cG;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/cG;->dismissMigrationWorkspaceCling(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->z:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/Cling;->z:[I

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    :cond_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Cling;->x:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/Cling;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Cling;->v:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->h()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->k()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Folder;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
