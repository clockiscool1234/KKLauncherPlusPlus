.class final Lcom/android/launcher3/bi;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/be;


# direct methods
.method constructor <init>(Lcom/android/launcher3/be;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bi;->a:Lcom/android/launcher3/be;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bi;->a:Lcom/android/launcher3/be;

    invoke-static {v0}, Lcom/android/launcher3/be;->a(Lcom/android/launcher3/be;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bi;->a:Lcom/android/launcher3/be;

    invoke-static {v0}, Lcom/android/launcher3/be;->a(Lcom/android/launcher3/be;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bi;->a:Lcom/android/launcher3/be;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->b(Lcom/android/launcher3/be;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/bi;->a:Lcom/android/launcher3/be;

    iget-object v0, v0, Lcom/android/launcher3/be;->e:Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/bi;->a:Lcom/android/launcher3/be;

    iget-object v0, v0, Lcom/android/launcher3/be;->e:Lcom/android/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->d(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
