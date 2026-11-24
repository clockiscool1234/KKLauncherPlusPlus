.class public Lcom/android/b/a/f;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final c:Z

.field private static final d:Z


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Lcom/android/b/a/i;

.field private e:Landroid/opengl/GLSurfaceView;

.field private f:Z

.field private g:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/b/a/f;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/b/a/f;->d:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/b/a/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/b/a/f;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/f;->a:Ljava/lang/Object;

    new-instance v0, Lcom/android/b/a/g;

    invoke-direct {v0, p0}, Lcom/android/b/a/g;-><init>(Lcom/android/b/a/f;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sget-boolean v0, Lcom/android/b/a/f;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/b/a/i;

    invoke-direct {v0}, Lcom/android/b/a/i;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v0, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    new-instance v1, Lcom/android/b/a/a;

    invoke-direct {v1, p0}, Lcom/android/b/a/a;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/android/b/a/j;

    invoke-direct {v1, p0, v2}, Lcom/android/b/a/j;-><init>(Lcom/android/b/a/f;B)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/b/a/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/b/a/f;)Landroid/opengl/GLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/a/f;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/b/a/f;->f:Z

    return-void
.end method

.method private a(Lcom/android/b/a/i;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/b/a/i;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/b/a/f;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/b/a/f;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v1}, Lcom/android/b/a/e;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/b/a/f;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    invoke-interface {v2}, Lcom/android/b/a/e;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/b/a/i;->a:F

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/b/a/e;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/b/a/f;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/b/a/f;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iput-object p1, v1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    iget-object v1, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iput-object p2, v1, Lcom/android/b/a/i;->f:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/b/a/e;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, v3, Lcom/android/b/a/i;->b:I

    iget-object v3, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/b/a/e;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_2
    iput v1, v3, Lcom/android/b/a/i;->c:I

    iget-object v1, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/b/a/e;->d()I

    move-result v0

    :cond_1
    iput v0, v1, Lcom/android/b/a/i;->d:I

    iget-object v0, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/b/a/i;->a:F

    iget-object v0, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    invoke-direct {p0, v0}, Lcom/android/b/a/f;->a(Lcom/android/b/a/i;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/b/a/f;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    sget-boolean v0, Lcom/android/b/a/f;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    sget-boolean v0, Lcom/android/b/a/f;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/b/a/f;->d:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/b/a/f;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/a/f;->f:Z

    iget-object v0, p0, Lcom/android/b/a/f;->g:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/b/a/h;

    invoke-direct {v0, p0}, Lcom/android/b/a/h;-><init>(Lcom/android/b/a/f;)V

    iput-object v0, p0, Lcom/android/b/a/f;->g:Landroid/view/Choreographer$FrameCallback;

    :cond_2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/a/f;->g:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/b/a/f;->e:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sget-boolean v0, Lcom/android/b/a/f;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/b/a/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    invoke-direct {p0, v0}, Lcom/android/b/a/f;->a(Lcom/android/b/a/i;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTranslationX(F)V
    .locals 1

    sget-boolean v0, Lcom/android/b/a/f;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0
.end method
