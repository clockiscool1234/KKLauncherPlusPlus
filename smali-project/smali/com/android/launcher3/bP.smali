.class final Lcom/android/launcher3/bP;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Launcher;

.field private final synthetic b:Lcom/android/launcher3/CellLayout;

.field private final synthetic c:Lcom/android/launcher3/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/FolderIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/bP;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/bP;->b:Lcom/android/launcher3/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/bP;->c:Lcom/android/launcher3/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/bP;->b:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/bP;->b:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->j()V

    iget-object v0, p0, Lcom/android/launcher3/bP;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->c(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/bP;->a:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->m(Lcom/android/launcher3/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragLayer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/bP;->c:Lcom/android/launcher3/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->setVisibility(I)V

    :cond_0
    return-void
.end method
