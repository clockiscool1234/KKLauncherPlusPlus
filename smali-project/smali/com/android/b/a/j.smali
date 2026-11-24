.class final Lcom/android/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:Lcom/android/a/c/d;

.field private synthetic b:Lcom/android/b/a/f;


# direct methods
.method private constructor <init>(Lcom/android/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/a/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/b/a/j;-><init>(Lcom/android/b/a/f;)V

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    iget-object v0, p0, Lcom/android/b/a/j;->a:Lcom/android/a/c/d;

    invoke-static {}, Lcom/android/a/c/d;->c()V

    iget-object v0, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v1, v0, Lcom/android/b/a/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v0, v0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->f:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v2, v2, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v2, v2, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    iget-object v3, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v3, v3, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v3, v3, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    iget-object v4, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v4, v4, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget v4, v4, Lcom/android/b/a/i;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/android/b/a/a;->a(Lcom/android/b/a/e;I)V

    iget-object v2, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v2, v2, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v2, v2, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    iget-object v3, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v3, v3, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget v3, v3, Lcom/android/b/a/i;->b:I

    iget-object v4, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v4, v4, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget v4, v4, Lcom/android/b/a/i;->c:I

    iget-object v5, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v5, v5, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget v5, v5, Lcom/android/b/a/i;->a:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/b/a/a;->a(IIF)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v1, v1, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v1, v1, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    iget-object v2, p0, Lcom/android/b/a/j;->a:Lcom/android/a/c/d;

    invoke-virtual {v1, v2}, Lcom/android/b/a/a;->a(Lcom/android/a/c/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v1, v1, Lcom/android/b/a/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v2, v2, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v2, v2, Lcom/android/b/a/i;->f:Ljava/lang/Runnable;

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v2, v2, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/b/a/i;->f:Ljava/lang/Runnable;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    invoke-virtual {v1, v0}, Lcom/android/b/a/f;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/b/a/j;->a:Lcom/android/a/c/d;

    invoke-virtual {v0, p2, p3}, Lcom/android/a/c/d;->a(II)V

    iget-object v0, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v0, v0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    invoke-virtual {v0, p2, p3}, Lcom/android/b/a/a;->a(II)V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    new-instance v0, Lcom/android/a/c/d;

    invoke-direct {v0}, Lcom/android/a/c/d;-><init>()V

    iput-object v0, p0, Lcom/android/b/a/j;->a:Lcom/android/a/c/d;

    invoke-static {}, Lcom/android/a/c/a;->k()V

    iget-object v0, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v0, v0, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v0, v0, Lcom/android/b/a/i;->g:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v1, v1, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget-object v1, v1, Lcom/android/b/a/i;->e:Lcom/android/b/a/e;

    iget-object v2, p0, Lcom/android/b/a/j;->b:Lcom/android/b/a/f;

    iget-object v2, v2, Lcom/android/b/a/f;->b:Lcom/android/b/a/i;

    iget v2, v2, Lcom/android/b/a/i;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->a(Lcom/android/b/a/e;I)V

    return-void
.end method
