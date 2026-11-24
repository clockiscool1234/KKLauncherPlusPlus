.class final Lcom/android/launcher3/bR;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Lcom/android/launcher3/AppsCustomizeTabHost;

.field private final synthetic c:Landroid/view/View;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/AppsCustomizeTabHost;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bR;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bR;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    iput-object p3, p0, Lcom/android/launcher3/bR;->c:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher3/bR;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/bR;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bR;->c:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/bR;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/bR;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bR;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget-boolean v2, p0, Lcom/android/launcher3/bR;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/bR;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bR;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/SearchDropTargetBar;->b(Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/bR;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/bR;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/bR;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AppsCustomizeTabHost;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/bR;->b:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->bringToFront()V

    return-void
.end method
