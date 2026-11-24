.class final Lcom/android/launcher3/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private a:Z

.field private final synthetic b:Landroid/animation/Animator;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/cy;->b:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/launcher3/cy;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/cy;->a:Z

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/cy;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/cy;->a:Z

    iget-object v0, p0, Lcom/android/launcher3/cy;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/cy;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/android/launcher3/cy;->c:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/cz;

    iget-object v2, p0, Lcom/android/launcher3/cy;->c:Landroid/view/View;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/launcher3/cz;-><init>(Lcom/android/launcher3/cy;Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
