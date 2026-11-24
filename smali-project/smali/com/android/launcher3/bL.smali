.class final Lcom/android/launcher3/bL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/bL;->b:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/bL;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/android/launcher3/bL;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/bL;->b:Lcom/android/launcher3/Launcher;

    return-object v0
.end method


# virtual methods
.method public final onDraw()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/bL;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/bL;->a:Z

    iget-object v0, p0, Lcom/android/launcher3/bL;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bL;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->l(Lcom/android/launcher3/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/launcher3/bL;->b:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/bM;

    invoke-direct {v1, p0, p0}, Lcom/android/launcher3/bM;-><init>(Lcom/android/launcher3/bL;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
