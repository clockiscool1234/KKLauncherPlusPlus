.class final Lcom/android/launcher3/au;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/DragLayer;

.field private final synthetic b:Ljava/lang/Runnable;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/au;->a:Lcom/android/launcher3/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/au;->b:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher3/au;->c:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/au;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/au;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/au;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/au;->a:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/au;->a:Lcom/android/launcher3/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/DragLayer;->d(Lcom/android/launcher3/DragLayer;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
