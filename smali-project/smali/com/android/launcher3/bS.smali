.class final Lcom/android/launcher3/bS;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Landroid/animation/AnimatorSet;

.field private final synthetic c:Lcom/android/launcher3/AppsCustomizeTabHost;

.field private final synthetic d:F

.field private final synthetic e:Landroid/view/View;

.field private final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher3/AppsCustomizeTabHost;FLandroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bS;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bS;->b:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/bS;->c:Lcom/android/launcher3/AppsCustomizeTabHost;

    iput p4, p0, Lcom/android/launcher3/bS;->d:F

    iput-object p5, p0, Lcom/android/launcher3/bS;->e:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/launcher3/bS;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/bS;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->n(Lcom/android/launcher3/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bS;->b:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/bS;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bS;->c:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget v2, p0, Lcom/android/launcher3/bS;->d:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/Launcher;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/launcher3/bS;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bS;->e:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/bS;->f:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/bS;->a:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/bS;->c:Lcom/android/launcher3/AppsCustomizeTabHost;

    iget-boolean v2, p0, Lcom/android/launcher3/bS;->f:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->b(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/bS;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->n(Lcom/android/launcher3/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bS;->c:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-static {v0, v1}, Lcom/android/launcher3/cw;->a(Landroid/animation/Animator;Landroid/view/View;)V

    goto :goto_0
.end method
