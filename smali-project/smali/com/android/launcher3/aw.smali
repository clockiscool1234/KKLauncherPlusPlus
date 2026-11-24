.class final Lcom/android/launcher3/aw;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aw;->a:Lcom/android/launcher3/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/aw;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/aw;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->e(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/aw;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v1}, Lcom/android/launcher3/DragLayer;->c(Lcom/android/launcher3/DragLayer;)Lcom/android/launcher3/aA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ap;->a(Lcom/android/launcher3/aA;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/aw;->a:Lcom/android/launcher3/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/DragLayer;->a(Lcom/android/launcher3/DragLayer;Lcom/android/launcher3/aA;)V

    iget-object v0, p0, Lcom/android/launcher3/aw;->a:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->invalidate()V

    return-void
.end method
