.class final Lcom/android/launcher3/aT;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/android/launcher3/Folder;->e(Lcom/android/launcher3/Folder;)V

    iget-object v0, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    invoke-static {v0, v2}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/aT;->a:Lcom/android/launcher3/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/Folder;->a(Lcom/android/launcher3/Folder;I)V

    return-void
.end method
