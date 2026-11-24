.class final Lcom/android/b/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private synthetic a:Lcom/android/b/a/f;


# direct methods
.method constructor <init>(Lcom/android/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/b/a/h;->a:Lcom/android/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/b/a/h;->a:Lcom/android/b/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/b/a/f;->a(Lcom/android/b/a/f;Z)V

    iget-object v0, p0, Lcom/android/b/a/h;->a:Lcom/android/b/a/f;

    invoke-static {v0}, Lcom/android/b/a/f;->a(Lcom/android/b/a/f;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
