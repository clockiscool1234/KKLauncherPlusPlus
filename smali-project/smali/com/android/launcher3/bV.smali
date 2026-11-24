.class final Lcom/android/launcher3/bV;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Z

.field private final synthetic d:Landroid/view/View;

.field private final synthetic e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bV;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bV;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/bV;->c:Z

    iput-object p4, p0, Lcom/android/launcher3/bV;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/bV;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/bV;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/bV;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bV;->b:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/bV;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/bV;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bV;->d:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/bV;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/bV;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bV;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/bV;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->o(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->E()V

    return-void
.end method
