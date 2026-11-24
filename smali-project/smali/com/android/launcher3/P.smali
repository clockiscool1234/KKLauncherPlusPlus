.class final Lcom/android/launcher3/P;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/N;


# direct methods
.method constructor <init>(Lcom/android/launcher3/N;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/P;->a:Lcom/android/launcher3/N;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/P;->a:Lcom/android/launcher3/N;

    iput v1, v0, Lcom/android/launcher3/N;->d:F

    iget-object v0, p0, Lcom/android/launcher3/P;->a:Lcom/android/launcher3/N;

    iput v1, v0, Lcom/android/launcher3/N;->e:F

    iget-object v0, p0, Lcom/android/launcher3/P;->a:Lcom/android/launcher3/N;

    iget-object v1, p0, Lcom/android/launcher3/P;->a:Lcom/android/launcher3/N;

    iget-object v1, v1, Lcom/android/launcher3/N;->j:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->e()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/N;->g:F

    iget-object v0, p0, Lcom/android/launcher3/P;->a:Lcom/android/launcher3/N;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/N;->i:Z

    return-void
.end method
