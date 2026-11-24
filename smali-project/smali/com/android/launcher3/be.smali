.class public final Lcom/android/launcher3/be;
.super Ljava/lang/Object;


# static fields
.field public static f:Landroid/graphics/drawable/Drawable;

.field public static g:Landroid/graphics/drawable/Drawable;

.field public static h:I

.field public static i:I


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:Lcom/android/launcher3/FolderIcon;

.field private j:Lcom/android/launcher3/CellLayout;

.field private k:Landroid/animation/ValueAnimator;

.field private l:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput-object v1, Lcom/android/launcher3/be;->f:Landroid/graphics/drawable/Drawable;

    sput-object v1, Lcom/android/launcher3/be;->g:Landroid/graphics/drawable/Drawable;

    sput v0, Lcom/android/launcher3/be;->h:I

    sput v0, Lcom/android/launcher3/be;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/be;->e:Lcom/android/launcher3/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/be;->e:Lcom/android/launcher3/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/FolderIcon;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FolderRingAnimator loading drawables on non-UI thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/cB;->a()Lcom/android/launcher3/cB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/cB;->i()Lcom/android/launcher3/aI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aI;->a()Lcom/android/launcher3/al;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/al;->w:I

    sput v1, Lcom/android/launcher3/be;->h:I

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher3/be;->i:I

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/be;->f:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/be;->g:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->b(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/be;)Lcom/android/launcher3/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/be;->j:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/be;->j:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget v0, Lcom/android/launcher3/be;->h:I

    iget-object v1, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/bf;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/bf;-><init>(Lcom/android/launcher3/be;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/bg;

    invoke-direct {v1, p0}, Lcom/android/launcher3/bg;-><init>(Lcom/android/launcher3/be;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/be;->a:I

    iput p2, p0, Lcom/android/launcher3/be;->b:I

    return-void
.end method

.method public final a(Lcom/android/launcher3/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/be;->j:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/be;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/be;->j:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/cw;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget v0, Lcom/android/launcher3/be;->h:I

    iget-object v1, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/bh;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/bh;-><init>(Lcom/android/launcher3/be;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/bi;

    invoke-direct {v1, p0}, Lcom/android/launcher3/bi;-><init>(Lcom/android/launcher3/be;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/be;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/be;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/be;->d:F

    return v0
.end method
