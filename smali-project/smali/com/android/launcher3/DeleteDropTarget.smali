.class public Lcom/android/launcher3/DeleteDropTarget;
.super Lcom/android/launcher3/E;


# static fields
.field private static f:I

.field private static g:I

.field private static h:F

.field private static i:I

.field private static j:I


# instance fields
.field private final k:I

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/graphics/drawable/TransitionDrawable;

.field private n:Landroid/graphics/drawable/TransitionDrawable;

.field private o:Landroid/graphics/drawable/TransitionDrawable;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11d

    sput v0, Lcom/android/launcher3/DeleteDropTarget;->f:I

    const/16 v0, 0x15e

    sput v0, Lcom/android/launcher3/DeleteDropTarget;->g:I

    const v0, 0x3d0f5c29    # 0.035f

    sput v0, Lcom/android/launcher3/DeleteDropTarget;->h:F

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/DeleteDropTarget;->i:I

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/DeleteDropTarget;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/android/launcher3/DeleteDropTarget;->j:I

    iput v0, p0, Lcom/android/launcher3/DeleteDropTarget;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/aH;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/bD;

    iget-boolean v4, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    iput-boolean v3, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    iget-object v1, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    invoke-static {v1, v0}, Lcom/android/launcher3/DeleteDropTarget;->b(Lcom/android/launcher3/az;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/launcher3/d;

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    iget-object v2, v0, Lcom/android/launcher3/d;->d:Landroid/content/ComponentName;

    iget v0, v0, Lcom/android/launcher3/d;->e:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/Launcher;->a(Landroid/content/ComponentName;I)Z

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Folder;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Folder;->b(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->i(Lcom/android/launcher3/aH;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v1, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher3/ey;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/d;->a(Landroid/content/pm/PackageInfo;)I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v0, v2}, Lcom/android/launcher3/Launcher;->a(Landroid/content/ComponentName;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    iget-boolean v2, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/launcher3/ae;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/ae;-><init>(Lcom/android/launcher3/DeleteDropTarget;Landroid/content/ComponentName;Lcom/android/launcher3/az;)V

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->g(Lcom/android/launcher3/aH;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v1, v1, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/bk;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    check-cast v0, Lcom/android/launcher3/bk;

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/bk;)V

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/cO;->a(Landroid/content/Context;Lcom/android/launcher3/bk;)V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/android/launcher3/DeleteDropTarget;->f(Lcom/android/launcher3/aH;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/cF;

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/cF;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/cF;)V

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/cO;->b(Landroid/content/Context;Lcom/android/launcher3/bD;)V

    check-cast v0, Lcom/android/launcher3/cF;

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->l()Lcom/android/launcher3/cD;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Lcom/android/launcher3/af;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/launcher3/af;-><init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/cD;Lcom/android/launcher3/cF;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/af;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->b(Z)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/android/launcher3/DeleteDropTarget;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    instance-of v0, p0, Lcom/android/launcher3/bD;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/bD;

    iget v3, v0, Lcom/android/launcher3/bD;->g:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcom/android/launcher3/bD;->g:I

    if-ne v3, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/android/launcher3/bD;->g:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v0, Lcom/android/launcher3/bD;->g:I

    if-nez v3, :cond_4

    instance-of v3, v0, Lcom/android/launcher3/d;

    if-eqz v3, :cond_4

    check-cast p0, Lcom/android/launcher3/d;

    iget v0, p0, Lcom/android/launcher3/d;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget v3, v0, Lcom/android/launcher3/bD;->g:I

    if-nez v3, :cond_7

    instance-of v0, v0, Lcom/android/launcher3/ey;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p0, Lcom/android/launcher3/ey;

    iget v0, p0, Lcom/android/launcher3/ey;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private static b(Lcom/android/launcher3/az;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/launcher3/az;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static f(Lcom/android/launcher3/aH;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Folder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g(Lcom/android/launcher3/aH;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/DeleteDropTarget;->f(Lcom/android/launcher3/aH;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/ey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lcom/android/launcher3/aH;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->i(Lcom/android/launcher3/aH;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    check-cast v0, Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->m()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DeleteDropTarget;->p:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v0, v0, Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    check-cast v0, Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->at()V

    goto :goto_0
.end method

.method private i(Lcom/android/launcher3/aH;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->g(Lcom/android/launcher3/aH;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ey;

    iget-object v0, v0, Lcom/android/launcher3/ey;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/aH;Landroid/graphics/PointF;)V
    .locals 13

    iget-object v0, p1, Lcom/android/launcher3/aH;->h:Lcom/android/launcher3/az;

    instance-of v10, v0, Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->b(I)V

    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v0}, Lcom/android/launcher3/aA;->f()V

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/DeleteDropTarget;->d()V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeleteDropTarget;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->c:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->d()V

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->c:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/SearchDropTargetBar;->a()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    sget v11, Lcom/android/launcher3/DeleteDropTarget;->g:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    new-instance v12, Lcom/android/launcher3/ai;

    invoke-direct {v12, p0, v5, v6, v11}, Lcom/android/launcher3/ai;-><init>(Lcom/android/launcher3/DeleteDropTarget;JI)V

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/launcher3/DeleteDropTarget;->k:I

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v1}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v3}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/launcher3/DeleteDropTarget;->a(IIII)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    div-float v0, v4, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p2, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v5

    int-to-float v8, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    int-to-float v5, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v0

    new-instance v3, Lcom/android/launcher3/ag;

    invoke-direct {v3, p0}, Lcom/android/launcher3/ag;-><init>(Lcom/android/launcher3/DeleteDropTarget;)V

    new-instance v0, Lcom/android/launcher3/ah;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/ah;-><init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V

    move-object v4, v0

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->h(Lcom/android/launcher3/aH;)V

    new-instance v7, Lcom/android/launcher3/aj;

    invoke-direct {v7, p0, v10, p1}, Lcom/android/launcher3/aj;-><init>(Lcom/android/launcher3/DeleteDropTarget;ZLcom/android/launcher3/aH;)V

    iget-object v3, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/android/launcher3/DeleteDropTarget;->k:I

    sget v1, Lcom/android/launcher3/DeleteDropTarget;->j:I

    if-ne v0, v1, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v1, Lcom/android/launcher3/ak;

    sget v7, Lcom/android/launcher3/DeleteDropTarget;->h:F

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/ak;-><init>(Lcom/android/launcher3/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    move-object v4, v1

    goto :goto_0
.end method

.method public final a(Lcom/android/launcher3/az;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher3/cB;->o()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Lcom/android/launcher3/DeleteDropTarget;->b(Lcom/android/launcher3/az;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v1

    :goto_0
    if-nez v4, :cond_5

    invoke-interface {p1}, Lcom/android/launcher3/az;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {p2}, Lcom/android/launcher3/DeleteDropTarget;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p1, Lcom/android/launcher3/AppsCustomizePagedView;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/android/launcher3/eo;

    if-eqz v3, :cond_0

    check-cast p2, Lcom/android/launcher3/eo;

    iget v3, p2, Lcom/android/launcher3/eo;->g:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->m:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0, v5, v5, v5}, Lcom/android/launcher3/DeleteDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    iput-boolean v1, p0, Lcom/android/launcher3/DeleteDropTarget;->d:Z

    invoke-direct {p0}, Lcom/android/launcher3/DeleteDropTarget;->d()V

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v4, :cond_9

    const v0, 0x7f0a0035

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setText(I)V

    :cond_3
    return-void

    :cond_4
    move v4, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :pswitch_1
    move v3, v1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->n:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0, v5, v5, v5}, Lcom/android/launcher3/DeleteDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    goto :goto_4

    :cond_9
    const v0, 0x7f0a0034

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/android/launcher3/aH;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/aH;->g:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/launcher3/DeleteDropTarget;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/android/launcher3/aH;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/DeleteDropTarget;->b:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->g()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v3}, Lcom/android/launcher3/aA;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    invoke-virtual {v5}, Lcom/android/launcher3/aA;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/launcher3/DeleteDropTarget;->a(IIII)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/DeleteDropTarget;->c:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v3}, Lcom/android/launcher3/SearchDropTargetBar;->d()V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/DeleteDropTarget;->h(Lcom/android/launcher3/aH;)V

    new-instance v14, Lcom/android/launcher3/ad;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/launcher3/ad;-><init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/aH;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    sget v11, Lcom/android/launcher3/DeleteDropTarget;->f:I

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/aA;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/E;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DeleteDropTarget;->d:Z

    return-void
.end method

.method public final c(Lcom/android/launcher3/aH;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/E;->c(Lcom/android/launcher3/aH;)V

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher3/DeleteDropTarget;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget v0, p0, Lcom/android/launcher3/DeleteDropTarget;->e:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setTextColor(I)V

    return-void
.end method

.method public final e(Lcom/android/launcher3/aH;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/E;->e(Lcom/android/launcher3/aH;)V

    iget-boolean v0, p1, Lcom/android/launcher3/aH;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/DeleteDropTarget;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/aH;->f:Lcom/android/launcher3/aA;

    iget v1, p0, Lcom/android/launcher3/DeleteDropTarget;->e:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/aA;->b(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/launcher3/E;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f070001

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeleteDropTarget;->e:I

    const v0, 0x7f020068

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->m:Landroid/graphics/drawable/TransitionDrawable;

    const v0, 0x7f020054

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->n:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->n:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->m:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->o:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/cB;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
